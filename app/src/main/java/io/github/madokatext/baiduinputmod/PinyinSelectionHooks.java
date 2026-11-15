package io.github.madokatext.baiduinputmod;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

import io.github.libxposed.api.XposedInterface;

import static io.github.madokatext.baiduinputmod.HookSupport.*;

/** Undo confirmed nine-key syllables before deleting their underlying input. */
final class PinyinSelectionHooks {
    private static final int INPUT_BAR = 512, INLINE_BAR = 1024;
    private static final int BACKSPACE = 0xe000, DELETE_PREPARE = 8;
    private static final int SELECTED_GREEN = 0xff00c853;
    private static final String CORE = "com.baidu.iptcore.IptCoreInterface";
    private static final String SHOW = "com.baidu.iptcore.info.IptCoreShowInfo";
    private static final String BAR_STATE = "com.baidu.input.ime.newcore.state.InputBarState2";
    private final HookSupport h;
    private Field keyState, layout, language, inputState, showInfo;
    private Method mode, readShow, listLength, hzLength, cursorOffsets, cursorCount,
            cursorIndex, autofix, moveCursor, popInput, popBegin, popEnd, flashFlag, setFlashFlag;
    private Constructor<?> newShow, newDuty;
    private long selectionRefresh;
    private Field barState, barPaint, barColor, inlineState, inlinePaint, inlineColor;
    private int traces, colorEntries, colorChanges;

    PinyinSelectionHooks(HookSupport h) { this.h = h; }

    void install() {
        h.group("nine-key pinyin selection undo", () -> {
            bindState();
            Class<?> core = h.type(CORE), show = h.type(SHOW);
            Class<?> duty = h.type("com.baidu.iptcore.info.IptCoreDutyInfo");
            newShow = show.getDeclaredConstructor();
            newShow.setAccessible(true);
            newDuty = duty.getDeclaredConstructor();
            newDuty.setAccessible(true);
            readShow = method(core, "getInputShow", int.class, show, byte[].class, byte[].class);
            cursorOffsets = method(show, "cursorInfo", byte[].class);
            cursorCount = method(show, "cursorInfoLen", int.class);
            cursorIndex = method(show, "cursorIdx", int.class);
            autofix = method(show, "autofixInfo", byte[].class);
            moveCursor = method(core, "actInputCursor", int.class, int.class, duty);
            popInput = method(core, "actInputPop", int.class, duty);
            popBegin = method(show, "popBegan", int.class);
            popEnd = method(show, "popEnd", int.class);
            flashFlag = method(duty, "flashFlag", long.class);
            setFlashFlag = method(duty, "setFlashFlag", void.class, long.class);
            selectionRefresh = field(duty, "REFL_SHOW", long.class).getLong(null)
                    | field(duty, "REFL_CAND", long.class).getLong(null)
                    | field(duty, "REFL_LIST", long.class).getLong(null);
            // These native calls already run on Baidu's core thread. Read the
            // live core state here so queued taps cannot reuse stale UI state.
            h.add(method(core, "actKeyClick", int.class, int.class, int.class, String.class, duty),
                    cb -> beforeDelete(cb, 1), null);
            h.add(method(core, "actKeyClickXY", int.class, int.class, int.class, int.class,
                    int.class, String.class, duty), cb -> beforeDelete(cb, 3), null);
            h.add(method(core, "actKeyClickTouchInfo", int.class, int.class, int.class, int.class,
                    byte.class, byte.class, int.class, String.class, duty), cb -> beforeDelete(cb, 5), null);
        });
        h.group("nine-key selected pinyin color", () -> {
            bindState();
            Class<?> bar = h.type("com.baidu.input.ime.InputBarView");
            Class<?> inline = h.type("com.baidu.input.ime.QuadraticInputBarView");
            barState = field(bar, "t0", h.type(BAR_STATE));
            barPaint = field(bar, "h", h.type("com.baidu.input.ime.floatmode.FloatPaint"));
            barColor = field(bar, "i", int.class);
            inlineState = field(inline, "z0", h.type(BAR_STATE));
            inlinePaint = field(inline, "e", h.type("com.baidu.input.acgfont.ImeBasePaint"));
            inlineColor = field(inline, "C", int.class);
            Method softwareText = method(Canvas.class, "drawText", void.class,
                    String.class, float.class, float.class, Paint.class);
            // Hardware view rendering uses RecordingCanvas's inherited override
            // in BaseRecordingCanvas, which does not call the software method.
            // Resolve the actual declaring method instead of assuming Canvas.
            Method hardwareText = method(h.type("android.graphics.RecordingCanvas"), "drawText",
                    void.class, String.class, float.class, float.class, Paint.class);
            deoptimizeTextDrawers(bar, inline);
            // Invocation owners are restored by HookSupport even after an
            // exception. Do not change the skin fields or shared paint objects.
            h.add(method(bar, "l", void.class, Canvas.class, String.class), INPUT_BAR,
                    cb -> traceColorEntry(cb, false), null);
            h.add(method(inline, "draw", void.class, Canvas.class), INLINE_BAR,
                    cb -> traceColorEntry(cb, true), null);
            h.add(softwareText, this::beforeDrawText, null);
            if (!hardwareText.equals(softwareText)) h.add(hardwareText, this::beforeDrawText, null);
            h.module.log("PinyinColor 1.3.7: text hooks resolved; software="
                    + softwareText.getDeclaringClass().getName() + "; hardware="
                    + hardwareText.getDeclaringClass().getName());
        });
    }

