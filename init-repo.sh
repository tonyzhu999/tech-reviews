#!/bin/bash
# 初始化并推送到GitHub的脚本

echo "=== 初始化 Git 仓库 ==="
git init

echo "=== 添加所有文件 ==="
git add .

echo "=== 提交更改 ==="
git commit -m "Initial commit: Tech Reviews site with auto-generated content"

echo ""
echo "=== 请执行以下命令推送到GitHub ==="
echo ""
echo "git remote add origin https://github.com/tonyzhu999/tech-reviews.git"
echo "git branch -M main"
echo "git push -u origin main"
echo ""
echo "或者如果你使用SSH："
echo ""
echo "git remote add origin git@github.com:tonyzhu999/tech-reviews.git"
echo "git branch -M main"
echo "git push -u origin main"
echo ""
echo "=== 推送后请在GitHub设置中启用GitHub Pages ==="
echo "1. 访问 https://github.com/tonyzhu999/tech-reviews/settings/pages"
echo "2. Source 选择 'Deploy from a branch'"
echo "3. Branch 选择 'gh-pages'"
echo "4. 点击 Save"
