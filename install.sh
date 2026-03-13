#!/usr/bin/env bash
# claude-code-zh 一键安装脚本
# 将 Skills、Rules、Prompts 安装到 ~/.claude 目录

set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

info() { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[✓]${NC} $1"; }

echo ""
echo "======================================"
echo "  claude-code-zh 安装程序"
echo "======================================"
echo ""

# 创建目标目录
mkdir -p "$CLAUDE_DIR/skills" "$CLAUDE_DIR/rules"

# 安装 Skills
info "安装 Skills..."
for skill_dir in "$REPO_DIR/skills"/*/; do
  skill_name=$(basename "$skill_dir")
  target="$CLAUDE_DIR/skills/$skill_name"
  if [[ -d "$target" ]]; then
    info "更新 skill: $skill_name"
    cp -r "$skill_dir" "$CLAUDE_DIR/skills/"
  else
    info "安装 skill: $skill_name"
    cp -r "$skill_dir" "$CLAUDE_DIR/skills/"
  fi
done
success "Skills 安装完成"

# 安装 Rules
info "安装 Rules..."
cp -r "$REPO_DIR/rules/"* "$CLAUDE_DIR/rules/" 2>/dev/null || true
success "Rules 安装完成"

echo ""
success "✅ claude-code-zh 安装完成！"
echo ""
echo "已安装以下内容:"
echo "  Skills: $(ls "$CLAUDE_DIR/skills/" | tr '\n' ' ')"
echo "  Rules: $(ls "$CLAUDE_DIR/rules/" | tr '\n' ' ')"
echo ""
echo "重启 Claude Code 后即可使用。"
