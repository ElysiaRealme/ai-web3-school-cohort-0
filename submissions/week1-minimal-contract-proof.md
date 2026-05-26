# Week 1｜Web3 向任务｜部署或调用一个最小智能合约

日期：2026-05-27

状态：待填写链上结果。

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

## 待填写 Proof

完成链上操作后填写：

```markdown
- Network：Sepolia Testnet
- Tool：Remix
- Contract Name：SimpleStore
- Contract Address：
- Contract Explorer Link：
- Deployment Tx Hash：
- Deployment Tx Link：
- Deployment Status：
- Read Function：value()
- Read Result Before：
- Write Function：setValue(uint256)
- Write Args：
- Write Tx Hash：
- Write Tx Link：
- Write Status：
- Read Result After：
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

等待用户提供：

```markdown
- Contract Address：
- Deployment Tx Hash：
- setValue Tx Hash：
- Read Result After：
```
