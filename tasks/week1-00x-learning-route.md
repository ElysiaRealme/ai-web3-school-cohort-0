# Week 1 00X Learning Route

Updated: 2026-05-23

## Sources

- User-provided Notion URL: https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f
- Notion local read attempts:
  - Direct lightweight HTTP against the `ethpanda.notion.site` URL returned a shell page and was not enough.
  - `www.notion.so` URL variants returned the page payload.
  - Notion `loadPageChunk` / browser network calls returned page data.
  - Playwright browser access succeeded and confirmed the page title: `Week 1｜共学营：AI 与 Web3 基础知识`.
- This route is based on the Notion page text extracted through local browser access, plus WCB task status and Handbook context.
- WCB program read-only snapshot.
- WCB Week 1 task list provided by the learner.
- Handbook: https://aiweb3.school/zh/handbook/
- WCB Learning: https://web3career.build/zh/programs/AI-Web3-School#tab=learning

## Route Policy

Week 1 has two tracks:

1. **Main 00X learning route**: concept learning, practice tasks, experiments, proof pack, and Hackathon preparation.
2. **WCB operations route**: event attendance, screenshots, replay notes, and WCB task submission.

WCB proof is required, but it should not occupy a main course number unless the learning objective is specifically about proof packaging.

## Coverage Map

The route below explicitly covers these Week 1 WCB tasks:

- AI 向任务：整理 AI 基础概念卡片
- AI 向任务：完成 Learning Agent Setup
- AI 向任务：完成 AI 可交互学习产物
- Web3 向任务：整理 Web3 基础概念卡片
- Web3 向任务：完成一笔测试网交易
- Web3 向任务：部署或调用一个最小智能合约
- Web3 向进阶：比较 EOA、智能账户、多签的权限差异
- AI x Web3 综合任务：画出 AI x Web3 最小交叉流程图
- AI x Web3 综合任务：提交 Week 1 Proof-of-Work Pack
- 综合进阶：设计一个受限 Web3 助手或小 workflow
- 发布 AI x Web3 学习总结
- 行业观察进阶：拆解 1-2 个 AI x Web3 项目或个人
- 前置准备：建立 AI x Web3 行业信息流关注清单

## Main 00X Route

### 001｜账户、地址、私钥、助记词：Web3 身份的最小模型

Status: completed.

Output:

- Address / private key / seed phrase / wallet note.
- Agent wallet private key boundary.

Proof:

- `daily/2026-05-18.md`
- Commit `2bf6799`

### 002｜签名、授权、交易：不要把“签一下”理解成普通登录

Status: completed.

Output:

- Signature / approval / transaction comparison.
- Human confirmation boundary.

Proof:

- `daily/2026-05-20.md`
- Commit `39f4f91`

### 003｜Gas、网络、测试网、区块浏览器：链上执行如何被验证

Status: completed.

Output:

- Gas / network / testnet / explorer note.
- On-chain verification workflow.

Proof:

- `daily/2026-05-21.md`
- Commit `444ed4f`

### 004｜AI Agent 到 Web3 的最小安全工作流

Status: completed by consolidation.

Output:

- Consolidated security workflow.
- `AI generation -> human review -> wallet confirmation -> on-chain execution -> explorer verification`.

Proof:

- `daily/2026-05-22.md`
- Commit `44a4a7e`

### 005｜LLM、Prompt、Context：AI 工具实践的最小认知模型

Status: skipped / accepted as prior knowledge.

Reason:

- Learner is AI based and already treats LLM / prompt / context as basic knowledge.
- Do not spend main learning time on this section.

WCB task coverage:

- AI 向任务：整理 AI 基础概念卡片

Goal:

- Understand what LLMs are good at and where they fail.
- Understand prompt as task instruction.
- Understand context as the model's visible working material.
- Explain why AI-generated facts, links, code, and Web3 actions must be verified.

Output:

- AI concept note: LLM / Prompt / Context.
- Verification checklist for AI-generated links, facts, code, and WCB proof.
- First draft for AI concept cards.

### 006｜Workflow、Agent、Tool Use：从回答问题到执行流程

Status: completed.

