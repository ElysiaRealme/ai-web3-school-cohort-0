# Week 1｜Web3 向任务｜完成一笔测试网交易

日期：2026-05-25

## 提交用途

用于 WCB Week 1 任务：

```text
Week 1｜Web3 向任务｜完成一笔测试网交易
```

## 测试网交易 proof

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

## 我检查过的内容

- 确认网络是 Sepolia Testnet，不是 Ethereum Mainnet。
- 确认交易状态是 `Success`，不是只保存 Transaction Hash。
- 确认 `from` 和 `to` 是本次测试交易预期地址。
- 确认转账金额为测试网 ETH。
- 确认公开材料中没有助记词、私钥、API Key 或钱包备份文件。

## 本次学到的内容

- Transaction Hash 是查询入口，不等于成功证明。
- 一笔交易需要在区块浏览器中检查 `Status`、`From`、`To`、`Value`、`Gas Fee` 和 `Block`。
- 测试网交易虽然没有真实经济价值，但安全检查习惯应该按主网标准执行。
- 可公开 proof 应该包含可复核的区块浏览器链接，而不是只写“我完成了交易”。

## 仍需注意

- 后续如果进行合约调用，除了以上字段，还要额外检查 `data` 是否能解码成预期函数。
- 如果交易涉及 `approve`，必须额外检查 spender、Token、额度和是否无限授权。
- Agent 可以整理 proof 和辅助检查，但不应替用户点击钱包确认或发起链上写入。
