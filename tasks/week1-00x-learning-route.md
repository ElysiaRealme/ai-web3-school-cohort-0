# Week 1 00X 学习路线

更新日期：2026-05-23

## 来源

- 学员提供的 Notion URL：https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f
- Notion 本地读取尝试：
  - 直接轻量 HTTP 访问 `ethpanda.notion.site` URL 只能拿到网页壳，不足以用于规划。
  - `www.notion.so` URL 变体返回了页面 payload。
  - Notion `loadPageChunk` / 浏览器网络请求返回了页面数据。
  - Playwright 浏览器访问成功，并确认页面标题为：`Week 1｜共学营：AI 与 Web3 基础知识`。
- 本路线基于本地浏览器抽取到的 Notion 正文、WCB 任务状态和 Handbook 上下文。
- WCB 课程只读快照。
- 学员提供的 WCB Week 1 任务列表。
- Handbook：https://aiweb3.school/zh/handbook/
- WCB Learning：https://web3career.build/zh/programs/AI-Web3-School#tab=learning

## 路线原则

Week 1 分为两条线：

1. **主线 00X 学习路线**：概念学习、实践任务、实验、Proof Pack 和 Hackathon 准备。
2. **WCB 操作路线**：活动参与、截图、回放笔记和 WCB 任务提交。

WCB proof 很重要，但不应占用主线课程编号，除非该模块本身的学习目标就是 proof 打包。

## 覆盖范围

本路线明确覆盖以下 Week 1 WCB 任务：

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

## 主线 00X 路线

### 001｜账户、地址、私钥、助记词：Web3 身份的最小模型

状态：已完成。

产出：

- 地址 / 私钥 / 助记词 / 钱包笔记。
- Agent 钱包私钥边界说明。

Proof：

- `daily/2026-05-18.md`
- Commit `2bf6799`

### 002｜签名、授权、交易：不要把“签一下”理解成普通登录

状态：已完成。

产出：

- Signature / Approval / Transaction 对比。
- 人工确认边界。

Proof：

- `daily/2026-05-20.md`
- Commit `39f4f91`

### 003｜Gas、网络、测试网、区块浏览器：链上执行如何被验证

状态：已完成。

产出：

- Gas / Network / Testnet / Explorer 笔记。
- 链上验证 workflow。

Proof：

- `daily/2026-05-21.md`
- Commit `444ed4f`

### 004｜AI Agent 到 Web3 的最小安全工作流

状态：已通过综合复盘完成。

产出：

- 综合安全 workflow。
- `AI 生成 -> 人工复核 -> 钱包确认 -> 链上执行 -> 区块浏览器验证`。

Proof：

- `daily/2026-05-22.md`
- Commit `44a4a7e`

### 005｜LLM、Prompt、Context：AI 工具实践的最小认知模型

状态：已跳过，视为已有基础。

原因：

- 学员是 AI Based，已将 LLM / Prompt / Context 视为基础常识。
- 主线学习时间不再消耗在该基础小节上。

WCB 任务覆盖：

- AI 向任务：整理 AI 基础概念卡片

目标：

- 理解 LLM 擅长什么、不擅长什么。
- 理解 Prompt 是任务指令。
- 理解 Context 是模型当前可见的工作材料。
- 能解释为什么 AI 生成的事实、链接、代码和 Web3 操作都必须验证。

产出：

- AI 概念笔记：LLM / Prompt / Context。
- AI 生成链接、事实、代码和 WCB proof 的验证清单。
- AI 概念卡片初稿。

### 006｜Workflow、Agent、Tool Use：从回答问题到执行流程

状态：已完成。

WCB 任务覆盖：

- AI 向任务：整理 AI 基础概念卡片
- AI Agent 入门：Hermes 从 0 到 1

目标：

- 区分 Prompt、Workflow 和 Agent。
- 理解 Tool Calling、状态、记忆、Tracing、Guardrails、Handoff 和错误恢复。
- 说明什么时候不应该使用 Agent。

产出：

- Prompt / Workflow / Agent 对比表。
- Agent 执行风险清单。

Proof：

- `daily/2026-05-23.md`

### 007｜Learning Agent Setup：学习代理与 GitHub 工作区

状态：已完成。

WCB 任务覆盖：

- AI 向任务：完成 Learning Agent Setup

目标：

