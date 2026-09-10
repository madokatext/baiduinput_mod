package io.github.madokatext.baiduinputmod;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.annotations.AfterInvocation;
import io.github.libxposed.api.annotations.BeforeInvocation;
import io.github.libxposed.api.annotations.XposedHooker;

/** Small method hooks, with transactional installation and invocation-local scopes. */
public final class HookSupport {
    interface Before { void run(XposedInterface.BeforeHookCallback cb) throws Throwable; }
    interface After { void run(XposedInterface.AfterHookCallback cb) throws Throwable; }
    interface Installer { void run() throws Throwable; }
    private static final Map<Member, Rule> RULES = new ConcurrentHashMap<>();
    private static final ThreadLocal<Integer> SCOPE = ThreadLocal.withInitial(() -> 0);
    private static final Map<Class<?>, Map<String, Field>> FIELDS = new ConcurrentHashMap<>();
    final ParityModule module;
    final ClassLoader loader;
    private final List<Member> pending = new ArrayList<>();
    private String group;

    HookSupport(ParityModule module, ClassLoader loader) { this.module = module; this.loader = loader; }
    Class<?> type(String name) throws ClassNotFoundException { return Class.forName(name, false, loader); }
    static boolean in(int mask) { return (SCOPE.get() & mask) != 0; }

    void group(String name, Installer installer) {
        group = name;
        pending.clear();
        try {
            installer.run();
            module.log("Hook group installed: " + name + " (" + pending.size() + " methods)");
        } catch (Throwable error) {
            for (Member member : pending) {
                Rule rule = RULES.remove(member);
                if (rule != null && rule.unhook != null) {
                    try { rule.unhook.unhook(); } catch (Throwable ignored) { }
                }
            }
            module.log("Hook group unavailable; keeping app behavior: " + name, error);
        } finally { pending.clear(); }
    }

    Method method(String owner, String name, Class<?> result, Class<?>... args) throws Exception {
        return method(type(owner), name, result, args);
    }
    static Method method(Class<?> owner, String name, Class<?> result, Class<?>... args) throws Exception {
        for (Class<?> c = owner; c != null; c = c.getSuperclass()) {
            try {
                Method m = c.getDeclaredMethod(name, args);
                if (m.getReturnType() != result) throw new IllegalStateException("Return type changed: " + m);
                m.setAccessible(true);
                return m;
            } catch (NoSuchMethodException e) {
                if (c.getSuperclass() == null) throw e;
            }
        }
        throw new NoSuchMethodException(owner.getName() + "." + name);
    }
    static Field field(Class<?> owner, String name, Class<?> expected) throws Exception {
        Map<String, Field> cache = FIELDS.computeIfAbsent(owner, k -> new ConcurrentHashMap<>());
        Field f = cache.get(name);
        if (f == null) {
            for (Class<?> c = owner; c != null; c = c.getSuperclass()) {
                try { f = c.getDeclaredField(name); break; } catch (NoSuchFieldException ignored) { }
            }
            if (f == null) throw new NoSuchFieldException(owner.getName() + "." + name);
            f.setAccessible(true);
            cache.put(name, f);
        }
        if (expected != null && f.getType() != expected) throw new NoSuchFieldException("Field type changed: " + f);
        return f;
    }
    void add(Member member, int scope, Before before, After after) {
        Rule rule = new Rule(module, group, scope, before, after);
        if (RULES.putIfAbsent(member, rule) != null) throw new IllegalStateException("Duplicate hook: " + member);
        pending.add(member);
        if (member instanceof Method) {
            if (scope != 0) module.deoptimize((Method) member);
            rule.unhook = module.hook((Method) member, Router.class);
        } else rule.unhook = module.hook((Constructor<?>) member, Router.class);
    }
    void add(Method method, Before before, After after) { add(method, 0, before, after); }
    private static final class Rule {
        final ParityModule module;
        final String group;
        final int scope;
        final Before before;
        final After after;
        volatile boolean failed;
        XposedInterface.MethodUnhooker<?> unhook;
        Rule(ParityModule module, String group, int scope, Before before, After after) {
            this.module = module; this.group = group; this.scope = scope; this.before = before; this.after = after;
        }
        void fail(Throwable e) {
            if (!failed) { failed = true; module.log("Hook disabled after incompatible call: " + group, e); }
        }
    }
    public static final class Invocation {
        final Rule rule;
        final int previous;
        Invocation(Rule rule) { this.rule = rule; previous = SCOPE.get(); }
    }
    @XposedHooker
    public static final class Router implements XposedInterface.Hooker {
        @BeforeInvocation
        public static Invocation before(XposedInterface.BeforeHookCallback cb) {
            Rule rule = RULES.get(cb.getMember());
            Invocation invocation = new Invocation(rule);
            if (rule != null && !rule.failed) {
                SCOPE.set(invocation.previous | rule.scope);
                try { if (rule.before != null) rule.before.run(cb); }
                catch (Throwable error) { rule.fail(error); }
            }
            return invocation;
        }
        @AfterInvocation
        public static void after(XposedInterface.AfterHookCallback cb, Invocation invocation) {
            if (invocation == null) return;
            try {
                Rule rule = invocation.rule;
                if (rule != null && !rule.failed && cb.getThrowable() == null && rule.after != null) {
                    try { rule.after.run(cb); } catch (Throwable error) { rule.fail(error); }
                }
            } finally {
                if (invocation.previous == 0) SCOPE.remove(); else SCOPE.set(invocation.previous);
            }
        }
    }
}
