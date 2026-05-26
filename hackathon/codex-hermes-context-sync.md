# Codex x Hermes Context Sync

Version: 2026-05-22

## Research Question

能否把 Hermes Agent 的学习循环、自动迭代和 skill 生成能力，与 Codex 的本地工程实现、验证和 Hackathon 项目交付能力结合起来，形成一个可持续的 AI x Web3 School 学习和项目推进系统？

结论：可行，但第一阶段不应该尝试同步两个 Agent 的完整内部记忆或聊天历史。更稳妥的方案是建立一个 repo-first 的上下文同步层：把任务状态、学习摘要、决策、风险边界、skill 草案、验证证据和提交草稿沉淀成结构化文件，由 Hermes 和 Codex 分别读取、更新和审查。

## Source Notes

- AI x Web3 School Handbook 明确推荐用 Hermes Agent / Claude Code / Codex 辅助学习，并把 Handbook 定位为模型能力、Agent 工作流、工具调用、钱包、签名、支付、身份、权限、安全执行、治理协作和可验证记录的共同语言入口。
- WCB / AI x Web3 School 路径强调 Bootcamp + Hackathon + Handbook + Showcase，目标是从问题定义走到可展示、可验证、可持续的项目。
- Codex 官方文档把 customization 拆成 `AGENTS.md`、memories、skills、MCP、subagents；这些层次适合把项目规则、可复用流程、外部工具和子任务委派分开管理。
- Hermes Agent 文档强调 learning loop：observe -> distill -> reuse -> refine，并能把多步任务经验沉淀成 `SKILL.md`，保存在 `~/.hermes/skills/`。
- 相关研究支持“从轨迹中抽象技能”的方向，例如 SkillWeaver 把网站交互经验蒸馏成可复用 skill/API。但最新安全研究也指出 `SKILL.md` 这类自然语言技能包会带来语义供应链风险，因此自动生成 skill 必须有人审查和测试门禁。

## Feasibility

### High Feasibility: File-Based Context Handoff

适合立即做。

用 repo 内文件作为共享上下文源，避免依赖两个 Agent 的私有记忆格式。Hermes 负责学习陪跑、每日任务拆解、复盘和 skill 草案；Codex 负责代码实现、测试、重构、提交前检查和 Hackathon demo 工程化。

建议同步对象：

- 当前学习状态：今天学到哪一节、下一节是什么。
- 当前任务状态：WCB 任务、proof 草稿、是否已提交。
- Hackathon 方向：问题、用户、AI 组件、Web3 组件、权限风险、验证材料。
- 决策记录：为什么选这个架构，放弃了什么。
- skill 草案：Hermes 总结的流程，等待人工审查后再迁移给 Codex 或 repo skill。
- 验证证据：命令、测试结果、截图清单、交易 hash / explorer link。

不建议同步对象：

- 完整聊天记录。
- API key、WCB secret、钱包私钥、助记词、验证码、未公开会议链接。
- 未经审查的第三方 skill。
- Agent 自动生成但没有测试过的高权限脚本。

### Medium Feasibility: Skill Bridge

可做，但需要转换和审查。

Hermes 的 skill 目录通常是 `~/.hermes/skills/`；Codex 的 repo skill 更适合放在 `.agents/skills/`。两者都以 `SKILL.md` 为核心，但 frontmatter、工具假设、命令路径和权限模型可能不同。

建议把 Hermes 自动生成的 skill 先放入 repo 的候选区，例如：

```text
experiments/agent-memory-sync/skill-candidates/
```

再由 Codex 做三件事：

1. 去除不适合 Codex 的工具假设。
2. 增加验证步骤、禁用秘密读取、标注 human-in-the-loop。
3. 人工确认后再复制到 `.agents/skills/` 或 Codex 用户级 skills。

### Medium Feasibility: Direct API / MCP Sync

可以作为第二阶段。

