package io.github.madokatext.baiduinputmod;

import android.os.ParcelFileDescriptor;
import android.system.Os;

import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.GZIPInputStream;

final class Payload {
    private Payload() {}

    static byte[] read(InputStream input) throws IOException {
        ByteArrayOutputStream result = new ByteArrayOutputStream();
        byte[] buffer = new byte[32768];
        int count;
        while ((count = input.read(buffer)) != -1) result.write(buffer, 0, count);
        return result.toByteArray();
    }

    static byte[] entry(ZipFile zip, String name) throws IOException {
        ZipEntry entry = zip.getEntry(name);
        if (entry == null) throw new IOException("Missing APK entry: " + name);
        try (InputStream input = zip.getInputStream(entry)) {
            return read(input);
        }
    }

    static JSONObject json(ZipFile zip, String name) throws Exception {
        ZipEntry entry = zip.getEntry(name);
        String mergedName = name.endsWith(".gz") ? name.substring(0, name.length() - 3) : name;
        // AGP's AssetItem/MergedAssetWriter turn foo.json.gz into plain foo.json.
        // Also accept an unchanged gzip asset from other packaging tools.
        if (entry == null && !mergedName.equals(name)) entry = zip.getEntry(mergedName);
        if (entry == null) {
            throw new IOException("Missing APK JSON asset: " + name
                    + (mergedName.equals(name) ? "" : " (also tried " + mergedName + ")")
                    + " in " + zip.getName());
        }
        try (BufferedInputStream input = new BufferedInputStream(zip.getInputStream(entry))) {
            input.mark(2);
            int first = input.read();
            int second = input.read();
            input.reset();
            // ZipFile already decompresses the ZIP entry. Only unwrap gzip if its header remains.
            if (first == 0x1f && second == 0x8b) {
                try (GZIPInputStream gzip = new GZIPInputStream(input)) {
                    return new JSONObject(new String(read(gzip), StandardCharsets.UTF_8));
                }
            }
            return new JSONObject(new String(read(input), StandardCharsets.UTF_8));
        }
    }

    static String sha256(byte[] bytes) throws Exception {
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(bytes);
        StringBuilder hex = new StringBuilder(64);
        for (byte value : digest) {
            hex.append(Character.forDigit((value & 255) >>> 4, 16));
            hex.append(Character.forDigit(value & 15, 16));
        }
        return hex.toString();
    }

    static ParcelFileDescriptor memoryFile(String name, byte[] bytes) throws Exception {
        FileDescriptor fd = Os.memfd_create(name, 0);
        try (FileOutputStream output = new FileOutputStream(fd)) {
            output.write(bytes);
            output.flush();
            return ParcelFileDescriptor.dup(fd);
        }
    }
}
