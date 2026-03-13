# Claude Code 中文增强 🇨🇳

> 专为中国开发者打造的 Claude Code Skills、Rules 和 Prompts 合集，覆盖主流中国技术栈，支持国产大模型。

[![Stars](https://img.shields.io/github/stars/huanglei288766/claude-code-zh?style=social)](https://github.com/huanglei288766/claude-code-zh)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## ✨ 特性

- 🌏 **原生中文** — 非机器翻译，专业术语表达准确
- 🛠️ **中国技术栈** — Spring Boot、Vue3、微信小程序、uni-app 等
- 🤖 **国产模型适配** — DeepSeek、通义千问、文心一言、智谱 AI
- 📦 **一键安装** — 单条命令即可配置完毕
- 🔄 **持续更新** — 每周新增 Skills

## 🚀 快速开始

```bash
# 方式一：一键安装脚本
curl -fsSL https://raw.githubusercontent.com/huanglei288766/claude-code-zh/main/install.sh | bash

# 方式二：手动安装
git clone https://github.com/huanglei288766/claude-code-zh.git
cd claude-code-zh
./install.sh
```

安装后重启 Claude Code，即可使用所有中文 Skills。

## 📦 内容列表

### Skills（技能包）

| 技能 | 描述 | 技术栈 |
|------|------|--------|
| [spring-boot-ddd](skills/spring-boot-ddd/) | DDD 分层架构 + Spring Boot 完整实现 | Java 17 + Spring Boot 3 |
| [vue3-best-practice](skills/vue3-best-practice/) | Vue3 组合式 API 最佳实践 | Vue3 + TypeScript + Pinia |
| [miniprogram-dev](skills/miniprogram-dev/) | 微信小程序/uni-app 开发规范 | Taro / uni-app |
| [mysql-optimization](skills/mysql-optimization/) | MySQL 查询优化 + 索引设计 | MySQL 8.0 |
| [redis-patterns](skills/redis-patterns/) | Redis 常见场景与最佳实践 | Redis 7 |

### Rules（规则集）

| 规则 | 描述 |
|------|------|
| [java-coding-style](rules/java-coding-style.md) | Java 编码规范（阿里规约增强版） |
| [vue-coding-style](rules/vue-coding-style.md) | Vue3 项目规范 |
| [api-design-cn](rules/api-design-cn.md) | 中文 API 设计规范 |

### Prompts（提示词）

| 提示词 | 用途 |
|--------|------|
| [code-review-cn](prompts/code-review-cn.md) | 中文代码审查 |
| [git-commit-cn](prompts/git-commit-cn.md) | 规范化 commit message |
| [sql-optimize](prompts/sql-optimize.md) | SQL 优化分析 |

## 🔧 国产模型配置

### DeepSeek

```json
// ~/.claude.json
{
  "apiProvider": "deepseek",
  "apiKey": "your-deepseek-key",
  "model": "deepseek-coder-v3"
}
```

### 通义千问

```json
{
  "apiProvider": "qwen",
  "apiKey": "your-qwen-key",
  "model": "qwen-coder-plus"
}
```

## 🤝 贡献指南

欢迎贡献！请阅读 [CONTRIBUTING.md](CONTRIBUTING.md)。

每周五会合并当周 PR，并在 V2EX / 掘金发布更新日志。

## 📊 Star 历史

[![Star History](https://api.star-history.com/svg?repos=huanglei288766/claude-code-zh&type=Date)](https://star-history.com/#huanglei288766/claude-code-zh)

## 📄 License

MIT © [huanglei288766](https://github.com/huanglei288766)
