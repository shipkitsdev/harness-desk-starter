#!/usr/bin/env bash
# ShipKits Harness Desk Starter — thin install (one skill, idempotent, no network, no secrets).
set -euo pipefail

log() { printf '%s\n' "$*"; }
changed=0

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PACK_ROOT="$SCRIPT_DIR"
SRC="$PACK_ROOT/skills/done-artifact/SKILL.md"
TARGET_ROOT="${HARNESS_DESK_STARTER_TARGET:-$PWD}"

log "Harness Desk Starter install"
log "  pack:   $PACK_ROOT"
log "  target: $TARGET_ROOT"
log "  note:   one skill only; no network, no secrets; Redis not required"

if [[ ! -f "$SRC" ]]; then
  log "error: missing $SRC"
  exit 1
fi

mkdir -p "$TARGET_ROOT/.cursor/skills/done-artifact" "$TARGET_ROOT/.claude/skills/done-artifact"

for dest in \
  "$TARGET_ROOT/.cursor/skills/done-artifact/SKILL.md" \
  "$TARGET_ROOT/.claude/skills/done-artifact/SKILL.md"
do
  if [[ ! -f "$dest" ]] || ! cmp -s "$SRC" "$dest"; then
    cp "$SRC" "$dest"
    log "updated: ${dest#"$TARGET_ROOT"/}"
    changed=1
  else
    log "unchanged: ${dest#"$TARGET_ROOT"/}"
  fi
done

log "tip (Grok Bot): keep this pack on disk; load seats/day-desk.md and skills/done-artifact/SKILL.md by path"

if [[ "$changed" -eq 0 ]]; then
  log "Done. Nothing changed (already installed)."
else
  log "Done. See messages above for paths updated."
fi

log "Next: read SAMPLE-RUN.md (~30 min) or seats/day-desk.md"
