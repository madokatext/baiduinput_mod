package io.github.madokatext.baiduinputmod;

import android.os.ParcelFileDescriptor;
import android.system.Os;

import org.json.JSONObject;

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
        if (!name.endsWith(".gz")) {
            return new JSONObject(new String(entry(zip, name), StandardCharsets.UTF_8));
        }
        ZipEntry entry = zip.getEntry(name);
        if (entry == null) throw new IOException("Missing APK entry: " + name);
        try (InputStream input = zip.getInputStream(entry);
             GZIPInputStream gzip = new GZIPInputStream(input)) {
            return new JSONObject(new String(read(gzip), StandardCharsets.UTF_8));
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
