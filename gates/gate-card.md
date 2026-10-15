# Gate card

Default for the sample run and first desk work: **$0**.

| Gate | Meaning | Agent behavior |
| --- | --- | --- |
| **$0** | Local files, read-only checks, no outbound publish, no money | Proceed. Default. |
| **Publish** | Public/shared URL, post, shipped page | Stop. Ask human to confirm. Do not publish. |
| **Send** | Email, chat DM, customer reply | Stop. Ask human. Draft as a local file first. |
| **Spend** | Paid APIs, purchases, ads, billable infra | **Never auto-spend.** Require explicit human approval. |

## When to stop asking questions

Stop clarifying and write the artifact when:

1. The done-when path is clear (file / PR / URL after publish gate).
2. Gate is known (default $0 if unset).
3. One more question would only polish tone, not unblock a missing fact.

If you are looping on preferences, lock a path under `artifacts/` and ship the file.

## Standing rules

1. Approving publish does not approve spend or send.
2. Record the gate in the done artifact (“gate: $0”).
3. Do not invent budget headroom or payment IDs.
