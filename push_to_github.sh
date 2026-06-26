#!/bin/bash
# 快速上传到 GitHub 并触发 APK 构建脚本

echo "=============================================="
echo "  🚀 图层擦除工具 - GitHub APK 构建脚本"
echo "=============================================="
echo ""

# 检查是否在正确的目录
if [ ! -f "layer-eraser.html" ]; then
    echo "❌ 错误：请在 /Users/Projects/图片小工具 目录下运行此脚本"
    exit 1
fi

echo "📦 步骤 1：初始化 Git..."
git init
git add .

echo ""
echo "✏️  步骤 2：请输入你的 GitHub 用户名"
read -p "GitHub 用户名: " GITHUB_USERNAME

echo ""
echo "✏️  步骤 3：请输入仓库名称（例如 LayerEraser）"
read -p "仓库名称: " REPO_NAME

echo ""
echo "📝 提交代码..."
git commit -m "Initial commit" 2>/dev/null || git commit -m "Update code"

echo ""
echo "🔗 设置远程仓库..."
git branch -M main
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

echo ""
echo "🚀 推送到 GitHub！"
echo ""
echo "注意：如果这是第一次推送，请确保："
echo "1. 你已经在 GitHub 上创建了仓库 $REPO_NAME"
echo "2. 你有推送权限"
echo ""
read -p "按回车键继续，或 Ctrl+C 取消..."

git push -u origin main

echo ""
echo "✅ 代码已推送！"
echo ""
echo "下一步："
echo "1. 打开 https://github.com/$GITHUB_USERNAME/$REPO_NAME/actions"
echo "2. 等待构建完成（2-5 分钟）"
echo "3. 下载 APK！"
echo ""
echo "构建好的 APK 位置："
echo "仓库 → Actions → 最新的 workflow → Artifacts → layer-eraser-apk"
echo ""
