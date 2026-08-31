# 3 · Why they can't have it

*The obstacle. Without this there is no story, only a description.*

## The one question

> **What stops them?**

Then test the answer mechanically, before you write anything down:

```
Could the character solve this with one honest conversation?
  yes -> it is not an obstacle. Ask again.

Is the obstacle a person who simply refuses?
  yes -> then that person wants something too. Go back to move 2
         and give them a page. An obstacle with no want is a wall.

Would removing the MacGuffin from the story change the obstacle?
  no  -> the obstacle belongs to a different story. Say so.
```

The strongest obstacle is usually one where **both people are right.** Look for that before you accept a villain.

## Relations

When two characters are in each other's way, make `wiki/relations/<a>--<b>.md`:

```markdown
---
type: relation
name: marit--joost
status: sketch
---

## What they want from each other
## What neither will say
## Who is right
```

**`## Who is right` may say `both`.** It often should.

Back-link the relation from both character pages under `## Appears in`. The links are what `lint` reads later, so a relation nobody linked does not exist.

## Threads

A thread is a promise the story makes. `wiki/threads/<slug>.md`, with `## Set up`, `## Paid off`, and **`## Who is in it`** — links to the characters. Threads and relations are what link *to* a character page; without them every character is an orphan and `lint` cannot tell a new one from an abandoned one. **Leave `## Paid off` empty when it is.** An unpaid thread is not an error you should quietly fill — it is a thing `lint` needs to find.

## Then

Write §4 · Why they can't have it. Mark `[sketch]`.

You now have four of seven sections sketched and a wiki with people in it. This is the point to run `moves/5-lint.md` for the first time.
