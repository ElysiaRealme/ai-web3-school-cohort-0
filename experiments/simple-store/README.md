# SimpleStore 最小合约实践

用途：

```text
Week 1｜Web3 向任务｜部署或调用一个最小智能合约
```

## 文件

- `SimpleStore.sol`：最小 Solidity 合约。

## 合约功能

这个合约只做一件事：保存一个数字。

- `value()`：读取当前数字，不改变链上状态。
- `setValue(uint256 newValue)`：写入新数字，会产生交易，需要钱包人工确认和 Gas。
- `ValueChanged`：写入成功后发出事件，方便在区块浏览器中验证。

## Remix 实践路径

详细步骤见：

- `tasks/remix-simple-store-practice-guide.md`

## Proof 模板

完成部署或调用后，填写：

- `submissions/week1-minimal-contract-proof.md`

## 安全边界

- 只在 Sepolia 测试网操作。
- 不使用主网高价值钱包。
- 不把助记词、私钥、API Key 或钱包备份文件写入仓库。
- 钱包签名、合约部署、写入函数调用必须由用户本人确认。
