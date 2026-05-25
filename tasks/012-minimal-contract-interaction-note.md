# 012｜最小合约交互：一次读取、一次写入、一次验证

日期：2026-05-25

状态：学习中。

## 本节目标

本节只解决一个问题：

```text
如何对一个最小智能合约完成一次读取、一次写入，并用区块浏览器验证结果。
```

它不是完整 Solidity 开发课，也不是完整 DApp 开发课。本节只训练最小闭环：

```text
找到合约 -> 理解 ABI -> 读取状态 -> 发起写入 -> 钱包确认 -> 拿到交易哈希 -> 浏览器验证 -> 回读状态
```

## 核心概念

### 1. 合约地址

合约地址是链上某个智能合约账户的位置。调用合约前必须确认：

- 网络是否正确。
- 地址是否是预期合约。
- 地址是否真的有合约代码。
- 是否在正确的区块浏览器页面查看。

### 2. ABI

ABI 是合约的“调用说明书”。它告诉钱包、脚本或前端：

- 合约有哪些函数。
- 每个函数需要什么参数。
- 每个函数会返回什么。
- 哪些函数是只读，哪些函数会写入链上状态。

### 3. 读取合约

读取合约通常是 `call`：

- 不改变链上状态。
- 通常不需要钱包确认。
- 通常不消耗 Gas。
- 适合查看当前值、余额、配置、owner、allowance 等。

### 4. 写入合约

写入合约通常是 transaction：

- 会改变链上状态。
- 需要钱包确认。
- 需要 Gas。
- 会产生 transaction hash。
- 必须到区块浏览器检查 `Status`。

## 最小合约例子

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStore {
    uint256 public value;

    function setValue(uint256 newValue) public {
        value = newValue;
    }
}
```

这个合约只做两件事：

- `value()`：读取当前值。
- `setValue(uint256 newValue)`：写入一个新值。

## 最小交互流程

1. 部署或找到一个测试网合约。
2. 读取 `value()`。
3. 调用 `setValue(123)`。
4. 在钱包里检查网络、合约地址、函数名、参数、Gas。
5. 确认交易。
6. 拿到 transaction hash。
7. 在区块浏览器确认 `Status: Success`。
8. 再次读取 `value()`，确认它变成 `123`。

## 人工检查清单

写入前至少检查：

- `Network`：是否是测试网。
- `Contract Address`：是否是预期合约。
- `Function`：是否是预期函数，例如 `setValue`。
- `Args`：参数是否正确，例如 `123`。
- `Value`：是否错误地转出了原生币。
- `Data`：是否能对应预期函数调用。
- `Gas`：是否异常。
- `Permission`：是否涉及 owner、admin、approve、transfer 等高风险操作。

## Proof 模板

```markdown
## 最小合约交互 proof

- Network：
- Contract Address：
- Read Function：
- Read Result Before：
- Write Function：
- Write Args：
- Transaction Hash：
- Explorer Link：
- Status：
- Read Result After：
- 我检查过的内容：
- 本次学到的内容：
```

## AI x Web3 边界

Agent 可以：

- 解释 ABI。
- 帮你区分读函数和写函数。
- 帮你生成调用脚本草稿。
- 帮你解码 calldata。
- 帮你整理 proof。

Agent 不应该：

- 替你点击钱包确认。
- 自动部署合约。
- 自动写入合约。
- 自动授权 Token。
- 保存或处理私钥、助记词。

## 当前状态

- 012 已进入学习中。
- 先学习最小合约读写闭环。
- 学完后再进行检查题或实践。
