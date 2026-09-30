package io.github.madokatext.baiduinputmod;

final class ModuleSettings {
    static final String GROUP = "settings";
    static final String CANDIDATE_SCROLL = "nine_key_top_candidate_direct_scroll";
    static final String DRAG_THRESHOLD = "candidate_drag_threshold_percent";
    static final String INERTIA_STRENGTH = "candidate_inertia_strength_percent";
    static final String INERTIA_DURATION = "candidate_inertia_duration_ms";
    static final int DEFAULT_DRAG_THRESHOLD = 100, MAX_DRAG_THRESHOLD = 300;
    static final int DEFAULT_STRENGTH = 60, MAX_STRENGTH = 200;
    static final int DEFAULT_DURATION = 450, MIN_DURATION = 100, MAX_DURATION = 1500;
    static int dragThreshold(int value) { return Math.max(0, Math.min(MAX_DRAG_THRESHOLD, value)); }
    static int dragThresholdPixels(int systemSlop, int percent) {
        return Math.round(systemSlop * dragThreshold(percent) / 100f);
    }
    static int strength(int value) { return Math.max(0, Math.min(MAX_STRENGTH, value)); }
    static int duration(int value) { return Math.max(MIN_DURATION, Math.min(MAX_DURATION, value)); }
    private ModuleSettings() { }
}