Codex app-server 暴露 thread、turn、skills、MCP、filesystem 等 API，理论上可以把 Hermes 产出的上下文包注入 Codex 线程，或让 Codex 读取共享资源。更通用的做法是实现一个本地 MCP server，把“学习状态、任务状态、skill 候选、验证证据”作为 resources/tools 暴露给两个 Agent。

但这一步不是 MVP 必需项。直接同步线程上下文会增加隐私、漂移和误注入风险。

### Low Feasibility: Raw Memory Database Sync

不建议做。

直接读写 Hermes 或 Codex 的私有 memory/session 存储，容易遇到格式变化、权限边界不清、脏数据污染、误触发技能选择和泄密问题。对 Hackathon 目标而言，收益不如 repo-first 文件同步。

## Proposed Architecture

```text
Hermes Agent
  -> learning coach, task planner, reflection loop, skill draft generator
  -> writes public-safe summaries and skill candidates

Shared Repo Context Layer
  -> current-state.md
  -> handoff/hermes-to-codex.md
  -> handoff/codex-to-hermes.md
  -> decisions.md
  -> skill-candidates/
  -> verification-log.md

Codex
  -> implementation, tests, refactor, docs, packaging, GitHub PR/submission prep
  -> updates implementation status and verification evidence

Human
  -> approves WCB submissions, GitHub push, wallet signing, transactions, secret use
```

核心原则：同步的是“可审计工件”，不是“隐式脑内记忆”。

## MVP Scope

第一版目标不是做复杂平台，而是把当前学习 repo 变成双 Agent 可协作的上下文系统。

### MVP Deliverables

1. `experiments/agent-memory-sync/current-state.md`
   - 当前学习进度、今日目标、Hackathon 当前方向、阻塞点。

2. `experiments/agent-memory-sync/handoff-template.md`
   - Hermes 给 Codex、Codex 给 Hermes 都使用同一套交接模板。

3. `experiments/agent-memory-sync/decisions.md`
   - 记录重要架构决定和原因。

4. `experiments/agent-memory-sync/verification-log.md`
   - 记录每次 Codex 执行过的命令、测试、结果、剩余风险。

5. `experiments/agent-memory-sync/skill-candidates/README.md`
   - 规定 Hermes 自动生成 skill 的接收、审查、改写和启用流程。

6. 一条 workflow：
   - Hermes 完成学习陪跑和复盘。
   - Hermes 输出 handoff。
   - Codex 读取 handoff，做工程实现或文档整理。
   - Codex 写回 verification-log 和 next-handoff。
   - 人工确认后再提交 WCB / GitHub / 钱包相关动作。

## Implementation Goals

### Goal 1: Establish Shared Context Contract

时间：0.5 天。

产出：

- 建立 `experiments/agent-memory-sync/`。
- 定义 `current-state.md`、`handoff-template.md`、`decisions.md`、`verification-log.md`。
- 在模板里固定隐私边界：不得写入 API key、助记词、私钥、验证码、未公开链接。

验收标准：

- Hermes 和 Codex 都能只读这些文件后理解当前学习状态、下一步任务和安全边界。

### Goal 2: Run One Manual Sync Loop

时间：0.5-1 天。

产出：

- 用 Hermes 完成一次学习复盘，例如 `004｜AI Agent 到 Web3 的最小安全工作流`。
- 让 Hermes 写出 `hermes-to-codex.md`。
- 用 Codex 基于 handoff 生成一份 Hackathon idea seed 或实验文档。
- Codex 写回 `codex-to-hermes.md` 和 `verification-log.md`。

验收标准：

- 同一任务不需要在两个 Agent 中重复解释背景。
- Codex 的输出能明确引用 Hermes 交接里的目标、边界和验证要求。

### Goal 3: Add Skill Candidate Pipeline

时间：1 天。

产出：

- 规定 Hermes skill 候选的格式。
- 建立 review checklist：触发条件是否清楚、是否含敏感读取、是否含危险命令、是否有验证步骤、是否需要 human-in-the-loop。
- 选一个低风险流程做 skill，例如“AI x Web3 School daily note to proof draft”。