WCB task coverage:

- AI 向任务：整理 AI 基础概念卡片
- AI Agent 入门：Hermes 从 0 到 1

Goal:

- Distinguish prompt, workflow, and agent.
- Understand tool calling, state, memory, tracing, guardrails, handoff, and error recovery at a beginner level.
- Explain when not to use an agent.

Output:

- Prompt / Workflow / Agent comparison table.
- Agent execution risk checklist.

Proof:

- `daily/2026-05-23.md`

### 007｜Learning Agent Setup：学习代理与 GitHub 工作区

Status: completed.

WCB task coverage:

- AI 向任务：完成 Learning Agent Setup

Goal:

- Document the Learning Agent setup.
- Explain how Codex / Hermes / Claude Code is used in the learning workflow.
- Connect WCB task reading, Handbook reading, daily notes, GitHub commits, and proof links.

Output:

- Learning Agent setup note.
- Repo link.
- Agent-assisted learning log.
- Commit / README proof.

Proof:

- `tasks/learning-agent-setup-proof.md`
- `wcb-agent-flow.md`
- `daily/2026-05-23.md`

### 008｜AI 基础概念卡片：从概念到可复习材料

Status: next.

WCB task coverage:

- AI 向任务：整理 AI 基础概念卡片

Goal:

- Turn AI basics into concise cards.
- Cover LLM, Prompt, Context, RAG, Agent, Workflow, Tool Use, AI Coding, Evaluation.

Output:

- `experiments/ai-concept-cards.md` or equivalent.
- Each card should include definition, why it matters, common mistake, and one AI x Web3 connection.

### 009｜Web3 基础概念卡片：账户到合约执行链

Status: pending.

WCB task coverage:

- Web3 向任务：整理 Web3 基础概念卡片

Goal:

- Turn Web3 basics into concise cards.
- Cover account, wallet, address, private key, seed phrase, signature, approval, transaction, gas, network, testnet, block explorer, smart contract.

Output:

- `experiments/web3-concept-cards.md` or equivalent.

### 010｜智能合约：链上规则如何被部署、读取和写入

Status: pending.

WCB task coverage:

- Web3 向任务：部署或调用一个最小智能合约

Goal:

- Understand smart contract as public on-chain rule / state.
- Distinguish read call and write transaction.
- Understand why contract writes require wallet confirmation and gas.

Output:

- Minimal smart contract concept note.
- Remix / Hardhat / Foundry practice plan.

### 011｜测试网实践：完成一笔测试网交易

Status: pending.

WCB task coverage:

- Web3 向任务：完成一笔测试网交易

Goal:

- Use a safe test wallet.
- Switch to a testnet.
- Claim test token if needed.
- Send one test transaction.
- Record transaction hash, status, gas, block height, and explorer link.

Output:

- Testnet transaction practice note.
- Public-safe proof without seed phrase or private key.

### 012｜最小合约交互：一次读取、一次写入、一次验证

Status: pending.

WCB task coverage:

- Web3 向任务：部署或调用一个最小智能合约

Goal:

- Deploy or call a minimal contract.
- Complete one read and one write.
- Record contract address, transaction hash, and explorer link.

Output:

- Contract interaction note.
- Read / write result and verification material.

### 013｜EOA、智能账户、多签：权限模型对比

Status: pending.

WCB task coverage:

- Web3 向进阶：比较 EOA、智能账户、多签的权限差异

Goal:

- Compare EOA, smart account, multisig, Safe, ERC-4337, session key, and permission limits.
- Explain why account abstraction matters for AI x Web3.

Output:

- Permission model comparison table.
- Agent wallet design implications.

### 014｜AI x Web3 最小交叉流程图

Status: pending.

WCB task coverage:

- AI x Web3 综合任务：画出 AI x Web3 最小交叉流程图

Goal:

- Draw or describe `AI output -> human review -> wallet confirmation -> on-chain execution -> block explorer verification`.
- Mark logs, failure points, rollback strategy, and human confirmation nodes.

Output:

- Flowchart or Mermaid diagram.
- Risk boundary note.

### 015｜受限 Web3 助手或小 workflow 设计

Status: pending.

