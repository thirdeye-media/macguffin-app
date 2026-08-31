#!/bin/sh
# lint.sh — mechanical checks over the wiki.
#
# This is deliberately NOT the model. It counts links and fields and
# reports what the counts imply. A check scored by the process being
# checked passes every time; this one is scored by something else.
#
# Usage: ./lint.sh [wiki-dir]     (default: ./wiki)

WIKI="${1:-./wiki}"
[ -d "$WIKI" ] || { echo "no wiki at $WIKI"; exit 1; }

TMP=$(mktemp -d) || exit 1
trap 'rm -rf "$TMP"' EXIT
OUT="$TMP/found"; : > "$OUT"
say() { echo "$@" >> "$OUT"; }

# --- collect every page and every [[link]] target --------------------
find "$WIKI" -name '*.md' -not -name 'index.md' -not -name 'log.md' \
     -not -name 'abandoned.md' -not -name 'raw-notes.md' \
     > "$TMP/pages" 2>/dev/null

if [ ! -s "$TMP/pages" ]; then
  echo "wiki is empty. nothing to count yet."
  exit 0
fi

# /dev/null keeps grep in multi-file mode and off stdin
xargs grep -ho '\[\[[^]]*\]\]' < "$TMP/pages" 2>/dev/null \
  | sed 's/\[\[//; s/\]\]//; s:.*/::' | sort -u > "$TMP/links"

# --- section body: prints the lines under "## <heading>" -------------
section() { awk -v h="## $2" '
  $0 == h {f=1; next} /^## / {f=0} f && NF {print}' "$1"; }

# --- 1 · pages nothing links to --------------------------------------
# A sketch nobody has linked yet is normal. Only complain once a page
# has been drawn or fixed and still hangs off nothing.
while IFS= read -r p; do
  grep -qiE '^status: *(drawn|fixed)' "$p" || continue
  slug=$(basename "$p" .md)
  grep -qx "$slug" "$TMP/links" 2>/dev/null ||
    say "· nothing links to $slug — it is not in the story yet"
done < "$TMP/pages"

# --- 2 · threads set up and never paid off ---------------------------
for t in "$WIKI"/threads/*.md; do
  [ -e "$t" ] || continue
  [ -z "$(section "$t" 'Paid off')" ] &&
    say "· thread '$(basename "$t" .md)' is set up and never paid off"
done

# --- 3 · characters fixed with nothing at stake ----------------------
for c in "$WIKI"/characters/*.md; do
  [ -e "$c" ] || continue
  grep -qi '^status: *fixed' "$c" || continue
  [ -z "$(section "$c" "Doesn't know")" ] &&
    say "· $(basename "$c" .md) is fixed but knows everything — nothing is at stake"
done

# --- 4 · two characters, one want ------------------------------------
: > "$TMP/wants"
for c in "$WIKI"/characters/*.md; do
  [ -e "$c" ] || continue
  w=$(section "$c" 'Wants' | head -1)
  [ -n "$w" ] && printf '%s\t%s\n' "$w" "$(basename "$c" .md)" >> "$TMP/wants"
done
sort "$TMP/wants" | awk -F'\t' '
  $1==prev {print "· " pn " and " $2 " want the same thing — they may be one character"}
  {prev=$1; pn=$2}' >> "$OUT"

# --- 5 · characters sharing 3+ themes who have never met -------------
for c in "$WIKI"/characters/*.md; do
  [ -e "$c" ] || continue
  n=$(basename "$c" .md)
  grep -o '\[\[themes/[^]]*\]\]' "$c" 2>/dev/null |
    sed 's:.*/::; s/\]\]//' | sort -u > "$TMP/th.$n"
done
for a in "$TMP"/th.*; do
  [ -e "$a" ] || continue
  for b in "$TMP"/th.*; do
    [ -e "$b" ] || continue
    na=${a##*/th.}; nb=${b##*/th.}
    [ "$na" \< "$nb" ] || continue
    shared=$(comm -12 "$a" "$b" | grep -c .)
    [ "$shared" -ge 3 ] || continue
    ls "$WIKI"/relations/ 2>/dev/null |
      grep -q "$na.*$nb\|$nb.*$na" && continue
    say "· $na and $nb share $shared themes and have never met — scene?"
  done
done

# --- 6 · the story has gone abstract ---------------------------------
th=$(find "$WIKI/themes" -name '*.md' 2>/dev/null | grep -c .)
pl=$(find "$WIKI/places" -name '*.md' 2>/dev/null | grep -c .)
[ "$th" -ge 3 ] && [ "$pl" -eq 0 ] &&
  say "· $th themes and nowhere for them to happen — errand"

# --- 7 · themes that came from nobody but them -----------------------
for t in "$WIKI"/themes/*.md; do
  [ -e "$t" ] || continue
  grep -q '^source:.*macguffin/' "$t" ||
    say "· theme '$(basename "$t" .md)' came from you, not from the folder"
done

if [ -s "$OUT" ]; then cat "$OUT"; else echo "nothing to report."; fi
exit 0
