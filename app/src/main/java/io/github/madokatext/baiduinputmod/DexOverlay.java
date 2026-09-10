package io.github.madokatext.baiduinputmod;

import dalvik.system.BaseDexClassLoader;
import dalvik.system.InMemoryDexClassLoader;

import org.json.JSONArray;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/** Keeps the application's defining loader, which preserves package/private access. */
final class DexOverlay {
    private final ClassLoader target;
    private final Object pathList;
    private final Field elementsField;
    private final Object previousElements;
    private final Object replacementElements;
    // Retain the owner and buffer for the lifetime of the in-memory DexFile.
    private final InMemoryDexClassLoader payloadLoader;
    private final ByteBuffer payloadBuffer;

    DexOverlay(ClassLoader target, byte[] dex, JSONArray classes) throws Exception {
        if (!(target instanceof BaseDexClassLoader)) {
            throw new IllegalStateException("Unsupported application class loader: " + target);
        }
        this.target = target;
        Method findLoaded = ClassLoader.class.getDeclaredMethod("findLoadedClass", String.class);
        findLoaded.setAccessible(true);
        // Never silently leave a mixture of already-loaded origin classes and mod classes.
        for (int i = 0; i < classes.length(); i++) {
            String name = classes.getJSONObject(i).getString("name");
            for (ClassLoader current = target; current != null; current = current.getParent()) {
                if (findLoaded.invoke(current, name) != null) {
                    throw new IllegalStateException("Patch class already loaded: " + name
                            + "; stop all input-method processes and restart");
                }
            }
        }
        Field pathListField = BaseDexClassLoader.class.getDeclaredField("pathList");
        pathListField.setAccessible(true);
        pathList = pathListField.get(target);
        elementsField = pathList.getClass().getDeclaredField("dexElements");
        elementsField.setAccessible(true);
        previousElements = elementsField.get(pathList);
        payloadBuffer = ByteBuffer.allocateDirect(dex.length);
        payloadBuffer.put(dex).flip();
        payloadLoader = new InMemoryDexClassLoader(payloadBuffer.asReadOnlyBuffer(), target);
        Object donorPathList = pathListField.get(payloadLoader);
        Object donorElements = elementsField.get(donorPathList);
        int added = Array.getLength(donorElements);
        if (added == 0) throw new IllegalStateException("Empty patch DEX");
        int previous = Array.getLength(previousElements);
        replacementElements = Array.newInstance(previousElements.getClass().getComponentType(), added + previous);
        System.arraycopy(donorElements, 0, replacementElements, 0, added);
        System.arraycopy(previousElements, 0, replacementElements, added, previous);
    }

    void install() throws Exception {
        synchronized (target) {
            if (elementsField.get(pathList) != previousElements) {
                throw new IllegalStateException("Application dexElements changed during patch preparation");
            }
            elementsField.set(pathList, replacementElements);
        }
    }
}
