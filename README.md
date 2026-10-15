# Harness Desk Starter

A free starter desk for agent ops from ShipKits. It's the same files as the free download on [shipkits.dev/free](https://shipkits.dev/free):

- one named seat: `seats/day-desk.md` (Day Desk)
- one skill: `skills/done-artifact/SKILL.md` ("done" means a file, PR or URL, not chat-only)
- a gate card: `gates/gate-card.md` (when to stop and ask before you publish, send or spend)
- a ~30-minute sample run: `SAMPLE-RUN.md`

No network, no secrets, no Redis. `PACK-README.md` is the original pack readme.

## Install

### Claude Code

```bash
mkdir -p .claude/skills/done-artifact
cp path/to/harness-desk-starter/skills/done-artifact/SKILL.md .claude/skills/done-artifact/SKILL.md
```

### Cursor

```bash
mkdir -p .cursor/skills/done-artifact
cp path/to/harness-desk-starter/skills/done-artifact/SKILL.md .cursor/skills/done-artifact/SKILL.md
```

Or run `bash path/to/harness-desk-starter/install.sh` from your project root. It installs the skill for both Cursor and Claude Code and changes nothing if the skill is already installed.

### Codex

Codex reads `AGENTS.md`. Copy the skill into your repo and point to it from `AGENTS.md`:

```bash
mkdir -p .agents/skills/done-artifact
cp path/to/harness-desk-starter/skills/done-artifact/SKILL.md .agents/skills/done-artifact/SKILL.md
printf '\n## Skills\n- done-artifact: read .agents/skills/done-artifact/SKILL.md before calling a task done.\n' >> AGENTS.md
```

### After install

1. Skim `gates/gate-card.md` (the default budget is $0).
2. Load `seats/day-desk.md`.
3. Run `SAMPLE-RUN.md`.

## Next steps

- Free download: https://shipkits.dev/free
- Day-1 Desk: https://shipkits.dev/products/day-1-desk
- Operator Pack: https://shipkits.dev/products/operator-pack

## Support

support@shipkits.dev. Maintained by the ShipKits team.

## License

MIT. See [LICENSE](LICENSE).
