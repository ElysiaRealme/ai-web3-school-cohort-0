# Week 2 00X 学习路线

日期：2026-05-27

路线来源：

- WCB Week 2 课程说明
- WCB Week 2 任务状态
- 官方 Learning Agent Prompt：https://aiweb3.school/learning-agent.zh.txt
- 本地学习执行规则：`tasks/learning-route-execution-rules.md`
- Week 1 已完成 proof 和实操结果

执行规则：

- 严格按本文件逐节推进。
- 用户说“继续 / 下一节”时，进入下一节。
- 不跳节，不一次讲多节，不擅自重排。
- 如果用户说某节已学过或要求跳过，以用户声明为准。
- 每节完成后写中文笔记，并自动 commit / push。
- WCB 提交只生成 proof 草稿和链接，不自动提交，除非用户明确确认。

## Week 2 主线选择

推荐主线：

> Wallet / Permission / Safe Execution：受限 Web3 助手的权限策略与安全执行。

核心项目雏形：

> 一个受限 Web3 助手，帮助用户检查链上动作草稿、交易字段、合约交互和 proof 材料；默认只读和生成草稿，高风险动作必须人工确认。

这个主线会覆盖 Week 2 的大部分主任务：

- 方向研究
- Wallet / Permission
- Security / Privacy
- Agent Identity
- Payment / Commerce 的最小流程
- Governance / Coordination 的协作边界
- 方向深挖包与项目初步 Proposal

## 201｜Week 2 问题地图与主方向选择

对应 WCB：

- Week 2｜方向研究｜AI x Web3 问题地图与主方向选择

目标：

- 建立 AI x Web3 问题地图。
- 至少覆盖 5 个方向。
- 每个方向写清 AI 作用和 Web3 机制。
- 选择 1 个主方向，并说明为什么不是纯 AI 或纯 Web3。

本节输出：

- `tasks/week2-201-problem-map.md`
- Mermaid 问题地图
- 主方向选择说明
- 2-3 个未选择方向 backlog

检查点：

- 能说清每个方向的真实用户。
- 能说清 AI 到底负责理解、生成、规划、工具调用、监控、总结还是协作。
- 能说清 Web3 到底提供支付、身份、权限、开放状态、可验证记录、结算还是治理协作。

## 202｜主方向问题拆解

对应 WCB：

- Week 2 总交付中的“问题拆解”

目标：

- 围绕主方向拆出参与方、流程、AI 作用、Web3 机制、自动化边界、人工确认点、验证方式和主要风险。

本节输出：

- `tasks/week2-202-main-direction-breakdown.md`

建议主方向：

- 受限 Web3 助手的权限策略与安全执行。

检查点：

- 谁发起任务？
- 谁执行任务？
- 谁付款或承担成本？
- 谁验收结果？
- 谁承担失败风险？
- 哪些步骤可以自动化？
- 哪些步骤必须人工确认？

## 203｜Wallet / Permission：Agent 链上动作权限策略

对应 WCB：

- Week 2｜Wallet / Permission｜Agent 链上动作权限策略

目标：

- 为一个 Agent wallet / Web3 assistant 场景设计权限策略。
- 明确预算、合约范围、函数范围、网络范围、时间窗口、人工确认阈值、撤销方式和日志记录。

本节输出：

- `tasks/week2-203-wallet-permission-policy.md`

需要覆盖：

- 低风险动作：读取链上状态、查询交易、解码 calldata、生成 proof。
- 中风险动作：生成交易草稿、模拟交易、检查合约交互。
- 高风险动作：签名、授权、转账、部署、升级、治理投票。
- 停止条件：网络不明确、合约不明、value 异常、授权额度异常、敏感信息出现、用户要求自动签名。

## 204｜Security / Privacy：Agent Workflow Threat Model

对应 WCB：

- Week 2｜Security / Privacy｜Agent Workflow Threat Model 与确认策略

目标：

- 为主方向写 threat model。
- 明确资产、权限、数据、工具调用、外部依赖、失败后果和确认策略。

本节输出：

- `tasks/week2-204-threat-model.md`

需要覆盖：

- 资产清单：私钥、API key、session token、预算、交易权限、用户数据、proof 链接。
- 攻击入口：prompt injection、恶意网页、伪造工具返回、钓鱼链接、模型幻觉、供应商故障。
- 控制手段：最小权限、只读优先、人工确认、allowlist、预算上限、日志、模拟执行、异常告警。

## 205｜Agent Identity：Agent Profile 与能力声明草图

对应 WCB：

- Week 2｜Agent Identity｜Agent Profile 与能力声明草图

目标：

- 为主方向的助手写 agent profile。
- 说明它是谁、能做什么、不能做什么、如何被调用、如何收费或计量、如何验证结果、失败如何处理。

