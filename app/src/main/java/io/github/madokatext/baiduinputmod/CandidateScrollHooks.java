package io.github.madokatext.baiduinputmod;

import android.graphics.Rect;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.Scroller;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.WeakHashMap;
import io.github.libxposed.api.XposedInterface;
import static io.github.madokatext.baiduinputmod.HookSupport.*;

/** Two view hooks. Baidu still handles the original DOWN and ordinary taps. */
final class CandidateScrollHooks {
    private static final String CAND = "com.baidu.input.ime.cand.CandHandler";
    private static final String VIEW = "com.baidu.input.ime.cand.CandidateView";
    private static final String ABS = "com.baidu.input.panel.render.cand.AbsCandHandler";
    private static final String SLIDE = "com.baidu.input.panel.render.cand.slide.SlidingView";
    private static final String WINDOW = "com.baidu.input.panel.render.cand.slide.SlidingVisibleWindow";
    private static final String MANAGER = "com.baidu.input.panel.render.cand.slide.SlidingVisibleWindowManager";
    private static final String CELL = "com.baidu.input.panel.render.cand.slide.ISlidingCell";
    private final HookSupport h;
    // UI-thread state; values do not retain the view or handler.
    private final Map<View, Gesture> gestures = new WeakHashMap<>();
    private Field handlerField, area, modern, legacy, manager, legacyBounds, selected, request,
            legacyScroller, legacyTracker, legacyDrag, legacyCapture, previousX,
            slideField, slideBounds, slideWindow, slideScroller, slideTracker, slideDrag,
            slidePhase, slideAnimating, slidePressed, slideClick, slidePreviousX,
            windowWidth, windowOffset, windowFactory, windowCells, keyState, layout, language;
    private Method mode, clearPress, releaseKeys, endSlide, moveLegacy, layoutWindow, prefetch, count, cellEnd, cellPress;
    private boolean failed;
    private int traces;
    CandidateScrollHooks(HookSupport h) { this.h = h; }
    void install() {
        h.group("nine-key top candidate touch", () -> {
            bind(); // Resolve every dependency before installing either hook.
            h.add(h.method(VIEW, "onTouchEvent", boolean.class, MotionEvent.class), this::beforeTouch, this::afterTouch);
            h.add(h.method(VIEW, "r0", void.class), cb -> {
                Gesture g = gestures.get((View) cb.getThisObject());
                if (g != null && g.dragged) cb.returnAndSkip(null);
            }, null);
        });
    }
    private void bind() throws Exception {
        Class<?> cand = h.type(CAND), view = h.type(VIEW), abs = h.type(ABS), slide = h.type(SLIDE),
                window = h.type(WINDOW), managerType = h.type(MANAGER), cell = h.type(CELL),
                factory = h.type("com.baidu.input.ime.cand.slide.CoreStringSlidingCellFactory"),
                stat = h.type("com.baidu.input.ime.InputStatMac");
        if (!View.class.isAssignableFrom(view)) throw new IllegalStateException("Candidate view is not a View");
        handlerField = field(view, "F", cand); area = field(view, "r0", byte.class);
        modern = field(abs, "b0", boolean.class); legacy = field(abs, "l", boolean.class);
        manager = field(abs, "a0", managerType); legacyBounds = field(abs, "e1", Rect.class);
        selected = field(abs, "o", short.class); request = field(abs, "u", byte.class);
        legacyScroller = field(abs, "g", Scroller.class); legacyTracker = field(abs, "h", VelocityTracker.class);
        legacyDrag = field(abs, "d", boolean.class); legacyCapture = field(abs, "S0", boolean.class);
        previousX = field(abs, "f", int.class); slideField = field(managerType, "c", slide);
        slideBounds = field(slide, "a", Rect.class); slideWindow = field(slide, "c", window);
        slideScroller = field(slide, "i", Scroller.class); slideTracker = field(slide, "j", VelocityTracker.class);
        slideDrag = field(slide, "o", boolean.class); slidePhase = field(slide, "p", byte.class);
        slideAnimating = field(slide, "u", boolean.class); slidePressed = field(slide, "e", cell);
        slideClick = field(slide, "f", cell); slidePreviousX = field(slide, "h", int.class);
        windowWidth = field(window, "a", int.class); windowOffset = field(window, "e", int.class);
        windowFactory = field(window, "b", factory); windowCells = field(window, "h", SparseArray.class);
        keyState = field(h.type("com.baidu.input.ime.keymap.KeyMap"), "c0", stat);
        layout = field(stat, "d", byte.class); language = field(stat, "g", byte.class);
        mode = method(stat, "f", byte.class); clearPress = method(abs, "u", void.class, boolean.class, boolean.class);
        releaseKeys = h.method("com.baidu.input.ime.AbsSoftView", "w", void.class);
        endSlide = method(abs, "Y", boolean.class); moveLegacy = method(abs, "k2", void.class, int.class);
        layoutWindow = method(window, "e", int.class, int.class); prefetch = method(window, "d", void.class);
        count = method(factory, "a", int.class); cellEnd = method(cell, "getEnd", int.class);
        cellPress = method(cell, "g", void.class, boolean.class);
    }
    private boolean nineKey() throws Exception {
        Object stat = keyState.get(null);
        return stat != null && ((Byte) mode.invoke(stat) & 0xff) == 0x21
                && layout.getByte(stat) == 1 && language.getByte(stat) == 0;
    }
    private Object slide(Object handler) throws Exception {
        Object value = manager.get(handler);
        return value == null ? null : slideField.get(value);
    }
    private static boolean contains(Rect rect, MotionEvent event) {
        return rect != null && rect.contains((int) event.getX(), (int) event.getY());
    }
    private void beforeTouch(XposedInterface.BeforeHookCallback cb) {
        View view = (View) cb.getThisObject();
        MotionEvent event = (MotionEvent) cb.getArgs()[0];
        try {
            int action = event.getActionMasked();
            if (action == MotionEvent.ACTION_DOWN) {
                gestures.remove(view);
                if (failed || !h.module.candidateScrollEnabled() || !nineKey() || event.getPointerCount() != 1) return;
                Object handler = handlerField.get(view);
                if (handler == null) return;
                Object slide = slide(handler);
                if (!contains(slide == null ? null : (Rect) slideBounds.get(slide), event)
                        && !contains((Rect) legacyBounds.get(null), event)) return;
                stop(handler);
                gestures.put(view, new Gesture(handler, event, ViewConfiguration.get(view.getContext()).getScaledTouchSlop()));
                return;
            }
            Gesture g = gestures.get(view);
            if (g == null || !g.captured || g.handler.get() == null) return;
            Object handler = g.handler.get();
            boolean cancel = action == MotionEvent.ACTION_CANCEL || event.getPointerCount() != 1
                    || event.getPointerId(0) != g.pointerId;
            if (cancel) g.cancelled = true;
            if (!g.dragged && (cancel || crossedSlop(g, event))) {
                g.dragged = true;
                clear(handler);
                releaseKeys.invoke(view);
                if (view instanceof Runnable) view.removeCallbacks((Runnable) view);
                trace("drag captured");
            }
            if (g.dragged) {
                // Consume first: a reflective failure must not turn this drag into a tap.
                cb.returnAndSkip(true);
                if (!g.cancelled && (action == MotionEvent.ACTION_MOVE || action == MotionEvent.ACTION_UP)) {
                    int x = (int) event.getX();
                    if (g.modern) moveModern(handler, x - g.lastX); else moveLegacy.invoke(handler, x - g.lastX);
                    g.lastX = x; previousX.setInt(handler, x);
                    Object slide = slide(handler);
                    if (slide != null) slidePreviousX.setInt(slide, x);
                }
                stop(handler);
                if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                    clear(handler); releaseKeys.invoke(view); endSlide.invoke(handler);
                    g.captured = false;
                    trace("drag released without selection");
                }
                view.invalidate();
            } else if (action == MotionEvent.ACTION_MOVE) {
                // No horizontal pixel displacement yet. An ordinary UP still
                // follows Baidu's original selection path.
                cb.returnAndSkip(true);
            }
        } catch (Throwable error) {
            Gesture g = gestures.get(view);
            if (g != null && g.captured) {
                g.dragged = true; g.cancelled = true; cb.returnAndSkip(true);
                try { clear(g.handler.get()); releaseKeys.invoke(view); } catch (Throwable ignored) { }
            }
            fail(error);
        }
    }
    private void afterTouch(XposedInterface.AfterHookCallback cb) {
        View view = (View) cb.getThisObject();
        Gesture g = gestures.get(view);
        if (failed || g == null) return;
        MotionEvent event = (MotionEvent) cb.getArgs()[0];
        try {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
                Object handler = g.handler.get();
                if (!Boolean.TRUE.equals(cb.getResult()) || area.getByte(null) != 2 || handler == null) {
                    gestures.remove(view); return;
                }
                Object slide = slide(handler);
                g.modern = modern.getBoolean(handler) && slide != null && contains((Rect) slideBounds.get(slide), event);
                g.captured = g.modern || (legacy.getBoolean(handler) && contains((Rect) legacyBounds.get(null), event));
                if (!g.captured) gestures.remove(view);
            } else if (event.getActionMasked() == MotionEvent.ACTION_UP && !g.dragged) gestures.remove(view);
        } catch (Throwable error) { gestures.remove(view); fail(error); }
    }
    private static boolean crossedSlop(Gesture g, MotionEvent event) {
        // Match the previous direct-scroll feature: the first horizontal pixel
        // already moves the bar and must remove click eligibility, even at an edge.
        if (event.getActionMasked() == MotionEvent.ACTION_MOVE && (int) event.getX() != (int) g.downX) return true;
        if (Math.abs(event.getX() - g.downX) > g.slop || Math.abs(event.getY() - g.downY) > g.slop) return true;
        for (int i = 0; i < event.getHistorySize(); i++) {
            if ((int) event.getHistoricalX(i) != (int) g.downX
                    || Math.abs(event.getHistoricalY(i) - g.downY) > g.slop) return true;
        }
        return false;
    }
    private void stop(Object handler) throws Exception {
        Scroller old = (Scroller) legacyScroller.get(handler);
        if (old != null) old.forceFinished(true);
        Object slide = slide(handler);
        if (slide == null) return;
        Scroller scroll = (Scroller) slideScroller.get(slide);
        if (scroll != null) scroll.forceFinished(true);
        slidePhase.setByte(slide, (byte) 0); slideAnimating.setBoolean(slide, false);
    }
    private void clear(Object handler) throws Exception {
        if (handler == null) return;
        stop(handler); clearPress.invoke(handler, false, false);
        selected.setShort(handler, (short) -1);
        request.setByte(handler, (byte) (request.getByte(handler) & ~1));
        legacyDrag.setBoolean(handler, false); legacy.setBoolean(handler, false); legacyCapture.setBoolean(handler, false);
        recycle(legacyTracker, handler);
        Object slide = slide(handler);
        if (slide == null) return;
        slideClick.set(slide, null);
        Object pressed = slidePressed.get(slide);
        if (pressed != null) cellPress.invoke(pressed, false);
        slideDrag.setBoolean(slide, false); recycle(slideTracker, slide);
    }
    private static void recycle(Field field, Object object) throws Exception {
        VelocityTracker tracker = (VelocityTracker) field.get(object);
        if (tracker != null) { field.set(object, null); tracker.recycle(); }
    }
    private void moveModern(Object handler, int delta) throws Exception {
        Object sliding = slide(handler);
        if (sliding == null) return;
        Object window = slideWindow.get(sliding);
        if (window == null) return;
        int width = windowWidth.getInt(window);
        Object factory = windowFactory.get(window);
        if (width <= 0 || factory == null) return;
        int size = (Integer) count.invoke(factory);
        if (size <= 0) return;
        int previous = windowOffset.getInt(window);
        int desired = (int) Math.max(Integer.MIN_VALUE + 1L, Math.min(0L, (long) previous + delta));
        int result = (Integer) layoutWindow.invoke(window, desired);
        Object last = ((SparseArray<?>) windowCells.get(window)).get(size - 1);
        if (last != null) {
            int minimum = Math.min(0, width - (Integer) cellEnd.invoke(last));
            int bounded = Math.max(desired, minimum);
            if (bounded != desired) result = (Integer) layoutWindow.invoke(window, bounded);
        }
        if (result == Integer.MAX_VALUE) layoutWindow.invoke(window, previous);
        else windowOffset.setInt(window, result);
        prefetch.invoke(window);
    }
    private void trace(String message) { if (traces++ < 12) h.module.log("CandidateScroll 1.2.0: " + message); }
    private void fail(Throwable error) {
        if (!failed) { failed = true; h.module.log("Candidate touch hooks disabled; app interface changed", error); }
    }
    private static final class Gesture {
        final WeakReference<Object> handler;
        final float downX, downY;
        final int slop, pointerId;
        int lastX;
        boolean captured, modern, dragged, cancelled;
        Gesture(Object handler, MotionEvent event, int slop) {
            this.handler = new WeakReference<>(handler);
            downX = event.getX(); downY = event.getY(); lastX = (int) downX;
            pointerId = event.getPointerId(0); this.slop = slop;
        }
    }
}
