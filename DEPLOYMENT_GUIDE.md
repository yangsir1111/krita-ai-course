# 🚀 Krita AI 课程网站部署指南

## 📋 部署前准备

### 1. 确保文件完整
您的项目目录应包含以下文件：
```
yang/瑞云、/
├── kritaAI-course-detail.html  # 主页面
├── kritaAI.html                # 原始工具页面
├── README.md                   # 项目说明
├── config.json                 # 配置文件
├── deploy.bat                  # Windows部署脚本
├── deploy.sh                   # Linux/Mac部署脚本
├── setup-github.bat           # GitHub设置向导
└── DEPLOYMENT_GUIDE.md        # 本文件
```

### 2. 检查Git安装
```bash
git --version
```
如果未安装，请从 https://git-scm.com/download/win 下载安装。

## 🎯 快速部署步骤

### 方法一：使用自动化脚本（推荐）

1. **双击运行 `setup-github.bat`**
   - 脚本会引导您完成所有步骤
   - 按照提示输入GitHub仓库URL

### 方法二：手动部署

#### 步骤1：创建GitHub仓库

1. 访问 https://github.com 并登录
2. 点击右上角 "+" 号 → "New repository"
3. 填写仓库信息：
   - **Repository name**: `krita-ai-course`
   - **Description**: `Krita AI 数字艺术创作课程网站`
   - **Visibility**: 选择 "Public"
   - **不要**勾选 "Add a README file"
4. 点击 "Create repository"

#### 步骤2：连接本地仓库

在项目目录中运行以下命令：

```bash
# 添加远程仓库（替换为您的实际URL）
git remote add origin https://github.com/您的用户名/krita-ai-course.git

# 推送代码到GitHub
git push -u origin main
```

#### 步骤3：启用GitHub Pages

1. 进入您的GitHub仓库页面
2. 点击 "Settings" 标签
3. 在左侧菜单中找到 "Pages"
4. 配置设置：
   - **Source**: 选择 "Deploy from a branch"
   - **Branch**: 选择 "main"
   - **Folder**: 选择 "/ (root)"
5. 点击 "Save"

#### 步骤4：访问网站

几分钟后，您的网站将在以下地址可用：
```
https://您的用户名.github.io/krita-ai-course/
```

## 🔧 故障排除

### 问题1：Git认证失败
**解决方案**：
1. 使用Personal Access Token：
   - 进入GitHub Settings → Developer settings → Personal access tokens
   - 生成新token，选择repo权限
   - 使用token作为密码

2. 或使用GitHub CLI：
   ```bash
   # 安装GitHub CLI
   winget install GitHub.cli
   
   # 登录
   gh auth login
   ```

### 问题2：推送被拒绝
**解决方案**：
```bash
# 强制推送（谨慎使用）
git push -u origin main --force
```

### 问题3：GitHub Pages不显示
**解决方案**：
1. 检查仓库是否为Public
2. 确认文件在根目录
3. 等待5-10分钟让GitHub Pages生效
4. 检查仓库的Actions标签查看部署状态

### 问题4：页面样式问题
**解决方案**：
1. 检查浏览器控制台是否有错误
2. 确认所有CSS和图片路径正确
3. 清除浏览器缓存

## 📊 网站优化

### 1. 自定义域名
1. 购买域名（如阿里云、腾讯云）
2. 在GitHub Pages设置中添加自定义域名
3. 在域名提供商处添加CNAME记录

### 2. 启用HTTPS
GitHub Pages自动提供HTTPS，无需额外配置。

### 3. 性能优化
- 压缩图片
- 使用CDN
- 启用浏览器缓存

## 🔄 更新网站

### 方法1：使用脚本
```bash
# Windows
deploy.bat

# Linux/Mac
./deploy.sh
```

### 方法2：手动更新
```bash
git add .
git commit -m "Update website content"
git push origin main
```

## 📈 监控和分析

### 1. 访问统计
- GitHub仓库的Insights标签显示访问统计
- 或集成Google Analytics

### 2. 性能监控
- 使用Google PageSpeed Insights
- 监控加载时间和用户体验

## 🆘 获取帮助

如果遇到问题：
1. 检查本指南的故障排除部分
2. 查看GitHub Pages文档：https://pages.github.com/
3. 在GitHub Issues中提问

## 📞 联系支持

- 📧 邮箱：contact@your-domain.com
- 💬 微信：your-wechat-id
- 🐛 GitHub Issues：提交问题报告

---

© 2024 Krita AI课程. 保留所有权利。 