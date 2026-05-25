# 011｜测试网实践：完成一笔测试网交易

日期：2026-05-25

状态：实践已完成，待检查题确认。

## 本节目标

本节不是为了“做一笔交易”本身，而是训练链上操作的完整安全闭环：

```text
准备测试钱包 -> 选择测试网 -> 获取测试币 -> 发起小额测试交易 -> 钱包人工确认 -> 区块浏览器验证 -> 记录公开 proof
```

完成后，你应该能解释：

- 为什么测试网适合练习，但不能因此放松安全习惯。
- 一笔交易从钱包确认到区块浏览器验证，中间发生了什么。
- 一个可公开提交的 transaction proof 应该包含哪些字段。
- 哪些信息可以公开，哪些信息不能放进 GitHub。

## 核心概念

### 1. 测试网是什么

测试网是用于开发、测试和练习的区块链网络。它通常模拟主网的执行环境，但测试币没有真实经济价值。

测试网适合做：

- 练习钱包操作。
- 测试合约部署和调用。
- 生成学习 proof。
- 验证 Agent 生成的脚本或交易参数。

测试网不等于无风险：

- 你仍然应该使用专门的测试钱包。
- 不要导入主网常用钱包或高价值地址。
- 不要把助记词、私钥、API Key 放进任何学习笔记、截图或公开仓库。
- 签名、授权、交易确认的安全习惯应与主网一致。

### 2. 选哪条测试网

当前可用的主流选择包括：

- Ethereum Sepolia：适合学习以太坊交易、区块浏览器、基础合约调用。
- Base Sepolia：适合后续做 Base / L2 / AI x Web3 应用练习。

本节可以任选一条测试网完成。优先建议：

```text
如果你只是练习一笔普通转账：Ethereum Sepolia
如果你后续更可能做应用或 L2 workflow：Base Sepolia
```

选择网络时要确认：

- 钱包里显示的是测试网，不是主网。
- `chainId` 与目标网络一致。
- 区块浏览器对应目标网络，而不是主网浏览器。
- 测试币来自 faucet，不是从交易所或主网桥入真实资产。

参考资料：

- Ethereum 网络文档：https://ethereum.org/developers/docs/networks/
- Base Sepolia 连接文档：https://docs.base.org/base-chain/quickstart/connecting-to-base
- Base faucet 文档：https://docs.base.org/docs/tools/network-faucets/

### 3. 一笔测试网交易需要检查什么

发起交易前检查：

- `Network`：是否是 Sepolia / Base Sepolia 等目标测试网。
- `From`：是否是专门测试钱包。
- `To`：是否是你预期接收地址，最好也是测试地址。
- `Value`：是否只是很小额测试币。
- `Gas`：Gas fee 是否合理，是否消耗测试币。
- `Data`：普通转账通常为空；如果有 data，要确认是不是预期合约调用。

钱包弹窗时检查：

- 网络名称是否正确。
- 收款地址是否正确。
- 转出数量是否正确。
- 是否出现未知合约交互、授权或签名请求。
- 钱包是否提示高风险或异常权限。

交易完成后检查：

- 是否拿到 transaction hash。
- 区块浏览器状态是 `Success`，不是只看到交易哈希就结束。
- `from`、`to`、`value`、`gas fee`、`block` 是否符合预期。
- 如交易失败，记录失败原因，不重复盲目点击。

### 4. Transaction Hash 是什么

Transaction Hash 是一笔链上交易的唯一查询入口。它不是“成功证明”，只是“这笔交易被广播或记录的编号”。

真正的 proof 需要同时包含：

- Transaction Hash。
- 区块浏览器链接。
- Status：Success / Failed。
- Network。
- From / To。
- Value。
- Gas fee。
- Block number。
- 你自己的复盘说明。

### 5. 可公开 proof 与不可公开内容

可以公开：

- 测试网交易哈希。
- 区块浏览器链接。
- 测试钱包公开地址。
- 交易状态、Gas、区块高度。
- 你对流程的复盘。

不要公开：

- 助记词。
- 私钥。
- 钱包备份文件。
- API Key。
- 主网高价值地址的资产截图。
- 未打码的邮箱、手机号、身份信息。

## 本节实践建议

建议使用一个全新的测试钱包地址完成本节。

最小实践路径：

1. 在钱包中创建或切换到测试专用账户。
2. 添加或打开目标测试网。
3. 从 faucet 领取少量测试币。
4. 给另一个自己的测试地址发送一小笔测试币。
5. 等待交易确认。
6. 在区块浏览器打开 transaction hash。
7. 记录公开 proof。

推荐 proof 模板：

```markdown
## 测试网交易 proof

- Network：
- Transaction Hash：
- Explorer Link：
- Status：
- From：
- To：
- Value：
- Gas Fee：
- Block：
- 我检查过的内容：
- 本次学到的内容：
- 仍然不确定的问题：
```

## AI x Web3 边界

Agent 可以帮你：

- 解释测试网和交易字段。
- 检查你手动提供的交易哈希和区块浏览器链接。
- 整理 proof。
- 提醒风险点。

Agent 不应该替你：

- 创建或保存助记词。
- 输入私钥。
- 自动点击钱包确认。
- 自动发起转账。
- 自动授权合约。

## 学习完成标准

你不需要现在就立刻完成真实交易。先确认你理解以下内容：

- 测试网用于练习，但安全习惯应按主网标准执行。
- 交易哈希不是成功证明，必须检查 status。
- 公开 proof 应包含浏览器链接和关键字段。
- 私钥、助记词、API Key 永远不能进入公开 repo。

## 实践 proof

学员已完成一笔 Sepolia 测试网交易，并提供区块浏览器截图。

交易字段：

- Network：Ethereum Sepolia Testnet
- Transaction Hash：`0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0`
- Explorer Link：https://sepolia.etherscan.io/tx/0xc1381101c40bf651f88d9dd8f1c7e619d80243edad155aa987b07f35980398b0
- Status：Success
- Block：`10914902`
- From：`0x603969bF57B56e5ECa1f85FE761DB22B91857655`
- To：`0x0ec2a5758EA4C65D78F405e5f8fF4F2D1AE253b2`
- Value：`0.0233 SepoliaETH`
- Transaction Fee：`0.000052299804858 ETH`
- Gas Price：`2.490466898 Gwei`
- Timestamp：`May-24-2026 10:40:48 PM +UTC`

本次检查结论：

- 使用的是 Sepolia Testnet，不是主网。
- 区块浏览器显示 `Success`，不是只记录交易哈希。
- 交易为普通 ETH 转账，截图未显示合约授权或复杂 calldata。
- 公开笔记只记录公开链上字段，没有记录助记词、私钥、API Key 或钱包备份文件。

公开 proof 草稿：

- `submissions/week1-testnet-transaction-proof.md`

## 下一步

本节实践已经完成。接下来需要用检查题确认是否真正理解 011，再决定是否标记本节完成。