WCB task coverage:

- 综合进阶：设计一个受限 Web3 助手或小 workflow

Goal:

- Design a constrained assistant that can explain, prepare, or verify Web3 actions.
- Clearly state what it cannot do automatically.

Output:

- Small workflow spec.
- Allowed actions / forbidden actions / human confirmation points.

### 016｜AI 可交互学习产物：页面、CLI、流程图、Quiz 或概念卡片

Status: pending.

WCB task coverage:

- AI 向任务：完成 AI 可交互学习产物

Goal:

- Pick one Week 1 concept and build an interactive artifact.
- Explain what AI generated, what the learner changed manually, what was unreliable, and next improvement.

Output:

- Artifact under `experiments/` or `demos/`.
- README or daily note explaining the process.

### 017｜行业信息流关注清单

Status: pending.

WCB task coverage:

- 前置准备：建立 AI x Web3 行业信息流关注清单

Goal:

- Build a follow list for AI x Web3 / Ethereum / Crypto AI.
- Include people, projects, research groups, newsletters, X accounts, repos, and communities.

Output:

- `tasks/industry-follow-list.md` or equivalent.

### 018｜拆解 1-2 个 AI x Web3 项目或个人

Status: pending.

WCB task coverage:

- 行业观察进阶：拆解 1-2 个 AI x Web3 项目或个人

Goal:

- Pick 1-2 projects or people from the follow list.
- Summarize positioning, users, tech stack, representative views, and possible AI x Web3 intersections.

Output:

- `tasks/industry-observation.md` or equivalent.

### 019｜Week 1 Proof-of-Work Pack

Status: pending.

WCB task coverage:

- AI x Web3 综合任务：提交 Week 1 Proof-of-Work Pack

Goal:

- Package Week 1 proof into one submission-ready record.
- Include repo link, commit links, daily notes, task proof, screenshots or public links, testnet proof, contract proof, and learning agent notes.

Output:

- `submissions/week1-proof-of-work-pack.md`

### 020｜发布 AI x Web3 学习总结

Status: pending.

WCB task coverage:

- 发布 AI x Web3 学习总结

Goal:

- Publish a concise Week 1 learning summary.
- Include what was learned, what was built, what remains unclear, and next week direction.

Output:

- `submissions/week1-learning-summary.md`
- Optional public post draft.

### 021｜Hackathon Idea Seed：把 Week 1 知识收束成项目方向

Status: pending.

WCB task coverage:

- Hackathon preparation.

Goal:

- Produce at least one Hackathon idea.
- Include problem, target user, AI component, Web3 component, permission risk, human confirmation point, verification material, and smallest demo.

Output:

- One idea seed under `hackathon/`.

## WCB Operations Route

These are not main course modules. Handle them as daily proof tasks.

### O-001｜实时活动 proof

Use when a live event task is available.

Output:

- Screenshot uploaded manually to WCB.
- One key takeaway, question, or next action.

### O-002｜回放任务 proof

Use only when the live task was missed or when extra notes are useful.

Output:

- Replay screenshot or public replay link.
- At least three valid notes.

### O-003｜学习仓库 proof

Use when WCB asks for course repo proof.

Output:

- Repo link.
- Commit link.
- README screenshot or commit history.
- Learning agent configuration note.
- Agent-assisted learning log.

## Week 1 Event / Task Snapshot

Approved / submitted live tasks found in WCB snapshot:

- 5.18 Co-learning: approved.
- 5.18 AI 时代的 Web3 架构能力: approved.
- 5.19 AI Agent 入门：Hermes 从 0 到 1: approved.
- 5.20 Web3 运行原理: approved.
- 5.20 Co-learning: approved.
- 5.21 AI 下乡计划：AI 在 Web3 的应用: approved.
- 5.22 Week 1 例会: approved.
- 5.22 上麦分享学习感受或信息观察: approved.
- 5.23 Open Agentic Economy: submitted.

Replay tasks are generally optional when the corresponding live task is approved, unless the learner wants extra notes.

## Next Action

Proceed with:

```text
005｜LLM、Prompt、Context：AI 工具实践的最小认知模型
```
