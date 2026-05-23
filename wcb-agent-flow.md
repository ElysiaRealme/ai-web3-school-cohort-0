# WCB Agent 工作流

来源文档：https://web3career.build/llms.txt

## API 边界

- Base URL：`https://web3career.build`
- 主要 endpoint：`POST /api/agent/call`
- Catalog endpoint：`GET /api/agent/catalog`
- Secret 变量名：`WCB_AGENT_SECRET_API_KEY`

不要提交真实 secret key。它只能保存在本地环境变量、被 git 忽略的本地 `.env.local`，或 Agent 的 secret storage 中。

## 常用学员接口

- `users.getProfile`：读取当前 profile。
- `users.getMyPermissions`：读取当前权限。
- `tasks.listForLearner`：读取学员任务。
- `tasks.myTaskHistory`：读取任务历史。
- `tasks.submitEvidence`：在学员确认后提交任务 proof。
- `events.listForLearner`：读取学员会议。
- `events.getCalendarPublic`：读取公开日历。

## 写入安全规则

任何写入操作之前，例如 `tasks.submitEvidence`，都必须先展示将要提交的完整内容，并等待学员确认。

## 每日使用流程

1. 读取 WCB Learning 页面或 API 任务列表。
2. 将当前任务转换成最小路径、推荐路径和挑战路径。
3. 起草每日笔记和打卡内容。
4. 学员手动提交到 WCB，或明确确认 API 写入。
5. 将最终提交状态或链接记录到 `daily/YYYY-MM-DD.md`。
6. 对学习笔记变更执行状态检查和敏感信息扫描后，自动 commit 并 push 当前相关的公开安全文件。

## 笔记语言规则

- 默认使用中文记录学习笔记、任务说明、打卡草稿和 proof 说明。
- 英文仅保留在必要术语、课程名、接口名、命令、路径、URL、commit message 和原始引用中。
- 如果英文术语会影响理解，应在首次出现时给出中文解释。

## GitHub Proof 规则

学员已于 2026-05-23 授权未来学习工作流更新自动 commit 和 push。

- 只 stage 当前学习步骤相关文件。
- 保持无关未跟踪文件不变。
- 不提交 `.env`、API key、私钥、助记词、包含 secret 的截图或私人数据。
- push 后返回 commit hash 和 GitHub proof 链接。

## 2026-05-18 只读检查

- 使用 slug `AI-Web3-School` 调用 `program.getById` 成功。
- Program ID：`cmnx791nl008sru0167pzp4ki`。
- Program 状态：running。
- Program 日期：2026-05-18 至 2026-06-14。
- 当前关键权限：`USER`，无 admin 权限。
- `events.listForLearner` 返回了 2026-05-18 学员事件。
- `tasks.listForLearner` 需要具体 `trackId`；对于事件相关任务，可以从 learner events 取 task IDs 后使用 `tasks.listForLearnerByIds`。
