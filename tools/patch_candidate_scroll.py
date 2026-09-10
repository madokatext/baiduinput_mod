#!/usr/bin/env python3
"""Generate the nine-key top candidate-bar overlay; does not build or test."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import zipfile

CAND = 'Lcom/baidu/input/ime/cand/CandHandler;'
ABS = 'Lcom/baidu/input/panel/render/cand/AbsCandHandler;'
SLIDE = 'Lcom/baidu/input/panel/render/cand/slide/SlidingView;'
WINDOW = 'Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindow;'
MANAGER = 'Lcom/baidu/input/panel/render/cand/slide/SlidingVisibleWindowManager;'
CELL = 'Lcom/baidu/input/panel/render/cand/slide/ISlidingCell;'
FACTORY = 'Lcom/baidu/input/ime/cand/slide/CoreStringSlidingCellFactory;'
KEY = 'Lcom/baidu/input/ime/keymap/KeyMap;'
STAT = 'Lcom/baidu/input/ime/InputStatMac;'
FEATURE = 'nine-key-top-candidate-direct-scroll'
SIDE_LIST_PATHS = {
    'com/baidu/input/ime/SubList.smali',
    'com/baidu/input/optimization/MainSubListWrapper.smali',
    'com/baidu/input/ime/keymap/KeyMap.smali',
}


def replace_once(text, old, new):
    if text.count(old) != 1:
        raise ValueError('Unsupported source layout: ' + old[:100])
    return text.replace(old, new, 1)


def prepend(text, signature, instructions):
    pattern = r'(?m)^(\.method ' + re.escape(signature) + r'\n    \.registers \d+\n)'
    text, count = re.subn(pattern, lambda m: m[1] + '\n' + instructions + '\n', text)
    if count != 1:
        raise ValueError('Missing method: ' + signature)
    return text


def patch_cand_handler(text):
    text = replace_once(text, '# instance fields\n', '''# instance fields
.field private baiduModDirectTouch:Z

.field private baiduModTraceCount:I

.field private baiduModMoveTraced:Z

''')
    text = prepend(text, 'public final S2(Landroid/view/MotionEvent;)Z', f'''    # p0/p1 exceed v15: preserve the register map and use /range.
    invoke-virtual/range {{p0 .. p1}}, {CAND}->baiduModBeginTouch(Landroid/view/MotionEvent;)V''')
    # Both implementations discard the first MOVE after recognizing a drag.
    text = replace_once(text, '    :cond_225\n    move v1, v7', f'''    :cond_225
    iget-boolean v1, v9, {SLIDE}->baiduModDirectTouch:Z
    if-nez v1, :cond_227
    move v1, v7''')
    text = replace_once(text, '    if-eqz v14, :cond_46a\n\n    .line 568', f'''    if-eqz v14, :cond_46a

    iget-boolean v14, v9, {SLIDE}->baiduModDirectTouch:Z
    if-eqz v14, :baidu_mod_sliding_release_original
    iget v14, v9, {SLIDE}->h:I
    sub-int v14, v12, v14
    invoke-virtual {{v9, v14}}, {SLIDE}->b(I)V
    invoke-virtual {{v9}}, {SLIDE}->baiduModStopScroll()V
    const-string v14, "release/sliding"
    invoke-virtual {{v0, v14}}, {CAND}->baiduModTrace(Ljava/lang/String;)V
    # Continue original pressed-cell and VelocityTracker cleanup, without fling.
    goto/16 :goto_2e1
    :baidu_mod_sliding_release_original
    .line 568''')
    text = replace_once(text, f'    invoke-virtual {{v9, v1}}, {SLIDE}->b(I)V', f'''    invoke-virtual {{v9, v1}}, {SLIDE}->b(I)V
    const-string v1, "move/sliding"
    invoke-virtual {{v0, v1}}, {CAND}->baiduModTraceMove(Ljava/lang/String;)V''')
    text = replace_once(text, '''    .line 1494
    const/4 v1, 0x0

    .line 1495''', f'''    .line 1494
    iget-boolean v1, v0, {CAND}->baiduModDirectTouch:Z
    if-nez v1, :cond_5d9
    const/4 v1, 0x0

    .line 1495''')
    # k2 already clamps legacy movement; skip release snap and inertia.
    text = replace_once(text, '    if-eqz v1, :cond_66b\n\n    .line 1537', f'''    if-eqz v1, :cond_66b

    iget-boolean v1, v0, {CAND}->baiduModDirectTouch:Z
    if-eqz v1, :baidu_mod_legacy_release_original
    iget v1, v0, {ABS}->f:I
    sub-int v1, v8, v1
    invoke-virtual {{v0, v1}}, {ABS}->k2(I)V
    invoke-virtual {{v9, v4}}, Landroid/widget/Scroller;->forceFinished(Z)V
    const-string v1, "release/legacy"
    invoke-virtual {{v0, v1}}, {CAND}->baiduModTrace(Ljava/lang/String;)V
    goto/16 :goto_631
    :baidu_mod_legacy_release_original
    .line 1537''')
    text = replace_once(text, f'    invoke-virtual {{v0, v1}}, {ABS}->k2(I)V\n\n    .line 1509', f'''    invoke-virtual {{v0, v1}}, {ABS}->k2(I)V
    const-string v1, "move/legacy"
    invoke-virtual {{v0, v1}}, {CAND}->baiduModTraceMove(Ljava/lang/String;)V

    .line 1509''')
    # Added branches can increase distances across the existing touch method.
    start = text.index('.method public final S2(')
    end = text.index('.end method', start)
    text = text[:start] + re.sub(r'(?m)^    goto (?=:)', '    goto/16 ', text[start:end]) + text[end:]
    return text + f'''
.method public final baiduModBeginTouch(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-virtual {{p1}}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-nez v0, :done
    const/4 v0, 0x0
    iput-boolean v0, p0, {CAND}->baiduModMoveTraced:Z
    sget-object v1, {KEY}->c0:{STAT}
    if-eqz v1, :configured
    invoke-virtual {{v1}}, {STAT}->f()B
    move-result v2
    const/16 v3, 0x21
    if-ne v2, v3, :configured
    iget-byte v2, v1, {STAT}->d:B
    const/4 v3, 0x1
    if-ne v2, v3, :configured
    iget-byte v2, v1, {STAT}->g:B
    if-nez v2, :configured
    move v0, v3
    :configured
    iget-boolean v1, p0, {CAND}->baiduModDirectTouch:Z
    iput-boolean v0, p0, {CAND}->baiduModDirectTouch:Z
    if-eq v0, v1, :same_mode
    const/4 v1, 0x0
    iput v1, p0, {CAND}->baiduModTraceCount:I
    :same_mode
    iget-object v1, p0, {ABS}->a0:{MANAGER}
    if-eqz v1, :legacy
    iget-object v1, v1, {MANAGER}->c:{SLIDE}
    if-eqz v1, :legacy
    iput-boolean v0, v1, {SLIDE}->baiduModDirectTouch:Z
    if-eqz v0, :legacy
    invoke-virtual {{v1}}, {SLIDE}->baiduModStopScroll()V
    const/4 v2, 0x0
    invoke-virtual {{v1, v2}}, {SLIDE}->b(I)V
    :legacy
    if-eqz v0, :trace
    iget-object v1, p0, {ABS}->g:Landroid/widget/Scroller;
    if-eqz v1, :trace
    const/4 v2, 0x1
    invoke-virtual {{v1, v2}}, Landroid/widget/Scroller;->forceFinished(Z)V
    :trace
    const-string v0, "down/top"
    invoke-virtual {{p0, v0}}, {CAND}->baiduModTrace(Ljava/lang/String;)V
    :done
    return-void
.end method

.method public final baiduModTraceMove(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, {CAND}->baiduModMoveTraced:Z
    if-nez v0, :done
    const/4 v0, 0x1
    iput-boolean v0, p0, {CAND}->baiduModMoveTraced:Z
    invoke-virtual {{p0, p1}}, {CAND}->baiduModTrace(Ljava/lang/String;)V
    :done
    return-void
.end method

# At most twelve entries per handler/mode; no input or candidate text.
.method public final baiduModTrace(Ljava/lang/String;)V
    .registers 5

    iget v0, p0, {CAND}->baiduModTraceCount:I
    const/16 v1, 0xc
    if-ge v0, v1, :done
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, {CAND}->baiduModTraceCount:I
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {{v0}}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "1.1.2 "
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {{v0, p1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " enabled="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, {CAND}->baiduModDirectTouch:Z
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    sget-object v2, {KEY}->c0:{STAT}
    if-eqz v2, :position
    const-string v1, " layout="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-byte v1, v2, {STAT}->d:B
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :position
    const-string v1, " offset="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v1, {ABS}->v1:I
    iget-object v2, p0, {ABS}->a0:{MANAGER}
    if-eqz v2, :append_offset
    iget-boolean v2, p0, {ABS}->b0:Z
    if-eqz v2, :append_offset
    iget-object v2, p0, {ABS}->a0:{MANAGER}
    iget-object v2, v2, {MANAGER}->b:{WINDOW}
    if-eqz v2, :append_offset
    iget v1, v2, {WINDOW}->e:I
    :append_offset
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {{v0}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BaiduInputModScroll"
    invoke-static {{v1, v0}}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :done
    return-void
.end method
'''


def patch_sliding_view(text):
    text = replace_once(text, '# instance fields\n',
                        '# instance fields\n.field public baiduModDirectTouch:Z\n\n')
    text = prepend(text, 'public final b(I)V', f'''    iget-boolean v0, p0, {SLIDE}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    invoke-virtual {{p0, p1}}, {SLIDE}->baiduModMove(I)V
    return-void
    :baidu_mod_original''')
    text = prepend(text, 'public final c(I)V', f'''    iget-boolean v0, p0, {SLIDE}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    invoke-virtual {{p0}}, {SLIDE}->baiduModStopScroll()V
    return-void
    :baidu_mod_original''')
    return text + f'''
.method public final baiduModStopScroll()V
    .registers 3

    iget-object v0, p0, {SLIDE}->i:Landroid/widget/Scroller;
    const/4 v1, 0x1
    invoke-virtual {{v0, v1}}, Landroid/widget/Scroller;->forceFinished(Z)V
    const/4 v0, 0x0
    iput-byte v0, p0, {SLIDE}->p:B
    iput-boolean v0, p0, {SLIDE}->u:Z
    return-void
.end method

# Use the existing lazy layout. g is a prefetch bound, not the content end.
# Once the final cell is cached, its end gives the actual lower offset bound.
.method public final baiduModMove(I)V
    .registers 8

    iget-object v0, p0, {SLIDE}->c:{WINDOW}
    if-eqz v0, :done
    iget v1, v0, {WINDOW}->a:I
    if-lez v1, :done
    iget-object v1, v0, {WINDOW}->b:{FACTORY}
    invoke-virtual {{v1}}, {FACTORY}->a()I
    move-result v1
    if-lez v1, :done
    add-int/lit8 v1, v1, -0x1
    iget v2, v0, {WINDOW}->e:I
    add-int/2addr p1, v2
    const/4 v3, 0x0
    invoke-static {{p1, v3}}, Ljava/lang/Math;->min(II)I
    move-result p1
    invoke-virtual {{v0, p1}}, {WINDOW}->e(I)I
    move-result v4
    iget-object v5, v0, {WINDOW}->h:Landroid/util/SparseArray;
    invoke-virtual {{v5, v1}}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, {CELL}
    if-eqz v5, :use_result
    invoke-interface {{v5}}, {CELL}->getEnd()I
    move-result v5
    iget v1, v0, {WINDOW}->a:I
    sub-int/2addr v1, v5
    invoke-static {{v1, v3}}, Ljava/lang/Math;->min(II)I
    move-result v1
    invoke-static {{p1, v1}}, Ljava/lang/Math;->max(II)I
    move-result v1
    if-eq v1, p1, :use_result
    invoke-virtual {{v0, v1}}, {WINDOW}->e(I)I
    move-result v4
    :use_result
    const v1, 0x7fffffff
    if-ne v4, v1, :apply
    # Restore visible-cell bookkeeping if the requested cells are unavailable.
    invoke-virtual {{v0, v2}}, {WINDOW}->e(I)I
    goto :prefetch
    :apply
    iput v4, v0, {WINDOW}->e:I
    :prefetch
    invoke-virtual {{v0}}, {WINDOW}->d()V
    :done
    return-void
.end method
'''


PATCHES = {
    'com/baidu/input/ime/cand/CandHandler.smali': ('classes3_smali.zip', patch_cand_handler),
    'com/baidu/input/panel/render/cand/slide/SlidingView.smali': ('classes4_smali.zip', patch_sliding_view),
}


def apply_candidate_scroll(root, origin, mod, report):
    generated = []
    for name, (archive, patch) in PATCHES.items():
        with zipfile.ZipFile(origin / archive) as original, zipfile.ZipFile(mod / archive) as modified:
            before = original.read(name)
            base = modified.read(name)
        source = base.decode('utf-8').replace('\r\n', '\n')
        result = patch(source)
        output = result.encode('utf-8')
        old_methods = dict(re.findall(r'(?ms)^\.method ([^\n]+)\n(.*?)^\.end method', source))
        new_methods = dict(re.findall(r'(?ms)^\.method ([^\n]+)\n(.*?)^\.end method', result))
        entry = {
            'name': name[:-6].replace('/', '.'), 'path': name,
            'originSha256': hashlib.sha256(before).hexdigest(),
            'modSha256': hashlib.sha256(base).hexdigest(),
            'payloadSha256': hashlib.sha256(output).hexdigest(),
            'feature': FEATURE,
            'methods': [key for key, value in new_methods.items() if old_methods.get(key) != value],
        }
        generated.append((name, output, entry))
    for name, output, entry in generated:
        dest = root / 'payload/smali' / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(output)
        report['classes'] = [item for item in report['classes'] if item['path'] != name]
        report['classes'].append(entry)
        report['formatOnly'] = [item for item in report['formatOnly'] if item != name]
    # Explicitly restore the side list: remove only the three obsolete overlays.
    for name in SIDE_LIST_PATHS:
        path = root / 'payload/smali' / name
        if path.is_file():
            path.unlink()
    report['classes'] = [item for item in report['classes'] if item['path'] not in SIDE_LIST_PATHS]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--origin', required=True, type=Path)
    parser.add_argument('--mod', required=True, type=Path)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    profile = root / 'app/src/main/assets/parity/profile.json'
    report = json.loads(profile.read_text(encoding='utf-8'))
    apply_candidate_scroll(root, args.origin, args.mod, report)
    profile.write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print('Generated nine-key top candidate-bar overlays and restored the side list.')


if __name__ == '__main__':
    main()
