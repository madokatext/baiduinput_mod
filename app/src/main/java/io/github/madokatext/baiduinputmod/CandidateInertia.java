package io.github.madokatext.baiduinputmod;

import android.view.Choreographer;

/** Module-owned animation; it never starts Baidu's spring or click machinery. */
final class CandidateInertia implements Choreographer.FrameCallback {
    interface Target {
        boolean valid() throws Exception;
        // Return false when movement reaches a content boundary.
        boolean move(int delta) throws Exception;
        void failed(Throwable error);
    }
    private final Choreographer frames = Choreographer.getInstance();
    private Target target;
    private final float velocity;
    private final double seconds;
    private final long started = System.nanoTime();
    private int distance;

    CandidateInertia(Target target, float velocity, int durationMs) {
        this.target = target;
        this.velocity = velocity;
        seconds = durationMs / 1000.0;
    }
    void start() { frames.postFrameCallback(this); }
    void cancel() {
        frames.removeFrameCallback(this);
        target = null;
    }
    @Override public void doFrame(long frameTimeNanos) {
        Target current = target;
        if (current == null) return;
        try {
            if (!current.valid()) { cancel(); return; }
            double elapsed = Math.min(seconds, Math.max(0, (frameTimeNanos - started) / 1_000_000_000.0));
            // Integrate linear velocity decay. Absolute distance retains fractional
            // pixels and makes the result independent of the display refresh rate.
            int next = (int) Math.round(velocity * (elapsed - elapsed * elapsed / (2 * seconds)));
            int delta = next - distance;
            distance = next;
            if (delta != 0 && !current.move(delta)) { cancel(); return; }
            if (elapsed >= seconds) cancel();
            else frames.postFrameCallback(this);
        } catch (Throwable error) {
            cancel();
            current.failed(error);
        }
    }
}
