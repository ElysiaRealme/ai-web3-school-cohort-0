# Remix｜SimpleStore 最小合约部署与调用指南

日期：2026-05-27

目标任务：

```text
Week 1｜Web3 向任务｜部署或调用一个最小智能合约
```

本指南选择“部署一个最小合约 + 读取 + 低风险写入”路线。你也可以只完成部署或只完成调用，但建议按完整闭环做一次。

## 参考资料

- Remix Deploy & Run 文档：https://remix-ide.readthedocs.io/en/latest/run.html
- Remix 创建与部署合约文档：https://remix-ide.readthedocs.io/en/latest/create_deploy.html
- Etherscan Read / Write 合约教程：https://docs.etherscan.io/etherscan-v2/tutorials/read-write-smart-contracts

## 准备

你需要：

- MetaMask。
- Sepolia 测试网。
- 少量 SepoliaETH。
- 浏览器打开 Remix：https://remix.ethereum.org/
- 本仓库合约：`experiments/simple-store/SimpleStore.sol`

## 第 1 步：打开 Remix 并创建文件

1. 打开 https://remix.ethereum.org/
2. 在 File Explorer 中创建文件：

```text
SimpleStore.sol
```

3. 复制本仓库 `experiments/simple-store/SimpleStore.sol` 内容到 Remix。

## 第 2 步：编译合约

1. 打开 `Solidity Compiler`。
2. 选择 `0.8.20` 或兼容的 `0.8.x` 编译器。
3. 点击 `Compile SimpleStore.sol`。

预期：

- 编译通过。
- 没有 error。

## 第 3 步：连接 Sepolia 钱包

1. 打开 `Deploy & Run Transactions`。
2. Environment 选择：

```text
Injected Provider - MetaMask
```

3. MetaMask 弹窗中确认连接。
4. 确认 MetaMask 当前网络是：

```text
Sepolia Testnet
```

如果不是 Sepolia，先切换网络，不要部署到主网。

## 第 4 步：部署合约

1. Contract 选择：

```text
SimpleStore
```

2. constructor 参数填一个初始值，例如：

```text
42
```

3. Value 保持：

```text
0
```

4. 点击 `Deploy`。
5. MetaMask 弹窗里人工检查：

```text
Network：Sepolia
From：你的测试钱包
Value：0
Gas：是否合理
Action：Contract Deployment
```

6. 由你手动确认交易。

重要：

- 我不会替你点击确认。
- 不要在聊天或仓库里粘贴助记词、私钥或 API Key。

## 第 5 步：记录部署交易和合约地址

部署成功后，在 Remix 的 Deployed Contracts 区域复制：

- Contract Address。
- Deployment Transaction Hash。

在 Sepolia Etherscan 打开：

```text
https://sepolia.etherscan.io/address/你的合约地址
```

检查：

- 地址页面存在。
- Contract Creator / Creation Txn 能看到部署交易。
- 部署交易 `Status` 是 `Success`。

## 第 6 步：读取 `value()`

在 Remix 的 Deployed Contracts 中展开合约。

点击：

```text
value
```

预期：

```text
42
```

读取函数不需要钱包确认，因为它不改变链上状态。

## 第 7 步：写入 `setValue(123)`

在 `setValue` 输入框中填：

```text
123
```

点击 `transact`。

MetaMask 弹窗中人工检查：

```text
Network：Sepolia
To：你的 SimpleStore 合约地址
Value：0
Function：setValue
Args：123
Gas：是否合理
```

确认无误后，由你手动确认交易。

## 第 8 步：验证写入结果

写入交易确认后：

1. 复制 `setValue(123)` 的 Transaction Hash。
2. 打开 Sepolia Etherscan 交易页面。
3. 检查 `Status: Success`。
4. 回到 Remix，再次点击 `value()`。
5. 确认返回：

```text
123
```

这才是完整闭环：

```text
部署 -> 读取旧值 -> 写入新值 -> 验证交易成功 -> 回读新值
```

## 你需要发给我的信息

完成后，把下面 4 个信息发给我即可：

```markdown
- Contract Address：
- Deployment Tx Hash：
- setValue Tx Hash：
- Read Result After：
```

如果你只完成部署，不做写入，也可以发：

```markdown
- Contract Address：
- Deployment Tx Hash：
```

## 我会帮你做什么

你发来信息后，我会：

- 检查 Sepolia 链接格式。
- 整理 `submissions/week1-minimal-contract-proof.md`。
- 更新 `tasks/012-minimal-contract-interaction-note.md`。
- 更新 Week 1 Proof-of-Work Pack。
- commit + push。
- 给你 WCB 可提交链接。
