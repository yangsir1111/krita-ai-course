@echo off
chcp 65001 >nul
echo 🚀 GitHub 仓库设置向导
echo.

echo 📋 请按照以下步骤在 GitHub 上创建仓库：
echo.
echo 1. 访问 https://github.com
echo 2. 点击右上角 "+" 号，选择 "New repository"
echo 3. 仓库名称：krita-ai-course
echo 4. 描述：Krita AI 数字艺术创作课程网站
echo 5. 选择 Public
echo 6. 不要勾选 "Add a README file"
echo 7. 点击 "Create repository"
echo.

set /p repo_url="请输入您的 GitHub 仓库 URL (例如: https://github.com/用户名/krita-ai-course.git): "

if "%repo_url%"=="" (
    echo ❌ 错误: 请输入有效的仓库 URL
    pause
    exit /b 1
)

echo.
echo 🔗 正在连接到远程仓库...
git remote add origin %repo_url%

if errorlevel 1 (
    echo ❌ 错误: 无法添加远程仓库
    echo 请检查 URL 是否正确
    pause
    exit /b 1
)

echo.
echo 📤 正在推送代码到 GitHub...
git push -u origin main

if errorlevel 1 (
    echo ❌ 错误: 推送失败
    echo 请检查网络连接和 GitHub 认证
    pause
    exit /b 1
)

echo.
echo ✅ 代码已成功推送到 GitHub！
echo.
echo 📋 接下来启用 GitHub Pages：
echo 1. 进入您的 GitHub 仓库页面
echo 2. 点击 "Settings" 标签
echo 3. 在左侧菜单中找到 "Pages"
echo 4. Source 选择 "Deploy from a branch"
echo 5. Branch 选择 "main"，文件夹选择 "/ (root)"
echo 6. 点击 "Save"
echo.
echo 🌐 几分钟后，您的网站将在以下地址可用：
echo https://您的用户名.github.io/krita-ai-course/
echo.
echo �� 部署完成！祝您使用愉快！
pause 