- 记录 Learning Agent 设置方式。
- 说明 Codex / Hermes / Claude Code 如何用于学习 workflow。
- 连接 WCB 任务读取、Handbook 阅读、每日笔记、GitHub commit 和 proof 链接。

产出：

- Learning Agent setup 笔记。
- Repo 链接。
- Agent 协助学习日志。
- Commit / README proof。

Proof：

- `tasks/learning-agent-setup-proof.md`
- `wcb-agent-flow.md`
- `daily/2026-05-23.md`

### 008｜AI 基础概念卡片：从概念到可复习材料

状态：Agent 已生成学习草稿，待学员学习和确认。

WCB 任务覆盖：

- AI 向任务：整理 AI 基础概念卡片

目标：

- 将 AI 基础整理成简明概念卡片。
- 覆盖 LLM、Prompt、Context、RAG、Agent、Workflow、Tool Use、AI Coding、Evaluation。

产出：

- `experiments/ai-concept-cards.md` 或等价文件。
- 每张卡片包含：定义、为什么重要、常见误区、一个 AI x Web3 连接点。

草稿材料：

- `experiments/ai-concept-cards.md`
- `daily/2026-05-23.md`

### 009｜Web3 基础概念卡片：账户到合约执行链

状态：Agent 已生成学习草稿，待学员学习和确认。

WCB 任务覆盖：

- Web3 向任务：整理 Web3 基础概念卡片

目标：

- 将 Web3 基础整理成简明概念卡片。
- 覆盖 Account、Wallet、Address、Private Key、Seed Phrase、Signature、Approval、Transaction、Gas、Network、Testnet、Block Explorer、Smart Contract。

产出：

- `experiments/web3-concept-cards.md` 或等价文件。

草稿材料：

- `experiments/web3-concept-cards.md`
- `daily/2026-05-23.md`

### 010｜智能合约：链上规则如何被部署、读取和写入

状态：待进行。必须在 008/009 学员确认后再推进。

WCB 任务覆盖：

- Web3 向任务：部署或调用一个最小智能合约

目标：

- 理解智能合约是公开链上规则和状态。
- 区分只读 call 和写入 transaction。
- 理解合约写入为什么需要钱包确认和 Gas。

产出：

- 最小智能合约概念笔记。
- Remix / Hardhat / Foundry 实践计划。

### 011｜测试网实践：完成一笔测试网交易

状态：待进行。

WCB 任务覆盖：

- Web3 向任务：完成一笔测试网交易

目标：

- 使用安全测试钱包。
- 切换到测试网。
- 如有需要，领取测试币。
- 发送一笔测试交易。
- 记录交易哈希、状态、Gas、区块高度和区块浏览器链接。

产出：

- 测试网交易实践笔记。
- 不包含助记词或私钥的公开安全 proof。

### 012｜最小合约交互：一次读取、一次写入、一次验证

状态：待进行。

WCB 任务覆盖：

- Web3 向任务：部署或调用一个最小智能合约

目标：

- 部署或调用一个最小合约。
- 完成一次读取和一次写入。
- 记录合约地址、交易哈希和区块浏览器链接。

产出：

- 合约交互笔记。
- 读 / 写结果和验证材料。

### 013｜EOA、智能账户、多签：权限模型对比

状态：待进行。

WCB 任务覆盖：

- Web3 向进阶：比较 EOA、智能账户、多签的权限差异

目标：

- 比较 EOA、智能账户、多签、Safe、ERC-4337、Session Key 和权限限额。
- 说明账户抽象为什么对 AI x Web3 重要。

产出：

- 权限模型对比表。
- Agent Wallet 设计启发。

### 014｜AI x Web3 最小交叉流程图

状态：待进行。

WCB 任务覆盖：

- AI x Web3 综合任务：画出 AI x Web3 最小交叉流程图

目标：

- 绘制或描述 `AI 输出 -> 人工复核 -> 钱包确认 -> 链上执行 -> 区块浏览器验证`。
- 标出日志、失败点、回滚策略和人工确认节点。

产出：

- 流程图或 Mermaid 图。
- 风险边界说明。

### 015｜受限 Web3 助手或小 workflow 设计

状态：待进行。

WCB 任务覆盖：

- 综合进阶：设计一个受限 Web3 助手或小 workflow

目标：

