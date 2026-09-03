#!/usr/bin/env bash
#
# Every `var(--token)` in style.css must be defined, and every class used in the HTML must exist
# in the stylesheet.
#
# Both failures are silent — CSS does not error, it just renders unstyled — and both happened three
# times while building the Flotilla page: `class="eyebrow"` with no rule, `var(--font-head)` which
# was never defined, `var(--ink)` when the token is `--seed`, and `var(--shadow-lg)` when only
# `--shadow-md` exists. Unstyled markup is the exact inconsistency design/PRINCIPLES.md is about,
# and "I'll remember to check" clearly does not work.
set -uo pipefail
cd "$(dirname "$0")/.."

python3 - <<'PY'
import re, pathlib, sys

css = pathlib.Path('style.css').read_text()
fail = []

# --- custom properties
defined = set(re.findall(r'(--[a-z0-9-]+)\s*:', css))
# A `var(--x, fallback)` is legitimate: the fallback is the value when --x is absent by design.
used_bare = set(re.findall(r'var\((--[a-z0-9-]+)\s*\)', css))
missing = sorted(used_bare - defined)
if missing:
    fail.append("undefined custom properties (no fallback): " + ", ".join(missing))

# --- classes
css_classes = set(re.findall(r'\.([a-zA-Z][\w-]*)', css))
html_classes = set()
for page in pathlib.Path('.').glob('*.html'):
    for attr in re.findall(r'class="([^"]+)"', page.read_text()):
        html_classes.update(attr.split())
unstyled = sorted(c for c in html_classes - css_classes if not c.startswith('js-'))
if unstyled:
    fail.append("classes used in HTML with no rule in style.css: " + ", ".join(unstyled))

if fail:
    print("✗ stylesheet check failed:")
    for f in fail:
        print("   ", f)
    sys.exit(1)
print("  css tokens and classes OK")
PY
