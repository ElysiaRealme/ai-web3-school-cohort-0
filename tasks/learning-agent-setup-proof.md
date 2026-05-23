# Learning Agent Setup Proof

Date: 2026-05-23

## Purpose

This repo is the learner's AI x Web3 School proof-of-work workspace. The Learning Agent helps with:

- Reading course sources.
- Planning Week 1 tasks.
- Maintaining daily notes.
- Producing public-safe proof links.
- Drafting WCB check-ins.
- Keeping Handbook feedback candidates.

The agent does not replace the learner's understanding or manual confirmation.

## Workspace

Local path:

```text
D:\WORKSPACE\AIxWeb3School\Note\ai-web3-school-cohort-0
```

Public GitHub repo:

```text
https://github.com/ElysiaRealme/ai-web3-school-cohort-0
```

Core folders:

- `daily/`: daily learning notes and check-in drafts.
- `tasks/`: task plans, route architecture, source extraction notes, and proof docs.
- `experiments/`: concept cards, demos, quizzes, and small artifacts.
- `handbook-feedback/`: Handbook issues, suggestions, and source-backed feedback.
- `submissions/`: WCB submission drafts and proof packs.
- `hackathon/`: hackathon ideas and project seeds.
- `templates/`: reusable note templates.

## Source Reading Flow

The agent uses these sources:

- Handbook: https://aiweb3.school/zh/handbook/
- Startup prompt: https://aiweb3.school/learning-agent.zh.txt
- WCB Learning: https://web3career.build/zh/programs/AI-Web3-School#tab=learning
- WCB Agent API docs: https://web3career.build/llms.txt
- Week 1 Notion source: https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f

Notion source handling:

- First try direct URL and `www.notion.so` variants.
- If the lightweight page shell is incomplete, use local browser access with Playwright.
- Record extracted structure in `tasks/week1-notion-source.md`.

WCB source handling:

- Use read-only API calls for task and event status.
- Keep the secret only in local `.env` / environment variables.
- Do not commit API keys.
- For write operations, show the exact payload first and wait for explicit learner confirmation.

## Daily Workflow

1. Read WCB status and schedule.
2. Read the relevant Handbook / Notion section.
3. Decide the next 00X module.
4. Ask the learner only for the minimum learning judgment needed.
5. Generate or update `daily/YYYY-MM-DD.md`.
6. Update route state in `tasks/week1-00x-learning-route.md`.
7. Run status and sensitive-info checks.
8. Commit and push relevant learning files.
9. Return GitHub proof links.

## Auto Commit / Push Rule

The learner has authorized automatic GitHub publication for future learning workflow changes.

Default behavior:

- After learning notes, route files, task notes, feedback drafts, or submission drafts are updated, automatically commit and push.
- Stage only files touched for the current learning step.
- Do not stage unrelated untracked files.
- Do not commit `.env`, API keys, private keys, seed phrases, screenshots containing secrets, or private personal data.
- Use concise commit messages such as:
  - `docs: add week1 learning agent setup proof`
  - `docs: add week1 concept cards`
  - `docs: add week1 proof pack`

## Safety Boundary

Allowed agent actions:

- Read public course pages and local notes.
- Call WCB read-only procedures.
- Generate learning plans, notes, check-in drafts, and proof packs.
- Prepare GitHub commits and push public-safe proof.

Human-gated actions:

- WCB write submissions.
- Public posts outside the GitHub repo.
- Wallet signatures.
- Token approvals.
- Transfers.
- Contract deployments or writes.

Forbidden agent actions:

- Reading, storing, printing, or committing private keys or seed phrases.
- Automatically signing, approving, transferring, or writing to contracts.
- Committing secrets from `.env`.

## Proof Materials

Current public proof links:

- Repo: https://github.com/ElysiaRealme/ai-web3-school-cohort-0
- Route architecture: https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/tasks/week1-00x-learning-route.md
- Notion source extraction log: https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/tasks/week1-notion-source.md
- 006 daily note: https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/daily/2026-05-23.md

## WCB Check-in Draft

我完成了 Learning Agent Setup 的整理：当前学习仓库已经作为 AI x Web3 School 的 proof-of-work workspace 使用，包含 daily notes、task route、source extraction、Handbook feedback、submission drafts 和 hackathon ideas 等目录。

本次重点整理了 Agent 的工作边界：可以读取课程资料、WCB 只读状态、生成学习笔记、维护 GitHub proof；但 WCB 写入、钱包签名、授权、转账、合约写入都必须由我人工确认。后续学习产出会自动形成 GitHub commit 和 public proof link。