本节输出：

- `tasks/week2-205-agent-profile.md`

需要覆盖：

- Identity：助手名称、维护者、适用场景。
- Capability：读取、解释、检查、生成 proof、生成交易草稿。
- Boundary：不持有私钥、不自动签名、不自动授权、不自动转账。
- Verification：区块浏览器、交易 hash、状态回读、日志、用户确认记录。

## 206｜Payment / Commerce：最小支付与商业流程拆解

对应 WCB：

- Week 2｜Payment / Commerce｜最小支付与商业流程拆解

目标：

- 不先做复杂 x402 工程实现，先拆一个最小 commerce flow。
- 说明报价、预算、执行、交付、验收、付款、失败处理和记录证明。

本节输出：

- `tasks/week2-206-payment-commerce-flow.md`

建议场景：

- 用户购买一个“交易 proof 审查 / 合约交互检查”服务。
- Agent 负责检查材料和生成报告。
- 用户或平台确认后付款。
- Web3 提供收据、结算、可验证记录或权限约束。

## 207｜Governance / Coordination：治理协作流程草图

对应 WCB：

- Week 2｜Governance / Coordination｜治理协作流程草图

目标：

- 选择一个 DAO / 学习社区 / 共学营流程。
- 拆出 AI 可以辅助的步骤，以及必须由人或治理流程确认的步骤。

本节输出：

- `tasks/week2-207-governance-coordination-flow.md`

建议场景：

- 共学营任务推进与 proof review。
- AI 负责总结、整理 action items、检查 proof 完整性。
- 人类 TA / 社区负责最终判断、评分和争议处理。

## 208｜x402 Paywall + CAW 自主支付闭环评估

对应 WCB：

- Week 2｜进阶实践｜x402 Paywall + CAW Agent 自主支付闭环

定位：

- 进阶任务，不作为 Week 2 主线阻塞项。
- 先做设计评估和最小 mock；除非后续时间充足，再进入真实工程实现。

本节输出：

- `tasks/week2-208-x402-caw-evaluation.md`

最小可交付：

- 画出 x402 paywall + CAW / policy / budget 的闭环流程。
- 标出 agent 自动识别付款条件、预算限制、用户授权、付款、结果获取、审计记录。
- 明确哪些地方只是设计，哪些地方已经可实操。

## 209｜方向深挖包与项目初步 Proposal

对应 WCB：

- Week 2｜总交付｜方向深挖包与项目初步 Proposal

目标：

- 把 201-208 的材料收束成一个可提交的 Week 2 总包。

本节输出：

- `submissions/week2-direction-deep-dive-pack.md`
- `submissions/week2-project-proposal.md`

必须包含：

- 主方向说明。
- 至少 1 张流程图。
- 1 个典型场景。
- 1 个反例。
- 1 组关键风险。
- 1 个最小验证计划。
- 目标用户。
- 真实场景。
- 最小功能。
- 验证方式。
- 主要风险。
- 可能赛道。
- Week 3 下一步。
- 至少 5 条参考资料清单。

## 210｜Week 2 Proof-of-Work Pack

对应 WCB：

- Week 2 相关主线任务 proof 汇总

目标：

- 汇总所有 Week 2 可提交链接。
- 生成 WCB 提交用 proof 文案。
- 生成一份总索引，方便逐项提交。

本节输出：

- `submissions/week2-proof-of-work-pack.md`

需要包含：

- GitHub 文件链接。
- 每个 WCB 任务对应哪个 proof。
- 哪些任务已提交。
- 哪些任务仍需手动提交。
- 哪些活动 proof 需要补截图或回放笔记。

## 活动任务支线

活动任务不打断 201-210 主线，但需要按时间补 proof：

| 支线 | 建议处理 |
| --- | --- |
| 5.25 Long-term Memory | 已实时参加并提交；回放任务可选，除非需要补笔记 |
| 5.26 Cobo Agentic Wallet | 已实时参加并提交；内容可作为 Wallet / Permission 参考 |
| 5.27 Privacy | 建议补回放笔记，服务于 204 Threat Model |
| 5.28 Z.AI | 建议补回放笔记，服务于 Agent capability / model choice |
| 5.29 Women Builders | 建议补回放或实时 proof，服务于行业观察 |
| 5.29 Week 2 例会 | 建议参加实时；如果上麦，单独完成 5 分分享 proof |
| Co-learning 5.27 / 5.28 | 如果有参加截图或记录，再整理 proof；没有则不作为主线阻塞 |

## 当前下一节

下一节是：

> 201｜Week 2 问题地图与主方向选择

进入本节时，先教学“如何判断一个方向是不是 AI x Web3 真交叉问题”，再让学员自己完成问题地图草稿。
