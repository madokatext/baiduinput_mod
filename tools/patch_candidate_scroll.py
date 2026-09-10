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
                        '# instance fields\n.field public baiduModDirectTouch:Z\n\n')
    text = prepend(text, 'public final g(Lcom/baidu/input/ime/InputStatMac;[Ljava/lang/String;)V',
                   f'    invoke-virtual {{p0, p1}}, {SUB}->baiduModConfigureTouch(Lcom/baidu/input/ime/InputStatMac;)V')
    text = prepend(text, 'public final l(II)V', f'''    # A new touch owns the offset immediately, including during an old fling.
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
    :baidu_mod_move_original
    iget p1, p0, {SUB}->P:I''')
    return text + f'''
# Nine-key pinyin only: InputStatMac.o(false) maps b=0x21/d=1 to
# keyboard 0x0a. g=0 excludes handwriting and hardware keyboard modes.
.method public final baiduModConfigureTouch(Lcom/baidu/input/ime/InputStatMac;)V
    .registers 5

    invoke-virtual {{p1}}, Lcom/baidu/input/ime/InputStatMac;->f()B
    move-result v0
    const/16 v1, 0x21
    const/4 v2, 0x0
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


PATCHES = {
    'com/baidu/input/ime/SubList.smali': ('classes3_smali.zip', patch_sublist),
    'com/baidu/input/optimization/MainSubListWrapper.smali': ('classes4_smali.zip', patch_main_sublist),
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