    private void deoptimizeTextDrawers(Class<?> bar, Class<?> inline) throws Exception {
        Class<?> inputData = Array.newInstance(h.type("com.baidu.input.ime.inputbar.KpInputData"), 0).getClass();
        // Deoptimizing only the outer draw method leaves already compiled
        // helpers able to use an inlined, unhooked drawText implementation.
        h.module.deoptimize(method(bar, "draw", void.class, Canvas.class));
        for (String name : new String[]{"b", "c"}) h.module.deoptimize(method(bar, name,
                int.class, int.class, int.class, Canvas.class, String.class));
        h.module.deoptimize(method(bar, "d", void.class, Canvas.class, Rect.class, int.class));
        h.module.deoptimize(method(bar, "e", void.class, String.class, int.class, int.class,
                int.class, int.class, Canvas.class, inputData, int.class));
        for (String name : new String[]{"g", "h"}) h.module.deoptimize(method(inline, name,
                int.class, int.class, int.class, Canvas.class, String.class));
        h.module.deoptimize(method(inline, "i", void.class, String.class, int.class, int.class,
                int.class, int.class, Canvas.class, inputData));
    }

    private void traceColorEntry(XposedInterface.BeforeHookCallback cb, boolean inline) {
        if (colorEntries++ >= 8) return;
        try {
            Object bar = cb.getThisObject();
            Object state = (inline ? inlineState : barState).get(bar);
            Object input = state == null ? null : inputState.get(state);
            Object show = input == null ? null : showInfo.get(input);
            h.module.log("PinyinColor 1.3.7: draw entry; inline=" + inline + "; canvas="
                    + cb.getArgs()[0].getClass().getName() + "; nineKey=" + nineKey()
                    + "; selectedLength=" + (show == null ? 0 : listLength.invoke(show)));
        } catch (Exception error) {
            // Diagnostic failure must not disable the actual drawing hook.
            h.module.log("PinyinColor 1.3.7: draw-entry diagnostic unavailable", error);
        }
    }

    private void bindState() throws Exception {
        Class<?> stat = h.type("com.baidu.input.ime.InputStatMac");
        keyState = field(h.type("com.baidu.input.ime.keymap.KeyMap"), "c0", stat);
        layout = field(stat, "d", byte.class);
        language = field(stat, "g", byte.class);
        mode = method(stat, "f", byte.class);
        inputState = field(h.type(BAR_STATE), "a", h.type("com.baidu.input.support.state.InputState"));
        showInfo = field(h.type("com.baidu.input.support.state.InputState"), "d", h.type(SHOW));
        listLength = h.method(SHOW, "listLen", int.class);
        hzLength = h.method(SHOW, "hzLen", int.class);
    }

    private boolean nineKey() throws Exception {
        Object stat = keyState.get(null);
        return stat != null && ((Byte) mode.invoke(stat) & 0xff) == 0x21
                && layout.getByte(stat) == 1 && language.getByte(stat) == 0;
    }

    private Object read(Object core) throws Exception {
        Object show = newShow.newInstance();
        int result = (Integer) readShow.invoke(core, show, cursorOffsets.invoke(show), autofix.invoke(show));
        return result < 0 ? null : show;
    }

