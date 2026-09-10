#!/usr/bin/env python3
"""Generate the nine-key pinyin source overlay; does not compile or run tests."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import zipfile


SUB = 'Lcom/baidu/input/ime/SubList;'
MAIN = 'Lcom/baidu/input/optimization/MainSubListWrapper;'
KEY = 'Lcom/baidu/input/ime/keymap/KeyMap;'
STAT = 'Lcom/baidu/input/ime/InputStatMac;'
FEATURE = 'nine-key-pinyin-direct-scroll'


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


def patch_sublist(text):
    text = replace_once(text, '# instance fields\n',
                        '# instance fields\n.field public baiduModDirectTouch:Z\n\n'
                        '.field private baiduModTraceCount:I\n\n'
                        '.field private baiduModMoveLogged:Z\n\n')
    text = prepend(text, 'public final g(Lcom/baidu/input/ime/InputStatMac;[Ljava/lang/String;)V',
                   f'    invoke-virtual {{p0, p1}}, {SUB}->baiduModConfigureTouch(Lcom/baidu/input/ime/InputStatMac;)V')
    text = prepend(text, 'public final l(II)V', f'''    # A new touch owns the offset immediately, including during an old fling.
    # Some KeyMap.b paths call A/D directly and never call SubList.g.
    sget-object v0, {KEY}->c0:{STAT}
    invoke-virtual {{p0, v0}}, {SUB}->baiduModConfigureTouch({STAT})V
    const/4 v0, 0x0
    iput-boolean v0, p0, {SUB}->baiduModMoveLogged:Z
    const-string v0, "down"
    invoke-virtual {{p0, v0}}, {SUB}->baiduModTrace(Ljava/lang/String;)V
    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_down_original
    invoke-virtual {{p0}}, {SUB}->baiduModStopMotion()V
    :baidu_mod_down_original''')
    text = prepend(text, 'public final C(J)V', f'''    # Release/cancel must not schedule the legacy spring or inertia loop.
    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_release_original
    const/4 v0, 0x1
    iput-boolean v0, p0, {SUB}->w0:Z
    invoke-virtual {{p0}}, {SUB}->baiduModStopMotion()V
    const-string v0, "up/cancel"
    invoke-virtual {{p0, v0}}, {SUB}->baiduModTrace(Ljava/lang/String;)V
    return-void
    :baidu_mod_release_original''')
    # Preserve Z (drag detection), W (pressed styling), and the previous/current
    # touch coordinates. Only clamp the position, never accumulate overscroll.
    text = replace_once(text, '    :goto_2d\n    iget p1, p0, ' + SUB + '->P:I', f'''    :goto_2d
    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_move_original
    iget p1, p0, {SUB}->j:I
    invoke-virtual {{p0, p1}}, {SUB}->baiduModClampOffset(I)I
    move-result p1
    iput p1, p0, {SUB}->j:I
    iput p1, p0, {SUB}->k:I
    iget-boolean v0, p0, {SUB}->baiduModMoveLogged:Z
    if-nez v0, :baidu_mod_move_original
    const/4 v0, 0x1
    iput-boolean v0, p0, {SUB}->baiduModMoveLogged:Z
    const-string v0, "move"
    invoke-virtual {{p0, v0}}, {SUB}->baiduModTrace(Ljava/lang/String;)V
    :baidu_mod_move_original
    iget p1, p0, {SUB}->P:I''')
    return text + f'''
# Nine-key pinyin only: InputStatMac.o(false) maps b=0x21/d=1 to
# keyboard 0x0a. g=0 excludes handwriting and hardware keyboard modes.
.method public final baiduModConfigureTouch(Lcom/baidu/input/ime/InputStatMac;)V
    .registers 5

    const/4 v2, 0x0
    if-eqz p1, :configured
    invoke-virtual {{p1}}, Lcom/baidu/input/ime/InputStatMac;->f()B
    move-result v0
    const/16 v1, 0x21
    if-ne v0, v1, :configured
    iget-byte v0, p1, Lcom/baidu/input/ime/InputStatMac;->d:B
    const/4 v1, 0x1
    if-ne v0, v1, :configured
    iget-byte v0, p1, Lcom/baidu/input/ime/InputStatMac;->g:B
    if-nez v0, :configured
    move v2, v1
    :configured
    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    iput-boolean v2, p0, {SUB}->baiduModDirectTouch:Z
    if-eq v0, v2, :done
    const/4 v0, 0x0
    iput v0, p0, {SUB}->baiduModTraceCount:I
    invoke-virtual {{p0}}, {SUB}->baiduModStopMotion()V
    :done
    return-void
.end method

# Same content extent as SubList.C and MainSubListWrapper.G, without overshoot.
# Clamp each event independently so reversing at an edge responds immediately.
.method public final baiduModClampOffset(I)I
    .registers 5

    const/4 v0, 0x0
    iget-object v1, p0, {SUB}->I:[Ljava/lang/String;
    if-eqz v1, :empty
    iget v2, p0, {SUB}->p0:I
    if-lez v2, :empty
    array-length v1, v1
    iget v2, p0, {SUB}->L:I
    sub-int/2addr v1, v2
    if-lez v1, :empty
    iget v2, p0, {SUB}->p0:I
    mul-int/2addr v1, v2
    neg-int v1, v1
    invoke-static {{p1, v1}}, Ljava/lang/Math;->max(II)I
    move-result p1
    invoke-static {{p1, v0}}, Ljava/lang/Math;->min(II)I
    move-result p1
    return p1
    :empty
    return v0
.end method

.method public final baiduModStopMotion()V
    .registers 3

    instance-of v0, p0, Lcom/baidu/input/optimization/IMainSub;
    if-eqz v0, :stopped
    move-object v0, p0
    check-cast v0, Lcom/baidu/input/optimization/IMainSub;
    invoke-interface {{v0}}, Lcom/baidu/input/optimization/IMainSub;->a()V
    :stopped
    iget v0, p0, {SUB}->j:I
    invoke-virtual {{p0, v0}}, {SUB}->baiduModClampOffset(I)I
    move-result v0
    iput v0, p0, {SUB}->j:I
    iput v0, p0, {SUB}->k:I
    const-wide/16 v0, 0x0
    iput-wide v0, p0, {SUB}->T:D
    const/4 v0, 0x0
    iput v0, p0, {SUB}->g:I
    iput v0, p0, {SUB}->U:I
    iput-boolean v0, p0, {SUB}->V:Z
    iput-boolean v0, p0, {SUB}->W:Z
    iput-boolean v0, p0, {SUB}->Y:Z
    iput-boolean v0, p0, {SUB}->h:Z
    iput-boolean v0, p0, {SUB}->i:Z
    return-void
.end method

# Only the first six events per instance/mode are logged; never log input text.
.method public final baiduModTrace(Ljava/lang/String;)V
    .registers 6

    iget v0, p0, {SUB}->baiduModTraceCount:I
    const/4 v1, 0x6
    if-ge v0, v1, :trace_done
    add-int/lit8 v0, v0, 0x1
    iput v0, p0, {SUB}->baiduModTraceCount:I
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {{v0}}, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "1.1.1 "
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {{v0, p1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " class="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {{p0}}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v1
    invoke-virtual {{v1}}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, " enabled="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, {SUB}->baiduModDirectTouch:Z
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    sget-object v2, {KEY}->c0:{STAT}
    if-eqz v2, :trace_position
    const-string v1, " inputType/layout/mode="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-byte v1, v2, {STAT}->b:B
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v3, "/"
    invoke-virtual {{v0, v3}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-byte v1, v2, {STAT}->d:B
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {{v0, v3}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-byte v1, v2, {STAT}->g:B
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :trace_position
    const-string v1, " offset="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget v1, p0, {SUB}->j:I
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v1, " scrollable="
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-boolean v1, p0, {SUB}->X:Z
    invoke-virtual {{v0, v1}}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    invoke-virtual {{v0}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    const-string v1, "BaiduInputModScroll"
    invoke-static {{v1, v0}}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :trace_done
    return-void
.end method
'''


def patch_main_sublist(text):
    for signature in ('public final G()V', 'public final b(IIZ)V'):
        text = prepend(text, signature, f'''    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    invoke-virtual {{p0}}, {SUB}->baiduModStopMotion()V
    return-void
    :baidu_mod_original''')
    text = prepend(text, 'public final computeScroll()V', f'''    # While direct touch is enabled, animation frames cannot write j/k.
    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    return-void
    :baidu_mod_original''')
    text = prepend(text, 'public final a()V', f'''    # Also clear the wrapper's animation/redraw state on touch or mode changes.
    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_stop_original
    const/4 v0, 0x0
    iput-boolean v0, p0, {MAIN}->K0:Z
    iput-boolean v0, p0, {MAIN}->L0:Z
    :baidu_mod_stop_original''')
    text = prepend(text, 'public final d(I)I', f'''    # Replace the quarter-speed edge resistance with a bounded 1:1 delta.
    iget-boolean v0, p0, {SUB}->baiduModDirectTouch:Z
    if-eqz v0, :baidu_mod_original
    iget v0, p0, {SUB}->j:I
    add-int/2addr p1, v0
    invoke-virtual {{p0, p1}}, {SUB}->baiduModClampOffset(I)I
    move-result p1
    iput p1, p0, {SUB}->k:I
    sub-int/2addr p1, v0
    return p1
    :baidu_mod_original''')
    return text


def patch_keymap(text):
    # Refresh before every candidate update, including the A/D-only branches.
    text = prepend(text, 'public b([Ljava/lang/String;)V', f'''    iget-object v0, p0, {KEY}->c:{SUB}
    if-eqz v0, :baidu_mod_update_original
    sget-object v1, {KEY}->c0:{STAT}
    invoke-virtual {{v0, v1}}, {SUB}->baiduModConfigureTouch({STAT})V
    :baidu_mod_update_original''')
    # Keep the initial tap/drag threshold, but never re-enter its dead zone
    # after a drag has started. v3/v5 are scratch at this point in S0.
    return replace_once(text, '''    if-eqz v5, :cond_88

    .line 62''', f'''    if-eqz v5, :cond_88

    iget-object v3, v0, {KEY}->c:{SUB}
    if-eqz v3, :baidu_mod_move_threshold
    iget-boolean v5, v3, {SUB}->baiduModDirectTouch:Z
    if-eqz v5, :baidu_mod_move_threshold
    iget-boolean v5, v3, {SUB}->Z:Z
    if-nez v5, :cond_55
    :baidu_mod_move_threshold
    .line 62''')


PATCHES = {
    'com/baidu/input/ime/SubList.smali': ('classes3_smali.zip', patch_sublist),
    'com/baidu/input/optimization/MainSubListWrapper.smali': ('classes4_smali.zip', patch_main_sublist),
    'com/baidu/input/ime/keymap/KeyMap.smali': ('classes3_smali.zip', patch_keymap),
}


def apply_candidate_scroll(root, origin, mod, report):
    for name, (archive, patch) in PATCHES.items():
        with zipfile.ZipFile(origin / archive) as original, zipfile.ZipFile(mod / archive) as modified:
            before = original.read(name)
            base = modified.read(name)
        source = base.decode('utf-8').replace('\r\n', '\n')
        result = patch(source)
        output = result.encode('utf-8')
        dest = root / 'payload/smali' / name
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(output)
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
        report['classes'] = [item for item in report['classes'] if item['path'] != name]
        report['classes'].append(entry)
        report['formatOnly'] = [item for item in report['formatOnly'] if item != name]


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
    print('Generated nine-key pinyin direct-scroll overlays and updated profile.')


if __name__ == '__main__':
    main()
