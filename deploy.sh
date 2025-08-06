#!/bin/bash

# Krita AI 课程网站部署脚本
# 使用方法: ./deploy.sh

echo "🚀 开始部署 Krita AI 课程网站..."

# 检查是否安装了git
if ! command -v git &> /dev/null; then
    echo "❌ 错误: 未安装 Git，请先安装 Git"
    exit 1
fi

# 检查是否在正确的目录
if [ ! -f "kritaAI-course-detail.html" ]; then
    echo "❌ 错误: 请在包含 kritaAI-course-detail.html 的目录中运行此脚本"
    exit 1
fi

# 初始化git仓库（如果还没有）
if [ ! -d ".git" ]; then
    echo "📁 初始化 Git 仓库..."
    git init
fi

# 添加所有文件
echo "📝 添加文件到 Git..."
git add .

# 提交更改
echo "💾 提交更改..."
git commit -m "Update Krita AI course website $(date)"

# 检查是否设置了远程仓库
if ! git remote get-url origin &> /dev/null; then
    echo "⚠️  警告: 未设置远程仓库"
    echo "请按照以下步骤操作："
    echo "1. 在 GitHub 上创建新仓库"
    echo "2. 运行: git remote add origin https://github.com/你的用户名/仓库名.git"
    echo "3. 运行: git push -u origin main"
    exit 1
fi

# 推送到远程仓库
echo "📤 推送到远程仓库..."
git push origin main

echo "✅ 部署完成！"
echo ""
echo "📋 接下来的步骤："
echo "1. 进入 GitHub 仓库设置"
echo "2. 找到 'Pages' 选项"
echo "3. 选择 'Deploy from a branch'"
echo "4. 选择 'main' 分支和根目录"
echo "5. 保存设置"
echo ""
echo "🌐 几分钟后，您的网站将在以下地址可用："
echo "https://你的用户名.github.io/仓库名/"
echo ""
echo "📊 要启用 Google Analytics，请："
echo "1. 注册 Google Analytics 账号"
echo "2. 获取跟踪ID"
echo "3. 替换 HTML 文件中的 'GA_MEASUREMENT_ID'"
echo ""
echo "🎉 祝您使用愉快！" 