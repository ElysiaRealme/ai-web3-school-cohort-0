# Week 1｜AI 向任务｜整理 AI 基础概念卡片

WCB 任务 ID：`cmp3jyq4x07s6n301xzm2cmds`

WCB 读取状态：`NOT_STARTED`

分数：10

## 任务要求摘要

WCB 要求：

- 至少整理 6 个 AI 基础概念。
- 每个概念包含自己的解释。
- 至少包含若干例子、误区或使用边界说明。
- 如果使用 AI 辅助，需要说明如何复核或改写。
- 不提交 API Key、token、`.env` 文件或其他敏感信息。

## 我的完成说明

我整理了 9 个 AI 基础概念：

- LLM
- Prompt
- Context
- RAG
- Workflow
- Agent
- Tool Use / Tool Calling
- AI Coding
- Evaluation

我使用 Learning Agent 辅助生成第一版结构，但经过了人工复核和修正。重点修正包括：

- Agent 不是“执行 Workflow 的 tool”，而是能根据目标、中间状态和工具返回结果动态决定下一步动作的执行主体。
- RAG 不能保证正确，因为检索链路和生成链路都可能出错。
- AI x Web3 的 Evaluation 不只看脚本是否能运行，还要检查来源、权限影响、人工确认和最终链上状态。

完整公开笔记：

- https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/experiments/ai-concept-cards.md

学习与复核记录：

- https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/daily/2026-05-24.md

## 概念卡片摘要

### 1. LLM

一句话解释：

- LLM 是基于上下文进行 token 预测和生成的大语言模型，适合解释、总结、生成文本和代码，但不是事实数据库。

例子：

- 用 LLM 解释一笔交易、总结一份合约 ABI、生成学习笔记草稿。

误区 / 边界：

- 不能把 LLM 的自信回答直接当成事实。
- 涉及链上状态时，最终必须回到区块浏览器或原始数据验证。

### 2. Prompt

一句话解释：

- Prompt 是当前任务指令，用来告诉模型目标、约束、输入材料和输出格式。

例子：

- “请解释这笔交易的 from、to、value、gas、status，并指出风险。”

误区 / 边界：

- 只写“帮我做”是不够的。涉及 Web3 时，Prompt 必须写清楚 AI 只能解释或生成草稿，不能替用户确认签名、授权、转账或合约写入。

### 3. Context

一句话解释：

- Context 是模型当前可见的工作材料，包括系统指令、用户输入、历史对话、文件内容、网页摘录和工具返回结果。

例子：

- Learning Agent 可以读取 Handbook、WCB 任务状态、GitHub 笔记和公开链接作为 context。

误区 / 边界：

- 不应把 API key、私钥、助记词、未公开会议链接放进 context。

### 4. RAG

一句话解释：

- RAG 是检索增强生成：先从外部资料检索相关内容，再把检索结果放入 context 辅助生成答案。

例子：

- 从 Handbook、Notion、GitHub repo 或区块浏览器资料中检索相关内容，再生成学习总结。

误区 / 边界：

- RAG 不能保证答案一定正确。知识库可能错误，资料可能过期，也可能检索不到正确片段，或被模型误读。

### 5. Workflow

一句话解释：

- Workflow 是人预设的固定或半固定流程，适合重复执行的任务。

例子：

- 每日学习流程：读取 WCB 状态 -> 读取课程材料 -> 生成学习问题 -> 学员回答 -> 写入笔记 -> GitHub commit / push。

误区 / 边界：

- 不要把所有自动化都叫 Agent。如果流程和顺序由人写死，它更接近 Workflow。

### 6. Agent

一句话解释：

- Agent 是能根据目标、中间状态和工具返回结果，动态决定下一步动作并调用工具的执行主体。

例子：

- Learning Agent 可以读取 WCB、Notion、Handbook 和本地 repo，判断下一步该学什么，并整理 proof。

误区 / 边界：

- Agent 越接近资产、权限和公开提交，越需要人工门控。
- Agent 不能替用户签名、授权、转账或写入合约。

### 7. Tool Use / Tool Calling

一句话解释：

- Tool Use 是模型通过结构化方式调用外部工具来读取信息或执行动作。

例子：

- 调用 WCB 只读 API、读取本地 Markdown、使用浏览器读取 Notion、执行 Git 状态检查。

误区 / 边界：

- 工具调用结果也需要审计。不能只看模型总结，还要看它调用了什么、参数是什么、结果是否可信。

### 8. AI Coding

一句话解释：

- AI Coding 是用 AI 辅助阅读代码、生成代码、修改文件、运行测试和解释报错。

例子：

- 用 Agent 生成合约交互脚本、整理 README、生成概念卡片、维护学习仓库。

误区 / 边界：

- 生成代码不等于可靠代码。涉及合约、交易和钱包时，必须检查网络、合约地址、函数名、参数、金额和权限影响。

### 9. Evaluation

一句话解释：

- Evaluation 是评估 AI 输出是否满足目标、是否可靠、是否可复现、是否越界的过程。

例子：

- 检查 AI 生成的合约脚本是否调用正确网络和函数，是否经过测试，是否需要人工确认。

误区 / 边界：

- AI x Web3 的 Evaluation 不只看答案是否像样，还要检查来源链接、工具调用结果、GitHub commit、WCB 状态、交易 hash、区块浏览器状态和人工确认记录。

## AI 辅助与人工复核说明

本笔记由 Learning Agent 辅助整理结构，并由我通过检查题进行了人工复核。复核中重点修正了 Agent、Workflow、RAG 和 Evaluation 的边界，确保内容不是直接复制 AI 输出，而是结合我当前 AI x Web3 学习流程进行改写和确认。

## 可提交 proof

建议提交链接：

```text
https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/submissions/week1-ai-concept-cards-wcb.md
```
