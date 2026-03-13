# Git Commit Message 生成 Prompt

使用场景：根据 `git diff` 内容自动生成规范的 commit message。

---

## Prompt 内容

```
根据以下 git diff，生成符合 Conventional Commits 规范的 commit message。

要求：
1. 第一行：<type>: <简短英文描述>（不超过72字符）
2. type 选择：feat / fix / refactor / docs / test / chore / perf / ci
3. 空一行后：中文说明（可选，说明为什么这样改，而不是改了什么）
4. 如有 Breaking Change，加 BREAKING CHANGE: 说明

输出格式示例：
feat: add feishu MCP server for message sending

支持通过 Claude Code 直接发送飞书消息、创建文档和管理日历，
覆盖消息/文档/日历/任务四大能力，自动处理 token 刷新。
```

---

## 使用方式

```bash
git diff --staged | claude "根据上面的 diff，生成 commit message"
```
