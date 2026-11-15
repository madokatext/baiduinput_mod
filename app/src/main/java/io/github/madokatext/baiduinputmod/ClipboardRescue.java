package io.github.madokatext.baiduinputmod;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.io.File;
import java.util.HashSet;
import java.util.Set;

/** Shared protocol and a metadata-only, single-content database rescue. */
final class ClipboardRescue {
    static final String TARGET = "com.baidu.input";
    static final String ACTION = "io.github.madokatext.baiduinputmod.CLIPBOARD_RESCUE";
    static final String PERMISSION = "io.github.madokatext.baiduinputmod.permission.CLIPBOARD_RESCUE";
    static final String REQUEST = "request";
    static final String DELETED = "deleted", EMPTY = "empty", NO_DATABASE = "no_database",
            UNSUPPORTED = "unsupported", ERROR = "error", UNKNOWN = "unknown",
            UNAVAILABLE = "unavailable", BUSY = "busy";
    static final int RESULT = 1;

    static String deleteLatest(Context context) {
        File path = context.getDatabasePath("clipborad_records.db");
        if (!path.isFile()) return NO_DATABASE;
        // Do not create, migrate, or automatically delete a damaged database.
        // Opening this file directly also avoids Baidu's entity/DTO converters.
        try (SQLiteDatabase db = SQLiteDatabase.openDatabase(path.getAbsolutePath(), null,
                SQLiteDatabase.OPEN_READWRITE | SQLiteDatabase.NO_LOCALIZED_COLLATORS,
                corrupted -> { })) {
            if (db.getVersion() != 5 || !compatible(db, "clipboard", true)
                    || !compatible(db, "clipboard_recent", false)) return UNSUPPORTED;
            db.beginTransaction();
            try {
                int source;
                long id;
                // Neither the full content nor its encoded form enters a
                // CursorWindow, Java string, broadcast, or settings TextView.
                try (Cursor cursor = db.rawQuery("SELECT source, _id FROM ("
                        + "SELECT 0 AS source, _id, updated_time FROM clipboard UNION ALL "
                        + "SELECT 1 AS source, _id, updated_time FROM clipboard_recent) "
                        + "ORDER BY updated_time DESC, source ASC, _id DESC LIMIT 1", null)) {
                    if (!cursor.moveToFirst()) return EMPTY;
                    source = cursor.getInt(0);
                    id = cursor.getLong(1);
                }
                String selected = source == 0 ? "clipboard" : "clipboard_recent";
                String other = source == 0 ? "clipboard_recent" : "clipboard";
                String[] key = {Long.toString(id)};
                // The two lists can hold copies of the same logical content.
                // Match their existing digest inside SQLite, before deleting
                // the selected row; unrelated content and notes stay intact.
                db.execSQL("DELETE FROM " + other + " WHERE md5 IN (SELECT md5 FROM "
                        + selected + " WHERE _id = ? AND length(md5) = 32)", key);
                if (db.delete(selected, "_id = ?", key) != 1) {
                    throw new IllegalStateException("Clipboard rescue target changed");
                }
                db.setTransactionSuccessful();
            } finally { db.endTransaction(); }
        }
        return DELETED;
    }

    private static boolean compatible(SQLiteDatabase db, String table, boolean history) {
        Set<String> columns = new HashSet<>();
        boolean primaryKey = false;
        try (Cursor cursor = db.rawQuery("PRAGMA table_info(" + table + ")", null)) {
            int name = cursor.getColumnIndexOrThrow("name");
            int key = cursor.getColumnIndexOrThrow("pk");
            int type = cursor.getColumnIndexOrThrow("type");
            while (cursor.moveToNext()) {
                String column = cursor.getString(name);
                columns.add(column);
                if ("_id".equals(column)) primaryKey = cursor.getInt(key) == 1
                        && "INTEGER".equalsIgnoreCase(cursor.getString(type));
            }
        }
        return primaryKey && columns.contains("md5") && columns.contains("content")
                && columns.contains("created_time") && columns.contains("updated_time")
                && (!history || columns.contains("deleted"));
    }

    private ClipboardRescue() { }
}
