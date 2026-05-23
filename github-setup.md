# GitHub 学习仓库设置

本地 repo 路径：

```text
D:\WORKSPACE\AIxWeb3School\Note\ai-web3-school-cohort-0
```

建议 GitHub repo 名称：

```text
ai-web3-school-cohort-0
```

建议可见性：public。

描述：

```text
Personal learning journal and proof-of-work for AI x Web3 School.
```

## 需要手动确认的内容

创建公开 GitHub repo 前，确认：

- Repo 名称。
- Public 或 private 可见性。
- 是否将当前本地路径 push 到该 remote repo。

## GitHub CLI 流程

如果 `gh` 不可用，从 https://cli.github.com/ 安装 GitHub CLI。

然后运行：

```powershell
gh auth login
gh auth status
```

确认后，从当前本地 repo 创建 remote：

```powershell
gh repo create ai-web3-school-cohort-0 --public --description "Personal learning journal and proof-of-work for AI x Web3 School" --source . --remote origin --push
```

## 常规 commit 流程

```powershell
git status --short
git add .
git commit -m "Initialize AI Web3 School learning journal"
git push
```