    private void beforeDelete(XposedInterface.BeforeHookCallback cb, int typeIndex) throws Exception {
        Object[] args = cb.getArgs();
        if ((Integer) args[0] != BACKSPACE || !nineKey()) return;
        Object core = cb.getThisObject(), show = read(core);
        if (show == null) return;
        int selected = (Integer) listLength.invoke(show);
        if (selected <= 0) return;
        int type = (Integer) args[typeIndex];
        // A normal soft-key delete sends a preparatory type-8 call followed by
        // the actual delete. A negative native result makes ImePad discard this
        // no-op duty, instead of redispatching the previous action's stale data.
        // Only the actual delete may undo a syllable and publish a new duty.
        if (type == DELETE_PREPARE) { cb.returnAndSkip(-1); return; }
        cb.returnAndSkip(-1);
        byte[] offsets = (byte[]) cursorOffsets.invoke(show);
        int count = (Integer) cursorCount.invoke(show);
        if (offsets == null || count <= 0 || count > offsets.length) return;
        // InputBarState2.c/n use these same offsets, excluding the confirmed
        // Chinese prefix. Select a cursor position inside the last syllable.
        int target = selected - 1, cursor = -1;
        for (int i = 0; i < count; i++) {
            if (offsets[i] < 0 || offsets[i] > target) break;
            cursor = i;
        }
        if (cursor < 0) return;
        Object duty = args[args.length - 1];
        Object cursorDuty = newDuty.newInstance();
        int previousCursor = (Integer) cursorIndex.invoke(show);
        // Once a cursor has moved, never fall through to character deletion if
        // an incompatible call throws. The user's input must stay intact.
        int result = (Integer) moveCursor.invoke(core, cursor, cursorDuty);
        if (result < 0) { cb.returnAndSkip(result); return; }
        Object located = read(core);
        int chinese = (Integer) hzLength.invoke(show);
        if (located == null || (Integer) popBegin.invoke(located) < chinese
                || (Integer) popBegin.invoke(located) > chinese + target
                || (Integer) popEnd.invoke(located) <= chinese + target
                || (Integer) popEnd.invoke(located) > chinese + selected) {
            cb.returnAndSkip(moveCursor.invoke(core, previousCursor, duty));
            return;
        }
        result = (Integer) popInput.invoke(core, duty);
        if (result < 0) {
            int restored = (Integer) moveCursor.invoke(core, previousCursor, duty);
            cb.returnAndSkip(restored);
            return;
        }
        // Each native action overwrites its duty's flags and metadata. Keep
        // actInputPop's result in the caller's duty and use a separate object
        // for cursor positioning, otherwise restoring the caret can erase the
        // REFL_LIST request and leave the pinyin list showing the old syllable.
        setFlashFlag.invoke(duty, (Long) flashFlag.invoke(duty) | selectionRefresh);
        cb.returnAndSkip(result);
        Object remaining = read(core);
        if (remaining != null) {
            int end = (Integer) cursorCount.invoke(remaining) - 1;
            // Leave the caret at the end of the unchanged input, ready for the
            // first character deletion after every selection has been undone.
            if (end >= 0) moveCursor.invoke(core, end, cursorDuty);
        }
        if (traces++ < 16) h.module.log("PinyinSelection 1.3.8: undid last selected syllable; "
                + "kept input characters; queued input, word-candidate and pinyin-list refresh");
    }

    private void beforeDrawText(XposedInterface.BeforeHookCallback cb) throws Exception {
        if (!in(INPUT_BAR | INLINE_BAR)) return;
        Object bar = owner(INPUT_BAR);
        boolean inline = bar == null;
        if (inline) bar = owner(INLINE_BAR);
        if (bar == null || !nineKey()) return;
        Object state = (inline ? inlineState : barState).get(bar);
        Object input = state == null ? null : inputState.get(state);
        Object show = input == null ? null : showInfo.get(input);
        if (show == null || (Integer) listLength.invoke(show) <= 0) return;
        Object[] args = cb.getArgs();
        Paint paint = (Paint) args[3];
        if (paint != (inline ? inlinePaint : barPaint).get(bar)) return;
        int selectedColor = (inline ? inlineColor : barColor).getInt(bar);
        if ((paint.getColor() & 0xffffff) != (selectedColor & 0xffffff)) return;
        String text = (String) args[0];
        if (text == null || text.isEmpty()) return;
        boolean letters = false, other = false;
        for (int i = 0; i < text.length(); i++) {
            if (pinyin(text.charAt(i))) letters = true; else other = true;
        }
        if (!letters) return;
        Paint green = new Paint(paint);
        green.setColor((paint.getColor() & 0xff000000) | (SELECTED_GREEN & 0xffffff));
        if (colorChanges++ < 8) h.module.log("PinyinColor 1.3.7: selected pinyin recolored; canvas="
                + cb.getThisObject().getClass().getName());
        if (!other) { args[3] = green; return; }
        // A single draw may contain confirmed Chinese followed by pinyin.
        // Keep its Chinese glyphs and alignment while recoloring only pinyin.
        Paint original = new Paint(paint);
        float x = (Float) args[1], y = (Float) args[2];
        if (paint.getTextAlign() == Paint.Align.CENTER) x -= paint.measureText(text) / 2f;
        else if (paint.getTextAlign() == Paint.Align.RIGHT) x -= paint.measureText(text);
        original.setTextAlign(Paint.Align.LEFT);
        green.setTextAlign(Paint.Align.LEFT);
        Canvas canvas = (Canvas) cb.getThisObject();
        cb.returnAndSkip(null);
        for (int start = 0; start < text.length();) {
            boolean colored = pinyin(text.charAt(start));
            int end = start + 1;
            while (end < text.length() && pinyin(text.charAt(end)) == colored) end++;
            canvas.drawText(text, start, end, x + paint.measureText(text, 0, start), y,
                    colored ? green : original);
            start = end;
        }
    }

    private static boolean pinyin(char value) {
        return value >= 'a' && value <= 'z' || value >= 'A' && value <= 'Z'
                || value == '\'' || value == '\u00fc' || value == '\u00dc';
    }
}
