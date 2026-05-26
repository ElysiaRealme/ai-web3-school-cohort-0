# Week 1｜综合进阶｜设计一个受限 Web3 助手或小 workflow

日期：2026-05-27

## 1. 这个助手 / workflow 要解决什么问题

助手名称：

```text
测试网交易 Proof 助手
```

它要解决的问题：

```text
帮助用户检查一份测试网交易 proof 是否包含公开提交所需的关键字段，并整理成 Markdown 草稿。
```

它不是钱包助手，也不是链上执行助手。

它只做三件事：

- 检查 proof 字段是否完整。
- 提醒用户移除敏感信息。
- 生成可公开提交的 Markdown proof 草稿。

它不做：

- 不创建钱包。
- 不保存私钥或助记词。
- 不连接钱包。
- 不签名。
- 不发送交易。
- 不授权 Token。
- 不替用户提交 WCB。

## 2. 输入和输出示例

### 输入示例

用户输入或勾选：

```text
Network：Ethereum Sepolia Testnet
Transaction Hash：0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0
Explorer Link：https://sepolia.etherscan.io/tx/0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0
Status：Success
From：0x603969bF57B56e5ECa1f85FE761DB22B91857655
To：0x0ec2a5758EA4C65D78F405e5f8fF4F2D1AE253b2
Value：0.0233 SepoliaETH
Gas Fee：0.000052299804858 ETH
Block：10914902
```

用户确认：

```text
已确认这是测试网交易。
已人工检查地址、金额、状态和 Gas。
没有包含助记词、私钥、API Key 或钱包备份文件。
```

### 输出示例

工具输出：

```text
检查通过：这份 proof 草稿可以公开提交。
```

生成 Markdown 草稿：

```markdown
## 测试网交易 Proof

- Network：Ethereum Sepolia Testnet
- Transaction Hash：0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0
- Explorer Link：https://sepolia.etherscan.io/tx/0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0
- Status：Success
- From：0x603969bF57B56e5ECa1f85FE761DB22B91857655
- To：0x0ec2a5758EA4C65D78F405e5f8fF4F2D1AE253b2
- Value：0.0233 SepoliaETH
- Gas Fee：0.000052299804858 ETH
- Block：10914902

## 我检查过的内容

- 已确认这是测试网交易。
- 已人工检查地址、金额、状态和 Gas。
- 已确认没有公开助记词、私钥、API Key 或钱包备份文件。
```

## 3. 人工确认点

必须由用户人工确认：

1. 这笔交易确实是自己的测试网学习操作。
2. Network 与 Explorer Link 匹配，例如 Sepolia 交易应使用 Sepolia 区块浏览器。
3. 区块浏览器中的 `Status` 是 `Success`。
4. `From`、`To`、`Value`、`Gas Fee`、`Block` 与预期一致。
5. proof 中没有助记词、私钥、API Key、钱包备份文件或未打码身份信息。
6. 如果要提交到 WCB，先预览提交内容，再由用户手动提交或明确确认后再提交。

## 4. 至少 3 个风险或限制

### 风险 / 限制 1：工具不实时查询链上状态

当前版本只检查用户填写的字段和格式，不直接调用区块浏览器 API。

所以 `Status: Success` 仍然需要用户到区块浏览器中人工确认。

### 风险 / 限制 2：工具不能证明交易属于用户本人

公开链上字段只能证明交易存在，不能自动证明这笔交易一定属于当前用户。

因此需要用户确认这笔交易是自己的学习操作。

### 风险 / 限制 3：工具不能处理签名、授权或转账

这个 workflow 的权限边界是 proof 检查。

它不能：

- 替用户签名。
- 替用户发送交易。
- 替用户授权 Token。
- 替用户点击钱包确认。

### 风险 / 限制 4：敏感信息仍需人工复核

工具会检查常见敏感关键词，但不能保证识别所有形式的敏感信息。

公开提交前仍需要人工复核。

## 5. 如何验证结果

验证分为三层。

### 第一层：工具检查

打开：

```text
experiments/testnet-proof-checker.html
```

点击：

```text
载入 Sepolia 示例 -> 检查 Proof
```

预期结果：

```text
检查通过：这份 proof 草稿可以公开提交。
```

### 第二层：区块浏览器验证

打开 Explorer Link：

```text
https://sepolia.etherscan.io/tx/0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0
```

检查：

- Network 是 Sepolia Testnet。
- Status 是 Success。
- Transaction Hash 匹配。
- From / To / Value / Gas Fee / Block 与 proof 中一致。

### 第三层：公开仓库验证

确认 repo 中存在：

- `experiments/testnet-proof-checker.html`
- `submissions/week1-ai-interactive-artifact-proof.md`
- `submissions/week1-limited-web3-assistant-workflow.md`

并确认这些文件中没有助记词、私钥、API Key 或钱包备份文件。

## 对应产物

- 交互工具：`experiments/testnet-proof-checker.html`
- AI 可交互学习产物 proof：`submissions/week1-ai-interactive-artifact-proof.md`
- 本 workflow proof：`submissions/week1-limited-web3-assistant-workflow.md`
