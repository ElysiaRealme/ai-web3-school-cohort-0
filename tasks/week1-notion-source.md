# Week 1 Notion 来源读取记录

日期：2026-05-23

来源：

- https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f

## 本地读取尝试

1. 直接 HTTP 访问 `ethpanda.notion.site` URL 时，只加载到轻量网页壳，不足以用于路线规划。
2. `www.notion.so` URL 变体返回了更完整的页面 payload。
3. Notion page chunk API 返回了结构化页面数据。
4. Playwright 浏览器访问成功：
   - 页面 URL：`https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f`
   - 页面标题：`Week 1｜共学营：AI 与 Web3 基础知识`
   - 抽取方式：浏览器直接加载页面后读取 `document.body.innerText`。

## 抽取到的页面结构

该页面围绕 Week 1 的 AI 与 Web3 基础展开。核心学习目标是：

- 建立 LLM、Prompt、Workflow、Agent、Tool Use、AI Coding、钱包、签名、交易、Gas、智能合约、测试网和区块浏览器的共同语言。
- 完成一次 AI 工具实践、一次测试网或合约交互，以及一个最小 AI x Web3 交叉实验。
- 建立权限、安全、人工确认、日志、proof 材料和失败恢复意识。

建议学习顺序：

1. 判断学员更偏 AI、更偏 Web3，还是两边都刚入门。
2. 优先补短板。
3. 完成一个 AI 实践和一个 Web3 实践。
4. 将 AI 输出、人工复核、钱包确认、链上执行和区块浏览器验证连接成一条 workflow。
5. 打包概念笔记和过程记录作为 proof。

## 模块

### 模块 A：AI 基础

覆盖内容：

- LLM 工作模型。
- Context window、系统指令、Prompt 和工具调用。
- LLM API 基础：model、messages、temperature、max tokens。
- Prompt、Workflow 与 Agent 的边界。
- AI Coding 工具及其限制。
- 验证风险：事实错误、错误或过期资料、推理漂移、越权执行、工具误用。
- Agent 组件：状态、记忆、MCP、skills、tool calling、tracing、guardrails、handoff、错误恢复。

实践：

- 搭建个人 Learning Agent。
- 创建 GitHub repo 作为学习工作区。
- 用 Agent 生成可交互学习产物。

### 模块 B：Web3 基础

覆盖内容：

- 账户、地址、钱包、私钥和助记词。
- 签名、授权、交易、Gas、L1/L2、测试网、区块浏览器和交易回执。
- 智能合约作为公开执行逻辑和公开状态。
- 账户抽象、智能账户、多签、Safe、ERC-4337、OpenZeppelin。
- AI-native account 的安全边界：不接触私钥或助记词，使用受限权限、session key 和人工确认。

实践：

- 创建测试钱包。
- 发送一笔测试网交易。
- 记录交易哈希、状态、Gas、区块高度和区块浏览器链接。
- 部署或调用一个最小智能合约。
- 比较 EOA、智能账户和多签。

### 模块 C：最小 AI x Web3 交叉实验

覆盖内容：

- AI 生成说明或脚本。
- 人工复核输出。
- 钱包确认保持手动。
- 链上执行通过区块浏览器记录验证。

实践：

- 用 AI 解释交易或 ABI，并进行人工验证。
- 画出“AI 生成 -> 人工复核 -> 钱包确认 -> 链上执行 -> 区块浏览器验证”流程。
- 打包 proof 和边界说明。

## 进阶 / 可选轨道

- Agent workflow 与 Ethereum 相关 skills。
- Web3 工程化与链上执行。
- AI 适配、LoRA / PEFT 与可控性。
- 区块链协议基础：共识、EVM、Gas、执行层。
- 最小交叉实验升级：日志、失败点、回滚策略和人工确认节点。
- AI x Web3 / Ethereum / Crypto AI 的行业观察和关注清单。

## 对路线的影响

该来源支撑当前 `tasks/week1-00x-learning-route.md` 中的 00X 路线，尤其是：

- 005-008：AI 基础与概念卡片。
- 009-013：Web3 基础、合约实践、测试网 proof 和账户模型对比。
- 014-016：AI x Web3 workflow、受限助手设计和可交互学习产物。
- 017-020：行业观察、proof pack 和公开学习总结。
