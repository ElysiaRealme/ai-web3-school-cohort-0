# Week 1｜Web3 向任务｜部署或调用一个最小智能合约

日期：2026-05-27

状态：已完成。

## 任务目标

完成以下至少一种：

- 部署一个最小合约，并在区块浏览器中查看合约地址。
- 调用一个已部署测试网合约的读取函数。
- 调用一个低风险写入函数，并在钱包中人工确认交易。

本次选择路线：

```text
使用 Remix 在 Sepolia 测试网部署 SimpleStore，并完成一次读取和一次低风险写入。
```

## 合约代码

- `experiments/simple-store/SimpleStore.sol`

## 操作指南

- `tasks/remix-simple-store-practice-guide.md`

## Proof

- Network：Sepolia Testnet
- Tool：Remix
- Contract Name：SimpleStore
- Contract Address：`0x851E76b6CA22d8DB49C3FB48c66548EF102B372B`
- Contract Explorer Link：https://sepolia.etherscan.io/address/0x851E76b6CA22d8DB49C3FB48c66548EF102B372B
- Deployment Tx Hash：`0xcd0fd9d7fa9071e5e0fd506b127d077ecd9ef6e943265666893835bc943745d2`
- Deployment Tx Link：https://sepolia.etherscan.io/tx/0xcd0fd9d7fa9071e5e0fd506b127d077ecd9ef6e943265666893835bc943745d2
- Deployment Status：Success，已生成合约地址并可在 Sepolia Etherscan 查看。
- Read Function：`value()`
- Read Result Before：`42`
- Write Function：`setValue(uint256)`
- Write Args：`123`
- Write Tx Hash：`0x35f9e1c41a56d1968b9fb7403b0f07bdac8a6a495bd3dd227c5657a8a263494b`
- Write Tx Link：https://sepolia.etherscan.io/tx/0x35f9e1c41a56d1968b9fb7403b0f07bdac8a6a495bd3dd227c5657a8a263494b
- Write Status：Remix 回读 `value()` 已返回 `123`，说明写入后状态符合预期。
- Read Result After：`123`

## 读取记录

### 部署后读取

```text
call
from: 0x603969bF57B56e5ECa1f85FE761DB22B91857655
to: SimpleStore.value() 0x851E76b6CA22d8DB49C3FB48c66548EF102B372B
decoded output:
{
  "0": "uint256: 42"
}
```

### 写入后读取

```text
call
from: 0x603969bF57B56e5ECa1f85FE761DB22B91857655
to: SimpleStore.value() 0x851E76b6CA22d8DB49C3FB48c66548EF102B372B
decoded output:
{
  "0": "uint256: 123"
}
```

## 人工检查记录

部署前检查：

- Network 是 Sepolia，不是 Ethereum Mainnet。
- Constructor 参数是预期初始值。
- Value 是 0。
- Gas 看起来合理。

写入前检查：

- To 是 SimpleStore 合约地址。
- Function 是 `setValue`。
- Args 是预期新值。
- Value 是 0。
- 钱包确认由用户本人完成。

## 安全边界

- 不公开助记词。
- 不公开私钥。
- 不公开 API Key。
- 不公开钱包备份文件。
- 不让 Agent 替用户点击钱包确认。
- 不在主网做本练习。

## 当前状态

- 已完成最小合约部署。
- 已在 Sepolia Etherscan 上形成合约地址 proof。
- 已完成读取函数 `value()`，读取结果从 `42` 更新到 `123`。
- 已记录写入函数 `setValue(123)` 的交易哈希。

## WCB 提交建议

本任务要求“部署一个最小合约，并在区块浏览器中查看合约地址”或“调用测试网合约读取 / 写入函数”至少一种。

当前 proof 已包含：

- 合约地址。
- 部署交易。
- 区块浏览器链接。
- 读取函数结果。
- 写入交易。
- 写入后回读结果。

可直接提交本文件链接。
