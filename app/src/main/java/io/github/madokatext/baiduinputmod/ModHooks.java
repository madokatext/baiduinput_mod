package io.github.madokatext.baiduinputmod;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static io.github.madokatext.baiduinputmod.HookSupport.*;

/** Applies the original 17-class mod delta at the narrowest callable boundaries. */
final class ModHooks {
    static final int LIMIT = 100_000_000;
    private static final int SAFE_INSERT = 1, QUERY = 2, PROCESS = 4, EDIT = 8,
            FORMAT = 16, SKIN = 32, PALETTE = 64, TABS = 128, SYNC = 256;
    private static final String CONFIG = "com.baidu.input.clipboard.config.ClipboardConfig";
    private static final String DATA = "com.baidu.input.clipboard.datamanager.clipboard.ClipboardDataManagerImpl";
    private static final String CLIP_EDIT = "com.baidu.input.clipboard.panel.view.EditClipboardItemActivity";
    private static final String LAZY_EDIT = "com.baidu.input.lazycorpus.panel.lazy.EditLazyContentActivity";
    private static final String TAB_VIEW = "com.baidu.input.inspiration_corpus.panel.view.InspirationCorpusTabView";
    private final HookSupport h;

    ModHooks(HookSupport h) { this.h = h; }
    void install() {
        clipboard();
        editors();
        colors();
        menu();
        tabs();
        strings();
    }

