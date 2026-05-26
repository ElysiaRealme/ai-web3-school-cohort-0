# AI x Web3 项目 / 人物拆解

日期：2026-05-27

用途：

```text
Week 1｜行业观察进阶｜拆解 1-2 个 AI x Web3 项目或个人
```

## 资料来源

- Coinbase AgentKit Docs：https://docs.cdp.coinbase.com/agent-kit
- Coinbase AgentKit GitHub：https://github.com/coinbase/agentkit
- Ethereum Account Abstraction：https://ethereum.org/roadmap/account-abstraction
- Ethereum Foundation Blog - On Abstraction：https://blog.ethereum.org/2015/07/05/on-abstraction
- Web3 x AI Agents Landscape：https://arxiv.org/abs/2508.02773

## 对象一：Coinbase AgentKit

### 基本信息

- 名称：Coinbase AgentKit
- 类型：AI Agent x Onchain 开发者工具
- 链接：https://docs.cdp.coinbase.com/agent-kit
- 一句话定位：帮助开发者把 AI Agent 接入钱包管理和链上操作能力的工具包。

### 它解决什么问题

AI Agent 如果要进入 Web3 场景，需要处理：

- 钱包创建和管理。
- 链上读取。
- 链上写入。
- 多网络支持。
- 与不同 AI 框架集成。

AgentKit 的价值在于把这些能力封装成开发者工具，让 Agent 可以更容易地执行链上 action。

### 目标用户

- 想构建 onchain agent 的开发者。
- 想把 LLM 接入转账、合约部署、合约调用等链上动作的团队。
- 想快速做 AI x Web3 demo 或 hackathon 项目的 builder。

### 技术 / 产品路径

从公开文档看，AgentKit 的路径是：

- 基于 Coinbase Developer Platform。
- 提供钱包管理能力。
- 提供 onchain actions。
- 支持多网络。
- 支持与不同 AI 框架集成。

### AI x Web3 结合点

AgentKit 是典型的：

```text
AI Agent -> Tool Use -> Wallet / Onchain Actions
```

它对应本周学过的多个主题：

- Agent 不只是回答问题，还能调用工具。
- Web3 写入操作必须区分读取、签名、授权和交易。
- Agent Wallet 需要权限边界，而不是无限自动化。
- Proof 应该记录 Agent 做了什么、人确认了什么、链上验证结果是什么。

### 风险和限制

- 如果没有清晰权限边界，Agent 可能从“准备交易”变成“自动执行交易”。
- 钱包管理能力越强，越需要限额、白名单、人工确认和日志审计。
- 开发者需要理解底层交易字段，而不能只依赖自然语言。
- 不适合初学阶段直接接入高价值主网账户。

### 我学到什么

AgentKit 说明 AI x Web3 的一个重要方向是：

```text
让 Agent 拥有链上工具能力，但必须给这些工具能力加边界。
```

这和本周的受限 Web3 助手设计一致：先做只读、proof、检查清单，再逐步考虑受限写入。

### 下一步观察

- AgentKit 如何做权限限制。
- 是否支持 session key、policy、spending limit 或 allowlist。
- 开发者如何记录 agent action 日志。
- Hackathon 项目是否使用 AgentKit 构建 AI x Web3 demo。

## 对象二：Vitalik / Ethereum Account Abstraction

### 基本信息

- 名称：Vitalik / Ethereum Account Abstraction
- 类型：人物与技术路线
- 链接：https://ethereum.org/roadmap/account-abstraction
- 相关文章：https://blog.ethereum.org/2015/07/05/on-abstraction
- 一句话定位：通过账户抽象和智能账户，把账户权限从“单一私钥控制”扩展为可编程规则。

### 它解决什么问题

传统 EOA 的问题是：

```text
一把私钥 = 几乎全部控制权
```

这会带来：

- 私钥单点失败。
- 难以设置每日限额。
- 难以设置白名单。
- 难以做社交恢复。
- 难以给 AI Agent 设置有限权限。

账户抽象方向试图让账户本身具备更灵活的逻辑，例如：

- 多签。
- 社交恢复。
- 限额。
- session key。
- 自定义签名规则。

### 目标用户

- 普通钱包用户。
- 智能账户开发者。
- 钱包产品团队。
- 需要给自动化或 Agent 设置受限权限的 Web3 应用。

### 技术 / 产品路径

账户抽象的关键方向是：

```text
让智能合约钱包承载账户逻辑。
```

也就是把“谁能发起交易、怎么验证交易、权限如何恢复和限制”从固定 EOA 模型扩展到可编程模型。

### AI x Web3 结合点

AI Agent 如果要参与链上操作，最危险的方式是：

```text
Agent 直接控制高权限 EOA
```

更合理的方向是：

```text
Agent 只拿到受限权限
```

账户抽象和智能账户可以为 Agent 提供：

- 每日额度。
- 目标地址白名单。
- 目标合约白名单。
- 有效期限制。
- 可撤销 session key。
- 多签或人工审批。

### 风险和限制

- 智能账户逻辑更复杂，合约 bug 风险更高。
- 升级权限、模块权限和 owner 权限需要仔细检查。
- 用户可能误以为“智能账户”天然安全。
- 如果 session key 设计过宽，仍然可能等同于高权限 key。

### 我学到什么

AI x Web3 的关键不是让 AI 自动控制钱包，而是设计更安全的账户权限模型。

账户抽象给 Agent Wallet 提供了一个方向：

```text
不是给 Agent 私钥，而是给 Agent 一段可限制、可撤销、可审计的权限。
```

### 下一步观察

- ERC-4337、EIP-7702、智能账户和 session key 的实际钱包实现。
- Safe、Privy、Coinbase CDP 等工具如何做 policy 和权限控制。
- AI Agent 工具如何与智能账户权限模型结合。

## 对比总结

| 对象 | 类型 | 关注点 | 对 AI x Web3 的启发 |
|---|---|---|---|
| Coinbase AgentKit | 项目 / 工具 | Agent 如何接入钱包和链上 actions | 工具能力需要权限边界和日志 |
| Vitalik / Account Abstraction | 人物 / 技术路线 | 账户权限如何从 EOA 走向智能账户 | Agent Wallet 应该受限、可撤销、可审计 |

## 本次行业观察结论

AI x Web3 的核心不是“让 AI 直接替人花钱”，而是：

```text
AI 负责理解、准备、检查、解释和自动化低风险环节；
账户系统负责把权限限制在可验证、可撤销、可审计的范围内。
```

这也是后续 Hackathon idea 可以继续深入的方向。
