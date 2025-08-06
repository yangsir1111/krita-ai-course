# Krita AI 课程网站

## 项目简介
这是一个专业的Krita AI数字艺术创作课程展示网站，包含课程详情、学习目标、课程大纲等内容。

## 文件结构
```
yang/瑞云、/
├── kritaAI.html              # 原始工具页面
├── kritaAI-course-detail.html # 课程详情页面
└── README.md                 # 项目说明文档
```

## 发布到线上

### 方法一：GitHub Pages（推荐）

1. **创建GitHub仓库**
   ```bash
   # 在GitHub上创建新仓库，例如：krita-ai-course
   ```

2. **上传文件到GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yangsir/krita-ai-course.git
   git push -u origin main
   ```

3. **启用GitHub Pages**
   - 进入仓库设置（Settings）
   - 找到Pages选项
   - 选择Source为"Deploy from a branch"
   - 选择main分支和根目录
   - 保存设置

4. **访问网站**
   - 网站将在几分钟后可用
   - 地址格式：`https://yangsir.github.io/krita-ai-course/`

### 方法二：Netlify（免费）

1. **注册Netlify账号**
   - 访问 https://netlify.com
   - 使用GitHub账号登录

2. **部署网站**
   - 点击"New site from Git"
   - 选择GitHub仓库
   - 选择分支（main）
   - 点击"Deploy site"

3. **自定义域名（可选）**
   - 在站点设置中可以绑定自定义域名

### 方法三：Vercel（免费）

1. **注册Vercel账号**
   - 访问 https://vercel.com
   - 使用GitHub账号登录

2. **导入项目**
   - 点击"New Project"
   - 选择GitHub仓库
   - 保持默认设置，点击"Deploy"

### 方法四：传统虚拟主机

1. **购买虚拟主机服务**
   - 阿里云、腾讯云等云服务商
   - 或使用传统虚拟主机服务

2. **上传文件**
   - 使用FTP工具上传HTML文件
   - 确保文件结构正确

3. **配置域名**
   - 将域名解析到服务器IP
   - 配置虚拟主机

## 优化建议

### SEO优化
```html
<!-- 在HTML头部添加meta标签 -->
<meta name="description" content="Krita AI数字艺术创作课程，掌握AI辅助绘画技巧">
<meta name="keywords" content="Krita,AI,数字绘画,课程,教程">
<meta name="author" content="您的名字">
```

### 性能优化
1. **压缩图片**
   - 使用WebP格式
   - 压缩图片大小

2. **CDN加速**
   - 使用CDN服务加速静态资源
   - 提高访问速度

3. **缓存策略**
   - 设置适当的缓存头
   - 减少重复请求

### 安全考虑
1. **HTTPS**
   - 确保使用HTTPS协议
   - 保护用户数据安全

2. **内容安全策略**
   - 添加CSP头
   - 防止XSS攻击

## 维护更新

### 定期更新
- 更新课程内容
- 修复bug和问题
- 优化用户体验

### 监控分析
- 使用Google Analytics跟踪访问
- 监控网站性能
- 收集用户反馈

## 技术支持

如有问题，请通过以下方式联系：
- 邮箱：your-email@example.com
- GitHub Issues：提交问题报告

---

© 2024 Krita AI课程. 保留所有权利。 