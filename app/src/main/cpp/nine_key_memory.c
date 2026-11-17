#define _GNU_SOURCE
#include <jni.h>
#include <android/log.h>
#include <elf.h>
#include <link.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdatomic.h>
#include <string.h>
#include <shadowhook.h>
#include "scorer_profile.h"

#if !defined(__aarch64__)
#error This verified scoring profile is only for arm64-v8a.
#endif

// The original routines take a WORD pointer, input category and current time.
// The pronunciation-matched routine additionally takes its matched entry.
typedef uint32_t (*score_fn)(const void *, uint32_t, uint32_t);
typedef uint32_t (*matched_fn)(const void *, uint32_t, const void *, uint32_t);
static void *original_residual, *original_matched, *original_composition;
static void *stubs[3];
static _Atomic bool ready;
static _Atomic bool override_logged;
static bool failed;
static _Thread_local bool nine_key_scope;

static uint32_t score_time(const void *word, uint32_t now) {
    if (!nine_key_scope || !atomic_load_explicit(&ready, memory_order_acquire)) return now;
    const unsigned char *bytes = word;
    uint16_t flags;
    memcpy(&flags, bytes + 4, sizeof(flags));
    uint32_t saved;
    memcpy(&saved, bytes + 8 + (flags & 31u) * 2u, sizeof(saved));
    if (!atomic_load_explicit(&override_logged, memory_order_relaxed)
            && !atomic_exchange_explicit(&override_logged, true, memory_order_relaxed)) {
        __android_log_print(ANDROID_LOG_INFO, "BaiduInputMod",
                            "NineKeyMemory 1.4.0: reached a scoped user-word scorer; age override active");
    }
    // Only change this invocation's now argument. In particular, never write T,
    // the shared clock, frequency fields, flags, or the maintenance counter.
    return saved;
}

static uint32_t residual(const void *word, uint32_t category, uint32_t now) {
    return ((score_fn) original_residual)(word, category, score_time(word, now));
}

static uint32_t matched(const void *word, uint32_t category, const void *entry, uint32_t now) {
    return ((matched_fn) original_matched)(word, category, entry, score_time(word, now));
}

static uint32_t composition(const void *word, uint32_t category, uint32_t now) {
    return ((score_fn) original_composition)(word, category, score_time(word, now));
}

struct image {
    uintptr_t base;
    const ElfW(Phdr) *headers;
    ElfW(Half) count;
    unsigned matches;
};

static int find_core(struct dl_phdr_info *info, size_t size, void *context) {
    (void) size;
    const char *name = strrchr(info->dlpi_name, '/');
    name = name == NULL ? info->dlpi_name : name + 1;
    if (strcmp(name, "libiptcore.so") != 0) return 0;
    struct image *image = context;
    image->matches++;
    image->base = info->dlpi_addr;
    image->headers = info->dlpi_phdr;
    image->count = info->dlpi_phnum;
    return 0;
}

static bool executable_range(const struct image *image, uintptr_t address, size_t length) {
    for (ElfW(Half) i = 0; i < image->count; i++) {
        const ElfW(Phdr) *header = &image->headers[i];
        if (header->p_type != PT_LOAD || (header->p_flags & (PF_R | PF_X)) != (PF_R | PF_X)) continue;
        uintptr_t begin = image->base + header->p_vaddr;
        if (address >= begin && length <= header->p_memsz && address - begin <= header->p_memsz - length) return true;
    }
    return false;
}

static jstring error(JNIEnv *env, const char *message) {
    failed = true;
    return (*env)->NewStringUTF(env, message);
}

JNIEXPORT jstring JNICALL
Java_io_github_madokatext_baiduinputmod_NineKeyMemoryHooks_nativeInstall(JNIEnv *env, jclass type) {
    (void) type;
    // Java serializes installation. Do not install/uninstall on setting changes:
    // the thread-local argument gate keeps disabled and unrelated calls intact.
    if (atomic_load_explicit(&ready, memory_order_acquire)) return NULL;
    if (failed) return (*env)->NewStringUTF(env, "Native scoring hooks previously unavailable");
    struct image image = {0};
    dl_iterate_phdr(find_core, &image);
    if (image.matches == 0) return (*env)->NewStringUTF(env, "waiting");
    if (image.matches != 1) return error(env, "Multiple libiptcore.so images; refusing ambiguous offsets");

    const uintptr_t offsets[] = {0x25241c, 0x259100, 0x25c1b4};
    const unsigned char *expected[] = {residual_code, matched_code, composition_code};
    const size_t lengths[] = {sizeof(residual_code), sizeof(matched_code), sizeof(composition_code)};
    for (unsigned i = 0; i < 3; i++) {
        uintptr_t address = image.base + offsets[i];
        if (!executable_range(&image, address, lengths[i])
                || memcmp((const void *) address, expected[i], lengths[i]) != 0) {
            return error(env, "Loaded scorer bytes differ from verified profile; keeping original scoring");
        }
    }
    if (shadowhook_init(SHADOWHOOK_MODE_UNIQUE, false) != 0) {
        return error(env, "Cannot initialize native scoring hook library");
    }
    // 1.1.1 uses the process-wide initialization mode. Another SDK may have
    // initialized it first; a shared-mode trampoline cannot be called directly.
    if (shadowhook_get_mode() != SHADOWHOOK_MODE_UNIQUE) {
        return error(env, "Native hook library already uses another mode; keeping original scoring");
    }
    void *proxies[] = {(void *) residual, (void *) matched, (void *) composition};
    void **originals[] = {&original_residual, &original_matched, &original_composition};
    for (unsigned i = 0; i < 3; i++) {
        // Hidden/stripped functions use the address API available in 1.1.1.
        stubs[i] = shadowhook_hook_func_addr((void *) (image.base + offsets[i]),
                proxies[i], originals[i]);
        if (stubs[i] == NULL) {
            __android_log_print(ANDROID_LOG_ERROR, "BaiduInputMod",
                                "NineKeyMemory: scoring hook %u failed, errno=%d", i, shadowhook_get_errno());
            // ready remains false: even a failed rollback proxy is pass-through.
            for (unsigned j = 0; j < i; j++) shadowhook_unhook(stubs[j]);
            return error(env, "Cannot install all three scoring hooks; age override stays disabled");
        }
    }
    atomic_store_explicit(&ready, true, memory_order_release);
    return NULL;
}

JNIEXPORT jboolean JNICALL
Java_io_github_madokatext_baiduinputmod_NineKeyMemoryHooks_nativeSwapScope(JNIEnv *env, jclass type,
                                                                       jboolean enabled) {
    (void) env;
    (void) type;
    bool previous = nine_key_scope;
    nine_key_scope = enabled == JNI_TRUE;
    return previous ? JNI_TRUE : JNI_FALSE;
}
