---
name: done-artifact
description: Require Harness Desk Starter jobs to finish with a file path, PR URL, or public URL. Reject chat-only completion claims.
---

# Done = artifact

## When to use

At the end of every Day Desk task, sample run, or close-out.

## Acceptable done artifacts

- **File path** in the workspace/repo (preferred on day-1), e.g. `artifacts/starter/day-desk-note.md`
- **PR URL** that introduces the change
- **Public URL** only after a publish gate pass

## Reject

- “I thought about it”
- “Draft is ready” with no path
- Plans, outlines, or bullet lists that never landed on disk
- Screenshots of chat as the only deliverable
- “Almost finished” without a locator

## Checklist

1. Write or update the artifact.
2. Verify it exists (read the file, or open the PR/URL).
3. State the artifact locator in one line at the end of your reply.
4. If verification fails, you are not done — fix or write a blocker note under `artifacts/starter/`.

## Multi-harness

Works the same in Cursor, Claude Code, and Grok Bot. Only the write tool differs; the definition of done does not.
