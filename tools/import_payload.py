#!/usr/bin/env python3
"""Import the supplied smali/ARSC pair. This is a source generator, not a test."""
import argparse
import base64
import gzip
import hashlib
import json
from pathlib import Path
import re
import zipfile


def sha(data):
    return hashlib.sha256(data).hexdigest()


def canonical(text):
    # baksmali omits zero-valued static initializers after reassembly.
    text = re.sub(r'(?m)^(\.field .*?) = (?:false|null|0x0(?:L|t|s)?)$', r'\1', text)
    return text.strip()


def resource_delta(original, modified):
    # Greedy COPY/ADD stream. Align only the source, so insertions do not
    # desynchronize subsequent matches. No external binary patch library.
    width = 64
    index = {}
    for pos in range(0, len(original) - width + 1, width):
        key = original[pos:pos + width]
        candidates = index.setdefault(key, [])
        if len(candidates) < 8:
            candidates.append(pos)
    operations, literal = [], bytearray()
    pos, expected = 0, 0
    while pos < len(modified):
        key = modified[pos:pos + width]
        candidates = list(index.get(key, ())) if len(key) == width else []
        if original[expected:expected + width] == key and len(key) == width:
            candidates.insert(0, expected)
        best, length = 0, 0
        for start in candidates:
            n = width
            bound = min(len(original) - start, len(modified) - pos)
            while n + 4096 <= bound and original[start+n:start+n+4096] == modified[pos+n:pos+n+4096]:
                n += 4096
            while n < bound and original[start+n] == modified[pos+n]:
                n += 1
            if n > length:
                best, length = start, n
        if length:
            if literal:
                operations.append({'add': base64.b64encode(literal).decode()})
                literal.clear()
            operations.append({'copy': [best, length]})
            pos += length
            expected = best + length
        else:
            literal.append(modified[pos])
            pos += 1
    if literal:
        operations.append({'add': base64.b64encode(literal).decode()})
    return {'format': 1, 'sourceSha256': sha(original), 'targetSha256': sha(modified),
            'sourceSize': len(original), 'targetSize': len(modified), 'operations': operations}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--origin', type=Path, required=True)
    parser.add_argument('--mod', type=Path, required=True)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    assets = root / 'app/src/main/assets/parity'
    assets.mkdir(parents=True, exist_ok=True)
    report = {'package': 'com.baidu.input', 'classes': [], 'formatOnly': [], 'packagingOnly': [], 'inputs': {}}
    for origin in sorted(args.origin.glob('*_smali.zip')):
        mod = args.mod / origin.name
        report['inputs'][origin.name] = {'origin': sha(origin.read_bytes()), 'mod': sha(mod.read_bytes())}
        with zipfile.ZipFile(origin) as a, zipfile.ZipFile(mod) as b:
            names = {n for n in a.namelist() if n.endswith('.smali')}
            mod_names = {n for n in b.namelist() if n.endswith('.smali')}
            if names != mod_names:
                raise ValueError('Class inventory changed: ' + origin.name)
            for name in sorted(names):
                av, bv = a.read(name), b.read(name)
                if av == bv:
                    continue
                at, bt = av.decode('utf-8'), bv.decode('utf-8')
                if canonical(at) == canonical(bt):
                    report['formatOnly'].append(name)
                    continue
                if name == 'androidx/multidex/MultiDexApplication.smali':
                    expected = at.replace('.super Landroid/app/Application;', '.super Lbin/mt/signature/KillerApplication656;')
                    if canonical(expected) != canonical(bt):
                        raise ValueError('Unexpected MultiDexApplication change')
                    report['packagingOnly'].append(name)
                    continue
                dest = root / 'payload/smali' / name
                dest.parent.mkdir(parents=True, exist_ok=True)
                dest.write_bytes(bv)
                am = dict(re.findall(r'(?ms)^\.method ([^\n]+)\n(.*?)^\.end method', at))
                bm = dict(re.findall(r'(?ms)^\.method ([^\n]+)\n(.*?)^\.end method', bt))
                report['classes'].append({'name': name[:-6].replace('/', '.'), 'path': name,
                                          'originSha256': sha(av), 'modSha256': sha(bv),
                                          'methods': [k for k in am if am[k] != bm.get(k)]})
    original = (args.origin / 'resources.arsc').read_bytes()
    modified = (args.mod / 'resources.arsc').read_bytes()
    delta = resource_delta(original, modified)
    patch_bytes = (json.dumps(delta, separators=(',', ':')) + '\n').encode('utf-8')
    (assets / 'resources.patch.json.gz').write_bytes(gzip.compress(patch_bytes, compresslevel=9, mtime=0))
    report['resources'] = {k: v for k, v in delta.items() if k != 'operations'}
    (assets / 'profile.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(f'Imported {len(report["classes"])} changed classes; {len(report["formatOnly"])} formatting-only classes; '
          f'{len(report["packagingOnly"])} packaging-only class; {len(delta["operations"])} resource operations.')


if __name__ == '__main__':
    main()
