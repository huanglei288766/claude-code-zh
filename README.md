# Claude Code 中文增强 🇨🇳

> 专为中国开发者打造的 Claude Code Skills、Rules 和 Prompts 合集，覆盖主流中国技术栈。

[![Stars](https://img.shields.io/github/stars/huanglei288766/claude-code-zh?style=social)](https://github.com/huanglei288766/claude-code-zh)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## ✨ 特性

- 🌏 **原生中文** — 非机器翻译，专业术语表达准确
- 🛠️ **中国技术栈** — Spring Boot DDD、Vue3、微信小程序、MySQL、Redis
- 📦 **一键安装** — 单条命令即可配置完毕

## 🚀 快速开始

```bash
# 方式一：clone 后安装（推荐）
git clone https://github.com/huanglei288766/claude-code-zh.git
cd claude-code-zh
./install.sh

# 方式二：一键安装
curl -fsSL https://raw.githubusercontent.com/huanglei288766/claude-code-zh/main/install.sh | bash
```

安装后重启 Claude Code，即可使用所有中文 Skills。

## 📦 内容列表

### Skills（技能包）

| 技能 | 描述 | 技术栈 |
|------|------|--------|
| [spring-boot-ddd](skills/spring-boot-ddd/) | DDD 四层架构 + 充血模型 + Repository | Java 17 + Spring Boot 3 |
| [vue3-best-practice](skills/vue3-best-practice/) | 组合式 API + Pinia + Composables | Vue3 + TypeScript + Pinia |
| [miniprogram-dev](skills/miniprogram-dev/) | 微信小程序/uni-app 开发规范 | Taro / uni-app |
| [mysql-optimization](skills/mysql-optimization/) | 索引设计 + 慢查询优化 + 深分页 | MySQL 8.0 |
| [redis-patterns](skills/redis-patterns/) | 缓存三大问题 + 分布式锁 + 限流 | Redis 7 + Redisson |

### Rules（规则集）

| 规则 | 描述 |
|------|------|
| [java-coding-style](rules/java-coding-style.md) | Java 编码规范（阿里规约增强版） |

### Prompts（提示词）

| 提示词 | 用途 |
|--------|------|
| [code-review-cn](prompts/code-review-cn.md) | 中文代码审查（5维度） |
| [git-commit-cn](prompts/git-commit-cn.md) | 规范化 commit message |
| [sql-optimize](prompts/sql-optimize.md) | SQL 慢查询优化分析 |

## 🤝 贡献

欢迎贡献新的 Skills、Rules 和 Prompts！

**贡献方式**：
1. Fork 本仓库
2. 在对应目录下创建你的 Skill/Rule/Prompt（参考现有文件格式）
3. 提交 PR，附上简短说明

**特别欢迎**：
- Vue3 / React / Next.js 相关 Skills
- Go / Python 技术栈 Rules
- 更多数据库（PostgreSQL、MongoDB）优化 Skills

## 📊 Star 历史

[![Star History](https://api.star-history.com/svg?repos=huanglei288766/claude-code-zh&type=Date)](https://star-history.com/#huanglei288766/claude-code-zh)

## 📄 License

[MIT](LICENSE) © [huanglei288766](https://github.com/huanglei288766)