验收标准：

- skill 候选不能直接进入 Codex 可用 skill 区。
- 每个 skill 启用前都有审查记录和至少一次 dry-run。

### Goal 4: Tie Into Hackathon Build Loop

时间：1-2 天。

产出：

- 从学习笔记里收敛一个 Hackathon 方向。
- 用 shared context 维护 problem、user、AI component、Web3 component、risk、verification。
- Codex 搭一个最小 demo 或项目骨架。
- Hermes 负责从学习角度复盘 demo 是否贴合 Handbook 和 WCB 输出要求。

验收标准：

- demo 有 README、运行方式、验证材料。
- Web3 风险点都有人类确认节点。
- proof-of-work 可以公开提交。

### Goal 5: Optional MCP / API Upgrade

时间：2-4 天，非第一阶段必需。

产出：

- 本地 MCP server 暴露 shared context resources。
- 两个 Agent 通过标准工具读取任务状态、写入 handoff、登记验证证据。

验收标准：

- 文件仍然是 source of truth。
- MCP 只做读写入口，不隐藏状态。
- 所有写操作保留日志。

## Risk Controls

### Context Pollution

问题：Hermes 自动总结可能把错误理解写进长期上下文。

控制：

- 长期上下文只允许写结论、证据、决策，不写未经验证的推测。
- 重要条目必须包含 source / date / owner / status。

### Skill Supply Chain Risk

问题：skill 的描述和触发条件会影响 Agent 选择和执行流程。

控制：

- 不自动安装第三方 skill。
- 自动生成 skill 先进入 candidate 区。
- Codex 审查后再启用。
- 高风险操作必须明确禁止或要求人工确认。

### Secret Leakage

问题：学习 repo 可能公开，Agent 可能误写敏感信息。

控制：

- shared context 只保存 public-safe 信息。
- `.env`、API key、钱包材料、会议密码不进入上下文。
- 提交前运行敏感词和 secret 扫描。

### False Completion

问题：Agent 说“已完成”，但没有真实验证。

控制：

- verification-log 必须区分 draft、implemented、tested、submitted。
- 链上相关任务必须有 network、transaction hash、explorer link、status。
- WCB / GitHub / 钱包操作必须人工确认。

## Best Hackathon Angle

这个方案本身也可以成为 Hackathon 项目方向：面向 AI x Web3 builders 的 Agent Context Sync Kit。

项目一句话：

为多 Agent 学习和开发流程提供一个可审计的上下文同步层，把学习记录、任务交接、skill 候选、验证证据和 Web3 安全边界统一沉淀到公开安全的 proof-of-work 仓库中。

最小 demo：

- 一个学习 repo。
- 一个 shared context 目录。
- 一个 Hermes handoff 示例。
- 一个 Codex implementation + verification 示例。
- 一个 skill candidate review 示例。
- 一个公开安全的 WCB proof draft。

为什么适合 AI x Web3：

- 它处理 Agent Workflow、Context、MCP、Evaluation、Dev Tooling。
- 它把 human-in-the-loop、可验证记录、权限边界作为产品核心。
- 它不需要第一版直接碰真实资产，风险可控。

## Sources

- AI x Web3 School Handbook: https://aiweb3.school/zh/handbook/
- Web3 Career Build AI x Web3 School overview: https://web3career.build/en
- Codex customization docs: https://developers.openai.com/codex/concepts/customization
- Codex app-server API overview: https://developers.openai.com/codex/app-server#api-overview
- Hermes Agent learning loop: https://hermes-agent.ai/features/learning-loop
- Hermes Agent skills guide: https://hermes-agent.nousresearch.com/docs/guides/work-with-skills/
- SkillWeaver paper: https://arxiv.org/abs/2504.07079
- SKILL.md semantic supply-chain risk paper: https://arxiv.org/abs/2605.11418
