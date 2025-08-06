@echo off
chcp 65001 >nul
title Krita AI 课程网站快速部署工具

echo.
echo ========================================
echo 🚀 Krita AI 课程网站快速部署工具
echo ========================================
echo.

echo 📋 当前状态检查：
echo.

REM 检查Git状态
git status >nul 2>&1
if errorlevel 1 (
    echo ❌ Git仓库未初始化
    echo 正在初始化Git仓库...
    git init
) else (
    echo ✅ Git仓库已初始化
)

REM 检查是否有未提交的更改
git diff --quiet
if errorlevel 1 (
    echo 📝 发现未提交的更改，正在提交...
    git add .
    git commit -m "Update website content %date% %time%"
) else (
    echo ✅ 所有更改已提交
)

echo.
echo ========================================
echo 📋 GitHub 仓库设置步骤
echo ========================================
echo.
echo 请按照以下步骤在 GitHub 上创建仓库：
echo.
echo 1️⃣ 打开浏览器，访问 https://github.com
echo 2️⃣ 登录您的 GitHub 账号
echo 3️⃣ 点击右上角 "+" 号，选择 "New repository"
echo 4️⃣ 填写仓库信息：
echo    - Repository name: krita-ai-course
echo    - Description: Krita AI 数字艺术创作课程网站
echo    - Visibility: 选择 Public
echo    - 不要勾选 "Add a README file"
echo 5️⃣ 点击 "Create repository"
echo.
echo 创建完成后，您会看到一个页面，显示仓库的URL
echo.

set /p repo_url="🔗 请输入您的 GitHub 仓库 URL (例如: https://github.com/用户名/krita-ai-course.git): "

if "%repo_url%"=="" (
    echo.
    echo ❌ 错误: 请输入有效的仓库 URL
    echo.
    pause
    exit /b 1
)

echo.
echo 🔗 正在连接到 GitHub 仓库...
git remote add origin %repo_url%

if errorlevel 1 (
    echo.
    echo ⚠️  警告: 远程仓库可能已存在，尝试更新...
    git remote set-url origin %repo_url%
)

echo.
echo 📤 正在推送代码到 GitHub...
echo 注意: 如果提示输入用户名和密码，请使用：
echo - 用户名: 您的 GitHub 用户名
echo - 密码: 您的 GitHub Personal Access Token (不是登录密码)
echo.

git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ 推送失败！可能的原因：
    echo 1. 网络连接问题
    echo 2. GitHub 认证失败
    echo 3. 仓库URL不正确
    echo.
    echo 💡 解决方案：
    echo 1. 检查网络连接
    echo 2. 确保使用 Personal Access Token 作为密码
    echo 3. 验证仓库URL是否正确
    echo.
    echo 🔗 如何获取 Personal Access Token：
    echo 1. 访问 https://github.com/settings/tokens
    echo 2. 点击 "Generate new token (classic)"
    echo 3. 选择 "repo" 权限
    echo 4. 生成并复制 token
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ 代码推送成功！
echo ========================================
echo.
echo 📋 接下来启用 GitHub Pages：
echo.
echo 1️⃣ 在浏览器中打开您的 GitHub 仓库页面
echo 2️⃣ 点击 "Settings" 标签
echo 3️⃣ 在左侧菜单中找到 "Pages"
echo 4️⃣ 配置设置：
echo    - Source: 选择 "Deploy from a branch"
echo    - Branch: 选择 "main"
echo    - Folder: 选择 "/ (root)"
echo 5️⃣ 点击 "Save"
echo.
echo ⏰ 等待 5-10 分钟让 GitHub Pages 生效
echo.
echo 🌐 您的网站将在以下地址可用：
echo https://您的用户名.github.io/krita-ai-course/
echo.
echo 📊 要检查部署状态：
echo 1. 进入仓库的 "Actions" 标签
echo 2. 查看 Pages 部署状态
echo.
echo 🎉 部署完成！祝您使用愉快！
echo.
pause 