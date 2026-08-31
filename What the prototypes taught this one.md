# What the prototypes taught this one

Two proto-MacGuffins came before this release. Neither is published. The first was built from sixteen simulated sessions and refined against seventeen defects found in two blind runs. It was then run on a person, and the verdict was: **too random, too complex, too dense, too little interactive.**

Nothing in the simulations predicted that. Thirteen agents playing participants told us where rules failed to fire. None of them could tell us the thing was unpleasant to use.

---

## The four complaints, and what each one changed

### Too dense → the terminal is no longer where the writing lives

The prototype printed everything at you: extractions, proposals, checklists, counters, verdicts. The single rule that replaces all of it:

> **The terminal is for turns. Files are for text.**

A turn is one question or five lines. Drafts are written to `story/TREATMENT.md` and announced in one line. Nothing long is ever printed.

### Too little interactive → your edit is the instruction

This follows from the same rule and is the real repair. You open the file, rewrite a paragraph by hand, and say `ok`. The apparatus diffs the file and treats your change as the strongest signal in the session — above anything either of you typed.

The prototype's interaction was answering questions. This one's is editing.

### Too random → the deck is gone, and the wiki replaces it

The 33 cards, the external draw and the six derailments are cut.

The complaint on file from testing was the opposite of the expected one — that the draw was not random *enough*, since three of nine bindings were curated selections passed off as draws. Both are the same defect. A mechanism that neither reliably surprises nor reliably connects is not an engine.

Provocation is now **derived**. `lint.sh` counts links and frontmatter and reports what the counts imply: two characters sharing three themes who have never met, a thread never paid off, a theme that came from the writer rather than from the folder. Fixture-tested; all checks fire.

**This keeps the one property that made the draw work.** The prototype's hardest finding was that a check scored by the process being checked passes every time, and that the draw never failed because a separate process did the checking. `lint.sh` is that separate process. Where there is no shell, the model does the same counts by hand — counting backlinks is a far more reliable act than judging prose.

### Too complex → 13,341 words to 3,959

| | earliest prototype | second prototype | this release |
|---|---|---|---|
| runtime words | 13,920 | 13,341 | **3,959** |
| always-loaded files | 2 | 0 | 1 (`AGENTS.md`) |
| steps | 11 | 8 in fixed order | 7 as a menu |

The second prototype's own open problem was named and not solved: *"fewer rules rather than better-placed ones."* Rules that became `lint` checks stopped being prose. Rules that existed to protect against a card deck died with it.

---

## The promise narrowed, on purpose

The prototypes offered "an idea for something" — a poem, an opera, a holiday, a brand. This release promises **a treatment**, in one of five forms, and nothing else.

Narrowing is what makes the wiki possible. Characters, relations, threads and themes are only a schema if you know you are writing a story. It is also what makes the goal legible in the first minute, which the prototypes never were.

## Two things that are new rather than repaired

**`wiki/abandoned.md`.** Nothing in the prototypes records what was tried and dropped. In a session that is a nicety; across a novel it is the difference between a tool and a nuisance, because a model that does not know what you killed will offer it back to you warmly in three weeks.

**The errand became a break.** It survives as the best-performing move across all prior testing, and it gains a second job: when the counters show talk without pages, the apparatus sends you outside, or suggests you stop for the day. It reports the count and never a diagnosis, and after a break errand nothing has to come back with you.

## What survived unchanged

*"Which of these are wrong?"* — plural. Traceability of every real-world name. Retraction, so that what you remove is gone from every version including the old ones. And the errand.

Four rules out of the prototypes' several hundred.

## What is still open

- **Nobody has run this release**, including its author. Every number above except the word counts is about the prototypes.
- **Convergence is unaddressed and is now more likely, not less.** Nine folders run through a prototype produced nine ideas in one voice. A fixed seven-section treatment template is a stronger house style than anything the prototypes had. The voices are the only defence, and they are untested.
- **The stall counters are guesses.** Six turns, three redrafts, ninety minutes — none of these numbers came from data. The first real session should be used to correct them.
