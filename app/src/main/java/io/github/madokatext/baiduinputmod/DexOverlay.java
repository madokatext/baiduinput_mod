package io.github.madokatext.baiduinputmod;

import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexFile;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;

/** Keeps the application's defining loader, which preserves package/private access. */
final class DexOverlay implements AutoCloseable {
    private final Object pathList;
    private final Field elementsField;
    private final Object previousElements;
    private final Object replacementElements;
    // The DexFile belongs to the app loader from creation, with no donor loader/verifier thread.
    private final DexFile payloadDex;
    private final ByteBuffer payloadBuffer;
    private boolean installed;

    DexOverlay(ClassLoader target, byte[] dex) throws Exception {
        if (!(target instanceof BaseDexClassLoader)) {
            throw new IllegalStateException("Unsupported application class loader: " + target);
        }
        // Do not probe target classes here. On ART, findLoadedClass can call
        // FindClassInBaseDexClassLoader and DEFINE an origin class as a side effect.
        Field pathListField = BaseDexClassLoader.class.getDeclaredField("pathList");
        pathListField.setAccessible(true);
        pathList = pathListField.get(target);
        elementsField = pathList.getClass().getDeclaredField("dexElements");
        elementsField.setAccessible(true);
        previousElements = elementsField.get(pathList);
        payloadBuffer = ByteBuffer.allocateDirect(dex.length);
        payloadBuffer.put(dex).flip();
        // Android 15's DexPathList.initByteBufferDexPath uses this exact constructor.
        // Opening a DexFile does not start background class verification; constructing
        // an InMemoryDexClassLoader would start it before its elements are transplanted.
        Constructor<DexFile> open = DexFile.class.getDeclaredConstructor(
                ByteBuffer[].class, ClassLoader.class, elementsField.getType());
        open.setAccessible(true);
        Class<?> elementType = previousElements.getClass().getComponentType();
        Constructor<?> element = elementType.getDeclaredConstructor(DexFile.class);
        element.setAccessible(true);
        payloadDex = open.newInstance(new ByteBuffer[]{payloadBuffer.asReadOnlyBuffer()}, target, null);
        try {
            int previous = Array.getLength(previousElements);
            replacementElements = Array.newInstance(elementType, 1 + previous);
            Array.set(replacementElements, 0, element.newInstance(payloadDex));
            System.arraycopy(previousElements, 0, replacementElements, 1, previous);
        } catch (Exception error) {
            try { payloadDex.close(); } catch (Exception closeError) { error.addSuppressed(closeError); }
            throw error;
        }
    }

    void install() throws Exception {
        // Called once in the initial package callback, before Application creation.
        // ART class loading does not use the Java ClassLoader monitor, so taking it
        // would not prevent a loading race and would add another startup lock.
        if (elementsField.get(pathList) != previousElements) {
            throw new IllegalStateException("Application dexElements changed during patch preparation");
        }
        elementsField.set(pathList, replacementElements);
        installed = true;
    }

    @Override
    public void close() throws Exception {
        if (!installed) payloadDex.close();
    }
}