    private void clipboard() {
        h.group("clipboard capacity", () -> {
            h.add(h.method(CONFIG, "b", int.class), null, cb -> {
                int maximum = Math.max(LIMIT, (Integer) cb.getResult());
                // The cleanup coroutine's original guard is >300. Preserve the mod's
                // >LIMIT guard without replacing its database/coroutine implementation.
                cb.setResult(in(SAFE_INSERT) && maximum <= LIMIT ? 300 : maximum);
            });
            h.add(h.method(CONFIG, "e", void.class, int.class, boolean.class), cb -> {
                if (!(Boolean) cb.getArgs()[1] && (Integer) cb.getArgs()[0] <= LIMIT) {
                    cb.getArgs()[0] = LIMIT;
                    cb.getArgs()[1] = true; // Existing unconditional preference-write branch.
                }
            }, null);
            h.add(h.method(DATA + "$safeInsert$1$1", "invokeSuspend", Object.class, Object.class), SAFE_INSERT, null, null);
        });
        h.group("clipboard query limits", () -> {
            Class<?> query = h.type("org.greenrobot.greendao.query.QueryBuilder");
            Field limit = field(query, "f", Integer.class);
            h.add(h.method(DATA, "rk", ArrayList.class, List.class), QUERY, null, null);
            h.add(h.method(DATA, "y9", List.class), QUERY, null, null);
            h.add(method(query, "f", ArrayList.class), cb -> {
                if (!in(QUERY)) return;
                Integer value = (Integer) limit.get(cb.getThisObject());
                // rk also uses 300 - alreadySelectedCount for its second query.
                if (value != null && value <= 300) limit.set(cb.getThisObject(), Math.max(0, value + LIMIT - 300));
            }, null);
        });
        h.group("clipboard sync length", () -> {
            Class<?> tab = h.type("com.baidu.input.clipboard.tab.ClipboardSubTabType");
            Field content = field(h.type("com.baidu.input.clipboard.datamanager.clipboard.dto.ClipboardItemDTO"), "b", String.class);
            h.add(h.method("com.baidu.input.sync.clipboard.ClipboardSyncHelper", "c", boolean.class), SYNC, null, null);
            h.add(h.method(DATA, "rj", ArrayList.class, Integer.class, tab), null, cb -> {
                if (!in(SYNC) || !(cb.getResult() instanceof ArrayList<?>)) return;
                ArrayList<Object> overLimit = new ArrayList<>();
                for (Object item : (ArrayList<?>) cb.getResult()) {
                    String value = item == null ? null : (String) content.get(item);
                    if (value == null || value.length() > LIMIT) overLimit.add(item);
                }
                // Only the read-only over-limit check sees this filtered copy.
                cb.setResult(overLimit);
            });
        });
        h.group("clipboard count label", () -> {
            String owner = "com.baidu.input.clipboard.panel.view.ClipboardSubTabView";
            Field label = field(h.type(owner), "b", h.type("com.baidu.input.acgfont.ImeTextView"));
            h.add(h.method(owner, "setCount", void.class, int.class), null, cb -> {
                int count = (Integer) cb.getArgs()[0];
                SpannableString text = new SpannableString(count + "/" + LIMIT);
                if (count > LIMIT) text.setSpan(new ForegroundColorSpan(0xffff0000), 0,
                        Integer.toString(count).length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
                ((TextView) label.get(cb.getThisObject())).setText(text);
            });
        });
    }

    private void editors() {
        h.group("clipboard and phrase text limits", () -> {
            h.add(h.method("com.baidu.input.clipboard.manager.BDClipboardManager$startProcess$1",
                    "invokeSuspend", Object.class, Object.class), PROCESS, null, null);
            h.add(h.method(CLIP_EDIT, "onCreate", void.class, Bundle.class), EDIT, null, null);
            Class<?> lazy = h.type(LAZY_EDIT);
            h.add(h.method(LAZY_EDIT, "access$buildContent", void.class, lazy, boolean.class,
                    h.type("com.baidu.input.cocomodule.lazy.LazyContent")), EDIT, null, null);
            h.add(InputFilter.LengthFilter.class.getDeclaredConstructor(int.class), 0, cb -> {
                int max = (Integer) cb.getArgs()[0];
                if (in(PROCESS | EDIT) && (max == 7000 || max == 3000)) cb.getArgs()[0] = LIMIT;
            }, null);
            h.add(method(InputFilter.LengthFilter.class, "filter", CharSequence.class,
                    CharSequence.class, int.class, int.class, Spanned.class, int.class, int.class), null, cb -> {
                // The original processing coroutine calls toString unconditionally
                // after its 7000 check. A raised LengthFilter can now return null.
                if (in(PROCESS) && cb.getResult() == null) cb.setResult(((CharSequence) cb.getArgs()[0])
                        .subSequence((Integer) cb.getArgs()[1], (Integer) cb.getArgs()[2]));
            });
        });
        h.group("editor length labels", () -> {
            Class<?> lazy = h.type(LAZY_EDIT);
            h.module.deoptimize(h.method(LAZY_EDIT + "$buildContent$8", "onTextChanged", void.class,
                    CharSequence.class, int.class, int.class, int.class));
            h.add(h.method(LAZY_EDIT, "access$setLimitText", void.class,
                    lazy, TextView.class, int.class, int.class), cb -> {
                if ((Integer) cb.getArgs()[3] == 3000) cb.getArgs()[3] = LIMIT;
            }, null);
            h.add(h.method(CLIP_EDIT, "a", void.class, TextView.class, int.class), FORMAT, null, null);
            h.add(method(String.class, "format", String.class, String.class, Object[].class), cb -> {
                if (!in(FORMAT)) return;
                Object[] args = (Object[]) cb.getArgs()[1];
                if (args.length == 2 && Integer.valueOf(7000).equals(args[1])) {
                    Object[] copy = args.clone(); copy[1] = LIMIT; cb.getArgs()[1] = copy;
                }
            }, null);
        });
    }

    private void colors() {
        h.group("skin opacity", () -> {
            String skin = "com.baidu.input.emotion.common.skin.SkinColor";
            h.add(h.method(skin, "e", int.class), SKIN, null, null);
            h.add(h.method(skin, "l", int.class), SKIN, null, null);
            h.add(h.method("androidx.core.graphics.ColorUtils", "e", int.class, int.class, int.class), cb -> {
                int color = (Integer) cb.getArgs()[0];
                if (in(SKIN) && (color >>> 24) == 0x33) cb.getArgs()[0] = (color & 0xffffff) | 0x0d000000;
            }, null);
        });
        h.group("panel palette opacity", () -> {
            h.add(h.method("com.baidu.input.inspirationcorpus.common.palette.BottomBarPaletteImpl", "c", Drawable.class), PALETTE, null, null);
            h.add(h.method("com.baidu.input.inspirationcorpus.common.palette.MainTabPaletteImpl", "b", Drawable.class), PALETTE, null, null);
            h.add(h.method("androidx.core.graphics.ColorUtils", "g", int.class, int.class, int.class), cb -> {
                if (in(PALETTE) && (Integer) cb.getArgs()[1] == 26) cb.getArgs()[1] = 13;
            }, null);
        });
        h.group("clipboard separators", () -> {
            Class<?> panel = h.type("com.baidu.input.ime.front.ClipboardPanelListView");
            Field skin = field(panel, "o", boolean.class);
            h.add(panel.getDeclaredConstructor(Context.class, int.class), 0, null, cb -> {
                if (skin.getBoolean(cb.getThisObject())) return;
                View view = (View) cb.getThisObject();
                for (String name : new String[]{"divider", "top_divider"}) {
                    int id = view.getResources().getIdentifier(name, "id", "com.baidu.input");
                    View divider = id == 0 ? null : view.findViewById(id);
                    if (divider != null && divider.getBackground() instanceof ColorDrawable) {
                        int color = ((ColorDrawable) divider.getBackground()).getColor();
                        divider.setBackgroundColor(color & 0xffffff);
                    }
                }
            });
        });
    }

    private void menu() {
        h.group("editing menu order", () -> {
            String owner = "com.baidu.input.ime.editor.popupdelegate.EditControlManagerDelegate";
            Field order = field(h.type(owner), "E0", int[].class);
            h.module.deoptimize(h.method(owner, "t", void.class));
            // t builds the array then b0 consumes it to lay out hit rectangles.
            // Change order before layout, so drawing and touch targets stay aligned.
            h.add(h.method(owner, "b0", void.class, int.class, int.class, int.class, int.class, Rect.class, int.class), cb -> {
                int[] a = (int[]) order.get(cb.getThisObject());
                if (a != null && a.length == 13 && a[1] == 2 && a[2] == 11 && a[3] == 1
                        && a[4] == 9 && a[5] == 14 && a[6] == 10 && a[12] == 7) {
                    int[] changed = a.clone(); changed[0] = 9; changed[4] = a[0];
                    order.set(cb.getThisObject(), changed);
                }
            }, null);
        });
    }

    private void tabs() {
        h.group("phrase tab title", () -> h.add(h.method(
                "com.baidu.input.inspiration_corpus.panel.presenter.InspirationPanelViewPresenterImpl$createDefaultTabs$mine$1",
                "getTitle", String.class), null, cb -> {
            if ("常用语".equals(cb.getResult())) cb.setResult("常用语              ");
        }));
        h.group("corpus tab layout", () -> {
            Class<?> adapter = h.type(TAB_VIEW + "$TabAdapter");
            Class<?> holder = h.type("androidx.recyclerview.widget.RecyclerView$ViewHolder");
            Class<?> tab = h.type("com.baidu.input.inspirationcorpus.common.tab.IInspirationCorpusTab");
            Field items = field(adapter, "f", ArrayList.class);
            Field itemView = field(holder, "itemView", View.class);
            Method tabId = method(tab, "a", int.class);
            Method bind = method(adapter, "onBindViewHolder", void.class, holder, int.class);
            h.add(bind, TABS, cb -> {
                Object item = ((List<?>) items.get(cb.getThisObject())).get((Integer) cb.getArgs()[1]);
                if ((Integer) tabId.invoke(item) == 2) {
                    View view = (View) itemView.get(cb.getArgs()[0]);
                    ViewGroup.LayoutParams lp = view.getLayoutParams();
                    if (lp != null) { lp.width = 0; view.setLayoutParams(lp); }
                    view.setVisibility(View.GONE);
                    cb.returnAndSkip(null);
                }
            }, cb -> {
                if (cb.isSkipped()) return;
                Object item = ((List<?>) items.get(cb.getThisObject())).get((Integer) cb.getArgs()[1]);
                int id = (Integer) tabId.invoke(item);
                if (id == 0 || id == 1) {
                    View view = (View) itemView.get(cb.getArgs()[0]);
                    ViewGroup.LayoutParams lp = view.getLayoutParams();
                    if (lp != null && lp.width >= 0) {
                        lp.width += Math.round(16 * view.getResources().getDisplayMetrics().density);
                        view.setLayoutParams(lp);
                    }
                }
            });
            h.add(h.method("com.baidu.input.inspiration_corpus.util.DimensionUtilKt", "a", int.class, Number.class), cb -> {
                if (in(TABS) && ((Number) cb.getArgs()[0]).intValue() == 75) cb.getArgs()[0] = 150;
            }, null);
            Class<?> recycler = h.type("androidx.recyclerview.widget.RecyclerView");
            Method childPosition = method(recycler, "getChildAdapterPosition", int.class, View.class);
            Method getAdapter = h.method(TAB_VIEW, "access$getAdapter$p", adapter, h.type(TAB_VIEW));
            Field outer = field(h.type(TAB_VIEW + "$itemDecoration$2$1"), "e", h.type(TAB_VIEW));
            h.add(h.method(TAB_VIEW + "$itemDecoration$2$1", "getItemOffsets", void.class,
                    Rect.class, View.class, recycler, h.type("androidx.recyclerview.widget.RecyclerView$State")), null, cb -> {
                int position = (Integer) childPosition.invoke(cb.getArgs()[2], cb.getArgs()[1]);
                Object ad = getAdapter.invoke(null, outer.get(cb.getThisObject()));
                List<?> list = (List<?>) items.get(ad);
                if (position < 0 || position >= list.size()) return;
                int id = (Integer) tabId.invoke(list.get(position));
                if (id == 0 || id == 1) {
                    Rect rect = (Rect) cb.getArgs()[0]; rect.left = rect.right = 0;
                }
            });
        });
    }

    private static final Map<String, String> STRINGS = Map.of(
            "clipboard_cand_max_hint", "剪贴板每条最多100000000字",
            "clipboard_limit_rows_guide", "云端剪贴板最多保存100000000条数据 ，超出的内容将会被删除且不可恢复，是否继续？",
            "clipboard_limit_rows_words_guide", "云端剪贴板最多保存100000000条数据，每条最多100000000字 ，超出的内容将会被删除且不可恢复，是否继续？",
            "clipboard_limit_words_guide", "云端剪贴板每条最多100000000字 ，部分超长内容将被截断，是否继续同步");
    private static String replacement(Resources resources, int id) {
        try {
            if (id == 0 || !"com.baidu.input".equals(resources.getResourcePackageName(id))) return null;
            return STRINGS.get(resources.getResourceEntryName(id));
        } catch (Resources.NotFoundException ignored) { return null; }
    }
    private void strings() {
        h.group("resource text by name", () -> {
            After text = cb -> {
                String value = replacement((Resources) cb.getThisObject(), (Integer) cb.getArgs()[0]);
                if (value != null) cb.setResult(value);
            };
            h.add(method(Resources.class, "getText", CharSequence.class, int.class), null, text);
            h.add(method(Resources.class, "getText", CharSequence.class, int.class, CharSequence.class), null, text);
            h.add(method(Resources.class, "getString", String.class, int.class), null, text);
            h.add(method(Resources.class, "getString", String.class, int.class, Object[].class), null, text);
            After typed = cb -> {
                TypedArray array = (TypedArray) cb.getThisObject();
                String value = replacement(array.getResources(), array.getResourceId((Integer) cb.getArgs()[0], 0));
                if (value != null) cb.setResult(value);
            };
            h.add(method(TypedArray.class, "getText", CharSequence.class, int.class), null, typed);
            h.add(method(TypedArray.class, "getString", String.class, int.class), null, typed);
        });
    }
}