- 设计一个只能解释、准备或验证 Web3 操作的受限助手。
- 明确它不能自动做什么。

产出：

- 小型 workflow 规格说明。
- 允许动作 / 禁止动作 / 人工确认点。

### 016｜AI 可交互学习产物：页面、CLI、流程图、Quiz 或概念卡片

状态：待进行。

WCB 任务覆盖：

- AI 向任务：完成 AI 可交互学习产物

目标：

- 选择一个 Week 1 概念并构建可交互学习产物。
- 说明哪些内容由 AI 生成、哪些由学员人工修改、哪些输出不可靠、下一步如何改进。

产出：

- `experiments/` 或 `demos/` 下的学习产物。
- README 或 daily note 记录过程。

### 017｜行业信息流关注清单

状态：待进行。

WCB 任务覆盖：

- 前置准备：建立 AI x Web3 行业信息流关注清单

目标：

- 建立 AI x Web3 / Ethereum / Crypto AI 关注清单。
- 包含人物、项目、研究组织、newsletter、X 账号、repo 和社区。

产出：

- `tasks/industry-follow-list.md` 或等价文件。

### 018｜拆解 1-2 个 AI x Web3 项目或个人

状态：待进行。

WCB 任务覆盖：

- 行业观察进阶：拆解 1-2 个 AI x Web3 项目或个人

目标：

- 从关注清单中选择 1-2 个项目或个人。
- 总结定位、用户、技术栈、代表观点和可能的 AI x Web3 结合点。

产出：

- `tasks/industry-observation.md` 或等价文件。

### 019｜Week 1 Proof-of-Work Pack

状态：待进行。

WCB 任务覆盖：

- AI x Web3 综合任务：提交 Week 1 Proof-of-Work Pack

目标：

- 将 Week 1 proof 打包成可提交记录。
- 包含 repo 链接、commit 链接、daily notes、任务 proof、截图或公开链接、测试网 proof、合约 proof 和 Learning Agent 笔记。

产出：

- `submissions/week1-proof-of-work-pack.md`

### 020｜发布 AI x Web3 学习总结

状态：待进行。

WCB 任务覆盖：

- 发布 AI x Web3 学习总结

目标：

- 发布一份简短 Week 1 学习总结。
- 包含学到什么、构建了什么、仍然不清楚什么、下周方向。

产出：

- `submissions/week1-learning-summary.md`
- 可选公开帖子草稿。

### 021｜Hackathon Idea Seed：把 Week 1 知识收束成项目方向

状态：待进行。

WCB 任务覆盖：

- Hackathon 准备。

目标：

- 产出至少一个 Hackathon idea。
- 包含问题、目标用户、AI 组件、Web3 组件、权限风险、人工确认点、验证材料和最小 demo。

产出：

- `hackathon/` 下的一个 idea seed。

## WCB 操作路线

这些不是主线课程模块，而是每日 proof 任务。

### O-001｜实时活动 proof

适用场景：有 live 活动任务时使用。

产出：

- 手动上传到 WCB 的截图。
- 一个关键收获、问题或下一步行动。

### O-002｜回放任务 proof

适用场景：错过 live 任务，或需要额外笔记时使用。

产出：

- 回放截图或公开回放链接。
- 至少三条有效笔记。

### O-003｜学习仓库 proof

适用场景：WCB 要求课程 repo proof 时使用。

产出：

- Repo 链接。
- Commit 链接。
- README 截图或 commit history。
- Learning Agent 配置说明。
- Agent 协助学习日志。

## Week 1 活动 / 任务快照

WCB 快照中已通过或已提交的 live 任务：

- 5.18 Co-learning：已通过。
- 5.18 AI 时代的 Web3 架构能力：已通过。
- 5.19 AI Agent 入门：Hermes 从 0 到 1：已通过。
- 5.20 Web3 运行原理：已通过。
- 5.20 Co-learning：已通过。
- 5.21 AI 下乡计划：AI 在 Web3 的应用：已通过。
- 5.22 Week 1 例会：已通过。
- 5.22 上麦分享学习感受或信息观察：已通过。
- 5.23 Open Agentic Economy：已提交。

对应 live 任务已通过时，回放任务通常是可选补充，除非学员想补充额外笔记。

## 下一步

继续推进：

```text
008｜AI 基础概念卡片：从概念到可复习材料
```
