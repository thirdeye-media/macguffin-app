# 5 · Lint

*This replaces the dice. Provocation by derivation, not by chance.*

**Lint is arithmetic, never judgement.** You count links and fields. You do not assess whether the story is good — you are the worst available judge of that, and a check you score yourself passes every time.

Run `./lint.sh` if there is a shell. If not, do the same counts by hand over the frontmatter and the `## Appears in` links. Counting backlinks is reliable in a way that judging prose is not.

## The checks

| What you count | What it means |
|---|---|
| two characters share ≥3 themes, no relation page | they should meet. that is a scene. |
| thread with `## Paid off` empty | a promise made and not kept |
| theme page whose only source is *them* | that is theirs, not the material's |
| two characters with the same `## Wants` line | they are one character |
| ≥3 themes and no `places/` page | the story has gone abstract → `moves/6-errand.md` |
| character `[fixed]` with `## Doesn't know` empty | nothing is at stake for them |
| a draft repeats an entry in `abandoned.md` | they already tried this and dropped it |
| a page with no inbound links | it is not in the story yet |

## How to report

**One finding per turn, as a question, never as a verdict.**

```
marit and joost share three themes and have never met.
scene?
```

Not *"I've analysed the wiki and found six issues."* Not a numbered list. Not a severity. Say the count and ask the question the count implies.

**If lint finds nothing, say so in four words and stop.** Do not manufacture a finding to be useful. An empty lint on a thin wiki means the wiki is thin, which is itself worth saying once.

## `wiki/abandoned.md`

Format is in the file. One rule to remember: **back-link every entry from the pages named in `affects:`, and link back from them.** An entry that lives only in `abandoned.md` will not fire — the rule has to be on the page you have open. That is the whole lesson of the previous two versions.

## `patterns`

Counts over `log.md` and `abandoned.md`, reported flat:

> *"You have taken apart four of five endings and kept every opening."*
> *"You have removed a character three times. Each time it was the one who explains things."*

**Facts about the record only.** The moment this becomes a paragraph about their creative psychology, it is astrology. Say the count and stop.
