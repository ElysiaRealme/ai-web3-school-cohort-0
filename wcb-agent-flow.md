# WCB Agent Flow

Source docs: https://web3career.build/llms.txt

## API Boundary

- Base URL: `https://web3career.build`
- Primary endpoint: `POST /api/agent/call`
- Catalog endpoint: `GET /api/agent/catalog`
- Secret variable name: `WCB_AGENT_SECRET_API_KEY`

Do not commit the real secret key. Keep it in a local environment variable, a local `.env.local` ignored by git, or the agent's secret storage.

## Useful Learner Procedures

- `users.getProfile`: read current profile.
- `users.getMyPermissions`: read current permissions.
- `tasks.listForLearner`: read learner tasks.
- `tasks.myTaskHistory`: read task history.
- `tasks.submitEvidence`: submit task proof after learner confirmation.
- `events.listForLearner`: read learner meetings.
- `events.getCalendarPublic`: read public calendar.

## Write Safety Rule

Before any write operation such as `tasks.submitEvidence`, show the exact content to be submitted and wait for learner confirmation.

## Daily Use

1. Read WCB Learning page or API task list.
2. Convert the current task into minimum / recommended / challenge paths.
3. Draft the daily note and check-in.
4. Learner manually submits on WCB or confirms API write.
5. Record the final submission status or link in `daily/YYYY-MM-DD.md`.
6. For learning-note changes, automatically commit and push the relevant public-safe files after status and sensitive-info checks.

## GitHub Proof Rule

The learner authorized automatic commit and push for future learning workflow updates on 2026-05-23.

- Stage only files relevant to the current learning step.
- Leave unrelated untracked files untouched.
- Never commit `.env`, API keys, private keys, seed phrases, screenshots containing secrets, or private personal data.
- Return the commit hash and GitHub proof links after pushing.

## 2026-05-18 Read-only Check

- `program.getById` with slug `AI-Web3-School` succeeded.
- Program ID: `cmnx791nl008sru0167pzp4ki`.
- Program status: running.
- Program dates: 2026-05-18 to 2026-06-14.
- Current key permissions: `USER`; no admin permissions.
- `events.listForLearner` returned 2026-05-18 learner events.
- `tasks.listForLearner` requires a concrete `trackId`; for event-related tasks, `tasks.listForLearnerByIds` worked with task IDs from learner events.
