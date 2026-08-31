# START HERE

**A writing tool that prompts you and gives you feedback, instead of writing for you.**

You bring some material. It asks you questions, keeps a wiki of everything you decide, argues with you in several voices, and writes drafts to files you open and change by hand. What comes out is **a treatment** — for a short story, a film, a TV series, a novel, or a theatre play.

One short session, or a novel built over months. The same folder does both.

---

## What you need

**Up to seven things**, in `/macguffin/`. Fewer is fine.

Images, texts, sounds, short video. Anything digital. They do not have to be related — unrelated is usually better.

**Think about the filenames before you drop them in.** `IMG_2847.HEIC` and `nana's kitchen.jpg` are different pieces of evidence, and the apparatus reads both. Dates, cameras, what has been renamed, what has been cropped — all of it is material.

Seven is a ceiling, not a target. Three good things beat seven thin ones.

---

## The three windows

You will move between these constantly. Have all three open.

```
   ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
   │   AGENT     │    │   FOLDER    │    │  MD EDITOR  │
   │             │ →  │             │ →  │             │
   │ terminal ·  │    │ see what    │    │ read it ·   │
   │ Claude Code │    │ appeared    │    │ change it   │
   │ Msty ·      │ ←  │             │ ←  │             │
   │ OpenCode    │    │             │    │             │
   └─────────────┘    └─────────────┘    └─────────────┘
      short turns        the state         the real work
```

**The terminal stays short on purpose.** Nothing long is ever printed at you. The writing appears as files, you edit them directly, and your edit is the instruction. That is the whole interface.

---

## How to run it

1. Put up to seven things in `/macguffin/`.
2. Open this folder in Claude Code, Msty, OpenCode, a terminal agent — whatever you use.
3. Say **`run`**.
4. Within two minutes there is a file to read. Read it. Change it. Say `ok`.
5. Repeat.

**Run it from a local folder, not a synced one.** Google Drive and Dropbox will overwrite a file mid-session. Copy the folder to your machine first.

---

## Things people do not discover on their own

**Edit the files by hand.** This is the main way you work. Rewrite a paragraph in `TREATMENT.md`, then say `ok`. Your version wins.

**Say `wrong`.** It is confident and often incorrect. Telling it so is the fastest way to a better draft.

**Switch voices.** `voice producer`. `voice editor`. Each one keeps its own opinions about your story, and they disagree with each other. `new voice: my mother` makes another.

**Say `drop`.** *"drop the flashback structure — it kills the surprise."* It goes in `wiki/abandoned.md` with your reason, and it will not be proposed at you again in three weeks.

**Take the errand.** Sometimes it will tell you to go outside for twenty minutes. It is counting — talk without pages, the same section rewritten three times. Go. Nothing has to come back with you.

**Say `close` when you stop.** It writes the session down so the next one starts cheap.

---

## The folder

| | |
|---|---|
| `/macguffin/` | Your material. Never modified. |
| `/story/` | The treatment. Drafts, and every version kept. |
| `/wiki/` | Characters, threads, themes, and what you abandoned. |
| `/voices/` | Who is talking, and what they think. |
| `/sessions/` | One file per session. |
| `/moves/` | The runtime. |
| `AGENTS.md` | The rules. Read it if you want to change how it behaves. |

---

*A MacGuffin is the thing everybody chases and nobody needs to understand. Your folder is one. So is the object at the centre of the story you are about to write. The first thing this apparatus does is turn the first into the second.*
