# Sample run (~30 minutes)

Before/after walkthrough for **Day Desk**. Ends in a real file artifact. Gate stays **$0**. No Redis. Works in Cursor, Claude Code, or Grok Bot.

## Before you start (5 min)

1. Open this pack on disk.
2. Follow [INSTALL.md](INSTALL.md) (or run `bash install.sh` from your project root).
3. Skim `gates/gate-card.md` and `skills/done-artifact/SKILL.md`.
4. Create a working folder: `mkdir -p artifacts/starter`

## Before — chatty almost-finish (what to avoid)

Typical failure mode (~10 min of talk, zero files):

- Agent asks five preference questions.
- Produces a polished outline in chat.
- Says “I can write the file whenever you’re ready.”
- No path exists on disk. **Not done.**

## After — gated run ending in artifact (do this)

### Minute 0–10 — Load Day Desk

Load `seats/day-desk.md`. Apply the gate card: **$0**.

**Do:** Write `artifacts/starter/day-desk-note.md` with:

- Goal: one short shipping note for this starter pack
- Gate: $0
- Done-when: `artifacts/starter/shipping-note.md`
- One never-list line you will honor

**Done check:** Open the note file. If it is only in chat, write the file.

### Minute 10–25 — Land the artifact

Still as Day Desk. Follow done-artifact.

**Do:** Write `artifacts/starter/shipping-note.md` covering:

1. What Harness Desk Starter is (1 seat, 1 skill, gate card)
2. Done = file / PR / URL
3. Day-1 needs no Redis
4. Bridge pointer: Day-1 Desk $12 / Operator Pack $47 (no Muse mix)

Keep voice warm and plain. Full sentences.

**Done check:** File exists on disk.

### Minute 25–30 — Checkpoint

1. Confirm gate is still $0.
2. Skim for never-claims (no prompt-dump product framing, no fake metrics, no OP/Muse contents claimed).
3. Add one “Completed:” line to `artifacts/starter/day-desk-note.md` with the shipping-note path.
4. Stop. Publish is a later day with a human publish gate.

## Success looks like

| Artifact | Path |
| --- | --- |
| Day Desk note | `artifacts/starter/day-desk-note.md` |
| Shipping note (primary done artifact) | `artifacts/starter/shipping-note.md` |

If you only have chat history, re-run Day Desk until the files are real.
