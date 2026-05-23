# Learning Agent Setup 证明材料

日期：2026-05-23

## 目的

本仓库是学员在 AI x Web3 School 中使用的 proof-of-work 工作区。Learning Agent 的职责是：

- 阅读课程资料。
- 规划 Week 1 任务。
- 维护每日笔记。
- 生成可公开的 proof 链接。
- 起草 WCB 打卡内容。
- 沉淀 Handbook feedback 候选。

Agent 不替代学员理解课程，也不替代学员完成需要人工确认的动作。

## 工作区

本地路径：

```text
D:\WORKSPACE\AIxWeb3School\Note\ai-web3-school-cohort-0
```

公开 GitHub 仓库：

```text
https://github.com/ElysiaRealme/ai-web3-school-cohort-0
```

核心目录：

- `daily/`：每日学习笔记和打卡草稿。
- `tasks/`：任务计划、路线架构、来源读取记录和 proof 文档。
- `experiments/`：概念卡片、demo、quiz 和小型学习产物。
- `handbook-feedback/`：Handbook 问题、建议和有来源支撑的反馈。
- `submissions/`：WCB 提交草稿和 proof pack。
- `hackathon/`：Hackathon idea 和项目种子。
- `templates/`：可复用笔记模板。

## 来源读取流程

Agent 使用以下来源：

- Handbook：https://aiweb3.school/zh/handbook/
- 启动 Prompt：https://aiweb3.school/learning-agent.zh.txt
- WCB Learning：https://web3career.build/zh/programs/AI-Web3-School#tab=learning
- WCB Agent API 文档：https://web3career.build/llms.txt
- Week 1 Notion 来源：https://ethpanda.notion.site/Week-1-AI-Web3-354bbd63be878198afc4f155b5c3a69f

Notion 来源处理：

- 先尝试直接 URL 和 `www.notion.so` 变体。
- 如果只拿到轻量网页壳，就使用 Playwright 进行本地浏览器访问。
- 将抽取到的结构记录到 `tasks/week1-notion-source.md`。

WCB 来源处理：

- 使用只读 API 调用查询任务和日程状态。
- Secret 只放在本地 `.env` 或环境变量中。
- 不提交 API key。
- 任何写入操作都必须先展示完整 payload，并等待学员明确确认。

## 每日工作流

1. 读取 WCB 状态和日程。
2. 读取相关 Handbook / Notion 章节。
3. 决定下一个 00X 模块。
4. 只向学员询问必要的学习判断。
5. 生成或更新 `daily/YYYY-MM-DD.md`。
6. 更新 `tasks/week1-00x-learning-route.md` 的路线状态。
7. 执行 git 状态检查和敏感信息扫描。
8. 提交并推送相关学习文件。
9. 返回 GitHub proof 链接。

## 自动 commit / push 规则

学员已授权未来学习工作流变更自动发布到 GitHub。

默认行为：

- 学习笔记、路线文件、任务笔记、反馈草稿或提交草稿更新后，自动 commit 并 push。
- 只 stage 当前学习步骤相关文件。
- 不 stage 无关未跟踪文件。
- 不提交 `.env`、API key、私钥、助记词、包含 secret 的截图或私人数据。
- 使用简短 commit message，例如：
  - `docs: add week1 learning agent setup proof`
  - `docs: add week1 concept cards`
  - `docs: add week1 proof pack`

## 安全边界

允许 Agent 执行：

- 读取公开课程页面和本地笔记。
- 调用 WCB 只读接口。
- 生成学习计划、笔记、打卡草稿和 proof pack。
- 准备 GitHub commit 并推送可公开 proof。

必须人工门控：

- WCB 写入提交。
- GitHub 之外的公开平台发帖。
- 钱包签名。
- Token 授权。
- 转账。
- 合约部署或合约写入。

禁止 Agent 执行：

- 读取、存储、打印或提交私钥和助记词。
- 自动签名、授权、转账或写入合约。
- 提交 `.env` 中的 secret。

## Proof 材料

当前公开 proof 链接：

- 仓库：https://github.com/ElysiaRealme/ai-web3-school-cohort-0
- 路线架构：https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/tasks/week1-00x-learning-route.md
- Notion 来源读取记录：https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/tasks/week1-notion-source.md
- 006 每日笔记：https://github.com/ElysiaRealme/ai-web3-school-cohort-0/blob/main/daily/2026-05-23.md

## WCB 打卡草稿

我完成了 Learning Agent Setup 的整理：当前学习仓库已经作为 AI x Web3 School 的 proof-of-work 工作区使用，包含每日笔记、任务路线、来源读取记录、Handbook feedback、提交草稿和 Hackathon ideas 等目录。

本次重点整理了 Agent 的工作边界：可以读取课程资料、WCB 只读状态、生成学习笔记、维护 GitHub proof；但 WCB 写入、钱包签名、授权、转账、合约写入都必须由我人工确认。后续学习产出会自动形成 GitHub commit 和公开 proof 链接。
