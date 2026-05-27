# Week 2 WCB 状态快照

日期：2026-05-27

查询方式：只读调用 WCB Agent API。未执行任何 WCB 写入操作。

## Prompt Review 结论

### WCB 官方 Learning Agent Prompt

来源：https://aiweb3.school/learning-agent.zh.txt

保留为平台级边界：

- Learning Agent 的目标是帮助理解课程、规划任务、维护学习仓库、生成打卡草稿、提醒同步到 WCB / 打卡平台。
- repo 是公开 proof-of-work workspace，不只是私人笔记。
- 每日流程需要读取 WCB Learning 和 Handbook，生成 daily note、打卡草稿和提交链接。
- Handbook feedback 需要沉淀到 `handbook-feedback/`。
- WCB API key 只能放在本地环境变量或 secrets 中，不能进入 prompt、README、聊天记录或公开 repo。
- 所有 WCB 写入型操作必须先展示内容并取得确认。

### 本地学习助手 Prompt / 规则

本地主要参考：

- `tasks/learning-route-execution-rules.md`
- `prompts/learning-agent-workflow-handoff-2026-05-22.md`
- `prompt-tutorial.txt`

本地规则保留为教学执行边界：

- 严格按目录逐节教学，不跳课、不重排、不一次讲多节。
- 用户说“继续 / 下一节”时，进入当前目录的下一节。
- 默认高细节教学模式，但仍只讲当前小节。
- 练习题不给完整答案；用户提交后再检查、纠错、记录。
- 已反复考过的 Agent / 人工确认边界不再重复出题，只在新风险场景中简短提醒。
- 学习笔记默认中文。
- 学习仓库变更自动 commit 和 push，但 WCB 写入仍需用户确认。

需要修正的点：

- `prompts/learning-agent-workflow-handoff-2026-05-22.md` 的进度已经过期，仍停留在 Week 1 早期模块。
- Week 2 后应以 `tasks/week2-00x-learning-route.md` 和 WCB API 状态为准。

## Week 2 总览

WCB 课程主题：

> Week 2｜共学营：AI x Web3 交叉研究与方向选择

本周核心不是继续堆工具，而是建立 AI x Web3 问题空间地图，并为 Week 3 / Hackathon 前的项目方向收敛准备 proposal。

WCB Week 2 总交付要求：

- 一张 AI x Web3 问题地图，至少覆盖 5 个方向，并标出 AI 作用与 Web3 机制。
- 一份方向选择说明，选择 1 个主方向，解释为什么它不是纯 AI 或纯 Web3 问题。
- 一份问题拆解，包含参与方、流程、AI 作用、Web3 机制、自动化边界、人工确认点、验证方式和主要风险。
- 一份项目初步 proposal，包含目标用户、真实场景、最小功能、验证方式、主要风险、可能赛道和 Week 3 下一步。
- 一份参考资料清单，至少 5 条，并说明每条资料帮助判断什么。
- 主方向深挖包，至少包含 1 张流程图、1 个典型场景、1 个反例、1 组关键风险和 1 个最小验证计划。
- 方向 backlog，记录未选择的 2-3 个方向和暂不选择原因。

## WCB 任务状态

当前 Week 2 任务数：24

状态统计：

- `SUBMITTED`：3
- `NOT_STARTED`：21

已提交：

- Week 2｜线上活动｜实时参加 5.25 Co-learning｜Co-learning
- Week 2｜线上活动｜实时参加 5.25｜Long-term Memory for AI Agents：如何让 Agent 拥有持续上下文与长期一致性
- Week 2｜线上活动｜实时参加 5.26｜Product manager of Cobo Agentic Wallet

未开始的主线任务：

| 任务 | 分值 | 状态 |
| --- | ---: | --- |
| Week 2｜方向研究｜AI x Web3 问题地图与主方向选择 | 20 | NOT_STARTED |
| Week 2｜Payment / Commerce｜最小支付与商业流程拆解 | 20 | NOT_STARTED |
| Week 2｜进阶实践｜x402 Paywall + CAW Agent 自主支付闭环 | 40 | NOT_STARTED |
| Week 2｜Agent Identity｜Agent Profile 与能力声明草图 | 20 | NOT_STARTED |
| Week 2｜Wallet / Permission｜Agent 链上动作权限策略 | 20 | NOT_STARTED |
| Week 2｜Security / Privacy｜Agent Workflow Threat Model 与确认策略 | 20 | NOT_STARTED |
| Week 2｜Governance / Coordination｜治理协作流程草图 | 20 | NOT_STARTED |
| Week 2｜总交付｜方向深挖包与项目初步 Proposal | 40 | NOT_STARTED |
| Week 2｜例会分享｜5.29 上麦分享学习感受或信息观察 | 5 | NOT_STARTED |

未开始的活动 / 回放任务：

| 任务 | 分值 | Replay |
| --- | ---: | --- |
| 观看回放 5.25｜Long-term Memory for AI Agents | 10 | https://x.com/i/broadcasts/1mGPaLvzdLmJN |
| 观看回放 5.26｜Product manager of Cobo Agentic Wallet | 10 | https://x.com/i/broadcasts/1OxwbldEmagJB |
| 实时参加 / 观看回放 5.27｜Neo-Cypherpunk & Privacy | 20 / 10 | https://x.com/i/broadcasts/1qxoNelyPPEJv |
| 实时参加 / 观看回放 5.28｜Z.AI 1st | 20 / 15 | https://x.com/i/broadcasts/1MKgNgmgEMjxL |
| 实时参加 / 观看回放 5.29｜Women Builders in AI x Web3 | 20 / 10 | https://x.com/i/broadcasts/1mxPaLvzjOgKN |
| 实时参加 / 观看回放 5.29｜Week 2 例会 | 20 / 10 | https://x.com/i/broadcasts/1dGYljZYLlZKX |
| 实时参加 5.27 Co-learning | 20 | 无 |
| 实时参加 5.28 Co-learning | 20 | 无 |

## 规划判断

优先级不是把所有活动任务平均做完，而是先完成 Week 2 的主交付闭环。

推荐主方向：

> Wallet / Permission / Safe Execution：受限 Web3 助手的权限策略与安全执行。

理由：

- Week 1 已完成测试网交易、最小合约、交易 proof 检查器和受限 Web3 助手 workflow。
- 该方向能自然回答 AI 的作用：理解目标、生成草稿、解码交易、检查风险、生成 proof。
- 也能自然回答 Web3 的作用：钱包权限、链上交易、合约状态、区块浏览器验证、可审计记录。
- 风险边界清晰：签名、授权、转账、部署、治理投票等动作必须人工确认。
- 可以承接 Week 3 / Hackathon：做一个受限链上动作审查 / proof / policy assistant。

备选方向 backlog：

- Payment / Commerce：适合作为第二优先级，后续可接 x402 / CAW，但工程量更大。
- Identity / Capability：适合补 Agent Profile 和能力声明，但单独做项目容易停留在描述层。
- Governance / Coordination：适合做流程草图和总结工具，但与 Week 1 已完成的链上实操承接较弱。

## 下一步

从 `tasks/week2-00x-learning-route.md` 的 `201｜Week 2 问题地图与主方向选择` 开始。

本节输出应先做问题地图，不直接写最终 proposal。
