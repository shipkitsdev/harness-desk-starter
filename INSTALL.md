# Install map (thin)

One skill only: **done-artifact**. No full Operator Pack install. No Redis. No network. No secrets.

Copy from this pack’s `skills/done-artifact/SKILL.md`.

## Cursor

```bash
mkdir -p .cursor/skills/done-artifact
cp /path/to/harness-desk-starter/skills/done-artifact/SKILL.md .cursor/skills/done-artifact/SKILL.md
```

Or run the optional thin script from your project root:

```bash
bash /path/to/harness-desk-starter/install.sh
```

## Claude Code

```bash
mkdir -p .claude/skills/done-artifact
cp /path/to/harness-desk-starter/skills/done-artifact/SKILL.md .claude/skills/done-artifact/SKILL.md
```

`install.sh` also mirrors into `.claude/skills/` when run.

## Grok Bot

Keep this pack on disk. Load `seats/day-desk.md` and `skills/done-artifact/SKILL.md` by path. No separate skill registry required for day-1 — point the agent at the files.

## After install

1. Skim `gates/gate-card.md` (default **$0**).
2. Load `seats/day-desk.md`.
3. Run [SAMPLE-RUN.md](SAMPLE-RUN.md) (~30 min).
