# Week 1｜Web3 向任务｜整理 Web3 基础概念卡片

WCB 任务 ID：`cmp3jyqq507scn3016sd7iflf`

WCB 读取状态：`NOT_STARTED`

分数：10

## 任务要求摘要

WCB 要求：

- 至少整理 8 个 Web3 基础概念。
- 每个概念包含自己的解释。
- 至少包含若干例子、安全提醒或常见误区。
- 特别说明私钥、助记词、签名和授权为什么需要谨慎处理。
- 不提交真实私钥、助记词、API Key、token、`.env` 文件或真实资产相关敏感信息。

## 我的完成说明

我整理了 14 个 Web3 基础概念：

- Account
- Address
- Wallet
- Private Key
- Seed Phrase
- Signature
- Approval
- Transaction
- Gas
- Network
- Testnet
- Transaction Hash
- Block Explorer
- Smart Contract

这些内容主要来自我已经完成的 001-003 学习节点：

- `001｜账户、地址、私钥、助记词`
- `002｜签名、授权、交易`
- `003｜Gas、网络、测试网、区块浏览器`

完整公开笔记：

- https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/experiments/web3-concept-cards.md

学习记录：

- https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/daily/2026-05-18.md
- https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/daily/2026-05-20.md
- https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/daily/2026-05-21.md
- https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/daily/2026-05-24.md

## 概念卡片摘要

### 1. Account｜账户

一句话解释：

- Web3 账户是链上身份和资产控制入口，常见形式包括 EOA、智能账户和多签账户。

例子：

- 你用一个 EOA 地址发起测试网交易；项目金库可能用多签账户管理。

安全提醒：

- 账户控制权来自私钥、合约规则或多签策略，不等于普通网站账号。

### 2. Address｜地址

一句话解释：

- 地址是链上账户的公开标识，用于接收资产、连接 dApp 和查询链上记录。

例子：

- 在区块浏览器里输入地址，可以看到它的交易历史和部分资产记录。

安全提醒：

- 地址公开不等于匿名。链上行为可能被长期追踪。

### 3. Wallet｜钱包

一句话解释：

- 钱包是管理私钥、助记词和地址，并帮助用户签名、发交易和连接 dApp 的工具。

例子：

- MetaMask、Rabby、Safe 都可以作为不同类型的钱包或账户入口。

常见误区：

- 资产不是“存在钱包里”，而是记录在区块链状态中。钱包只是控制和展示入口。

### 4. Private Key｜私钥

一句话解释：

- 私钥是控制地址的核心秘密，持有私钥的人可以签名消息或交易。

例子：

- 如果某个地址的私钥泄露，攻击者可能代表该地址签名、转账或授权。

安全提醒：

- 私钥不能提交到 GitHub、WCB、prompt、context、截图或任何公开材料中。

### 5. Seed Phrase｜助记词

一句话解释：

- 助记词是一组用于恢复钱包的词，通常可以推导出多个私钥和地址。

例子：

- 使用助记词恢复钱包后，可能重新获得该钱包下多个地址的控制权。

安全提醒：

- 助记词不是密码提示，而是钱包根秘密。任何 AI Agent 都不应读取、保存或上传助记词。

### 6. Signature｜签名

一句话解释：

- 签名是用私钥对具体内容进行确认，用来证明“我控制这个地址，并同意这段内容”。

例子：

- 使用钱包登录 dApp 时，经常需要签名一段消息。

安全提醒：

- 签名不是普通登录按钮。恶意签名可能变成订单、Permit、授权声明或其他可被利用的链下承诺。

### 7. Approval｜授权

一句话解释：

- 授权通常是允许某个合约或 spender 使用你某类 Token 的一定额度。

例子：

- 你允许某个 DEX 合约最多使用一定数量的 USDC。

安全提醒：

- 授权不是一次性付款，可能长期有效。必须检查 spender、Token、额度、有效期和是否无限授权。

### 8. Transaction｜交易

一句话解释：

- 交易是真正发送到链上执行的操作，例如转账、调用合约、写入状态或修改授权。

例子：

- 给测试网地址发送测试 ETH，或调用合约的写入函数。

安全提醒：

- 交易会上链、消耗 Gas，并可能改变资产、权限或合约状态。钱包确认必须由用户人工完成。

### 9. Gas

一句话解释：

- Gas 是链上执行所需的资源费用，用来支付网络验证和执行成本。

例子：

- 转账金额是给接收方的资产，Gas 是支付给网络执行者的费用。

安全提醒：

- 交易失败也可能消耗 Gas，因此提交前要检查网络、参数和预期结果。

### 10. Network｜网络

一句话解释：

- 网络是交易执行的链上环境，例如 Ethereum mainnet、Sepolia testnet 或 L2。

例子：

- 同一个地址在不同网络上可能有不同资产和不同交易记录。

安全提醒：

- 签名、授权和交易前必须检查当前网络是否正确。

### 11. Testnet｜测试网

一句话解释：

- 测试网是用于学习、开发和验证流程的网络，测试币通常没有真实经济价值。

例子：

- 在 Sepolia 上练习发送交易或调用合约。

安全提醒：

- 测试网也要按主网标准培养检查习惯，因为习惯会迁移到真实资产环境。

### 12. Transaction Hash｜交易哈希

一句话解释：

- 交易哈希是一笔交易提交或广播后生成的查询标识。

例子：

- 用交易 hash 在区块浏览器里查询交易状态、区块高度、Gas 和调用对象。

常见误区：

- 有交易 hash 不等于交易成功。最终要看 `Success / Failed`、确认数和交易详情。

### 13. Block Explorer｜区块浏览器

一句话解释：

- 区块浏览器是查询链上公开数据的工具，可以查看交易、地址、合约、区块和事件。

例子：

- Etherscan、Sepolia Etherscan、各类 L2 explorer。

安全提醒：

- 钱包显示成功不够，最终 proof 应尽量包含区块浏览器链接和状态。

### 14. Smart Contract｜智能合约

一句话解释：

- 智能合约是部署在链上的程序，按照公开规则读取或修改链上状态。

例子：

- Token 合约、NFT 合约、DEX 合约、借贷协议、多签账户都依赖智能合约。

安全提醒：

- 不能把智能合约当成普通后端 API。合约写入通常需要交易、Gas 和钱包确认，合约权限和升级能力也需要检查。

## 私钥、助记词、签名和授权为什么要谨慎

- 私钥：直接控制地址。泄露后，他人可能直接控制资产或权限。
- 助记词：可能恢复整个钱包，影响多个私钥和地址，风险比单个私钥更大。
- 签名：不一定上链，但可能代表链下承诺、订单、Permit 或授权声明。
- 授权：可能长期允许某个合约转走资产，尤其要警惕无限授权和不可信 spender。

## AI x Web3 安全边界

- Agent 可以解释概念、生成交易草稿、检查明显风险、整理区块浏览器 proof。
- Agent 不能接触私钥或助记词。
- Agent 不能替用户签名、授权、转账或写入合约。
- 所有链上 proof 应能回到交易哈希、区块浏览器状态、GitHub commit 或 WCB 状态。

## 可提交 proof

建议提交链接：

```text
https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/submissions/week1-web3-concept-cards-wcb.md
```
