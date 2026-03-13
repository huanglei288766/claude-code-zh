#!/usr/bin/env bash
# claude-code-zh 一键安装脚本
# 将 Skills、Rules、Prompts 安装到 ~/.claude 目录

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

info() { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[✓]${NC} $1"; }
warn() { echo -e "${YELLOW}[WARN]${NC} $1"; }

echo ""
echo "======================================"
echo "  claude-code-zh 安装程序"
echo "======================================"
echo ""
echo "安装目录: $CLAUDE_DIR"
echo ""

# 创建目标目录
mkdir -p "$CLAUDE_DIR/skills" "$CLAUDE_DIR/rules" "$CLAUDE_DIR/prompts"

# 安装 Skills
info "安装 Skills..."
for skill_dir in "$REPO_DIR/skills"/*/; do
  [ -d "$skill_dir" ] || continue
  skill_name=$(basename "$skill_dir")
  cp -r "$skill_dir" "$CLAUDE_DIR/skills/"
  info "  $skill_name"
done
success "Skills 安装完成"

# 安装 Rules
info "安装 Rules..."
if ls "$REPO_DIR/rules/"*.md 1>/dev/null 2>&1; then
  cp "$REPO_DIR/rules/"*.md "$CLAUDE_DIR/rules/"
  success "Rules 安装完成"
else
  warn "未找到 Rules 文件，跳过"
fi

# 安装 Prompts
info "安装 Prompts..."
if ls "$REPO_DIR/prompts/"*.md 1>/dev/null 2>&1; then
  cp "$REPO_DIR/prompts/"*.md "$CLAUDE_DIR/prompts/"
  success "Prompts 安装完成"
else
  warn "未找到 Prompts 文件，跳过"
fi

echo ""
success "claude-code-zh 安装完成！"
echo ""
echo "重启 Claude Code 后即可使用。"
