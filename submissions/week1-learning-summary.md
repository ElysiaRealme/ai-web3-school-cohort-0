# Week 1｜AI x Web3 学习总结

日期：2026-05-27

## 一句话总结

Week 1 我完成了从 Web3 基础、AI Agent 基础到 AI x Web3 最小 workflow 的学习闭环，并把过程沉淀为公开 GitHub proof-of-work。

## 我学到了什么

### 1. Web3 操作不是“点一下”

我重新梳理了账户、私钥、助记词、签名、授权、交易、Gas、测试网和区块浏览器之间的关系。

最重要的理解是：

```text
签名、授权、交易不是同一件事。
Transaction Hash 也不等于交易成功。
```

链上操作需要看：

- Network。
- From / To。
- Value。
- Data。
- Gas。
- Status。
- 区块浏览器验证。
- 操作前后状态变化。

### 2. AI Agent 适合做准备、解释和验证，不适合直接越权执行

AI 可以帮助生成草稿、解释 ABI、整理 proof、检查字段和提示风险。

但涉及签名、授权、转账、合约写入、钱包确认时，必须保留人工确认和安全边界。

我对 AI x Web3 的理解从“AI 帮我操作链上”变成了：

```text
AI 辅助准备和验证，人负责确认关键权限，链上结果用区块浏览器复核。
```

### 3. 账户模型决定 Agent Wallet 的风险边界

我比较了 EOA、智能账户和多签：

- EOA 简单，但存在单点私钥风险。
- 智能账户可以加入限额、白名单、Session Key、恢复等规则。
- 多签适合团队 treasury，但仍要关注 owner 分布和阈值设置。

对 AI x Web3 来说，关键不是让 Agent 更自由，而是让 Agent 的权限更受限、可撤销、可审计。

## 我构建了什么

### 1. 公开学习仓库

- Repo：https://github.com/ElysiaRealme/ai-web3-school-cohort-0
- Week 1 Proof Pack：https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/submissions/week1-proof-of-work-pack.md

### 2. 测试网交易 proof

我完成了一笔 Sepolia 测试网交易，并记录了可公开 proof：

- Proof：https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/submissions/week1-testnet-transaction-proof.md
- Etherscan：https://sepolia.etherscan.io/tx/0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0

### 3. AI 可交互学习产物

我完成了一个静态 HTML 工具：

```text
测试网交易 Proof 检查器
```

它可以检查 proof 是否包含 Network、Transaction Hash、Explorer Link、Status、From、To、Value、Gas Fee、Block，并提醒不要提交敏感信息。

- 工具：https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/experiments/testnet-proof-checker.html
- 说明：https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/submissions/week1-ai-interactive-artifact-proof.md

### 4. AI x Web3 workflow 和行业观察

我整理了：

- AI x Web3 最小交叉流程图。
- 受限 Web3 助手 workflow。
- AI x Web3 行业信息流关注清单。
- Coinbase AgentKit 与 Ethereum Account Abstraction 的初步拆解。

## 仍然不清楚的问题

1. 智能账户、Session Key、限额和白名单在真实产品里如何落地。
2. AgentKit 这类工具如何在工程上限制 Agent 的链上权限。
3. 合约调用 `data` 解码和风险判断如何自动化得更可靠。
4. 不同链和不同钱包对账户抽象的支持差异。
5. 如何把 proof 检查器从静态字段检查升级为真实链上只读查询。

## 下周方向

下周我想继续推进：

1. 把测试网交易 Proof 检查器升级为可查询真实交易状态的只读工具。
2. 做一个更完整的受限 Web3 助手 demo，只允许读取和 proof 整理，不执行写入。
3. 继续研究 Coinbase AgentKit、智能账户、Session Key 和权限限制。
4. 为 Hackathon 方向收束一个小 idea：受限 Web3 proof assistant 或安全交易检查助手。

## 可发布短版

Week 1 我完成了 AI x Web3 School 的基础学习闭环：从账户、签名、授权、交易、Gas、测试网、区块浏览器，到智能合约读写、EOA / 智能账户 / 多签权限模型，再到 AI x Web3 最小安全 workflow。

我完成了一笔 Sepolia 测试网交易，构建了一个静态 HTML 版“测试网交易 Proof 检查器”，并把学习过程沉淀到公开 GitHub repo 中。

最大的收获是：AI x Web3 的核心不是让 AI 直接替人操作钱包，而是让 AI 做解释、准备、检查和 proof 整理；真正涉及权限的签名、授权、转账、合约写入，必须保留人工确认、权限限制和链上验证。

Week 1 PoW Pack：

https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/submissions/week1-proof-of-work-pack.md
