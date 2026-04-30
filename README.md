# Tech Reviews - 数码好物精选

专业的数码产品评测网站，基于 Jekyll + GitHub Pages 构建。

## 本地开发

```bash
# 安装依赖
bundle install

# 本地预览
bundle exec jekyll serve
```

## 目录结构

```
.
├── _config.yml          # 站点配置
├── _layouts/            # 页面模板
├── _posts/              # 文章目录
├── _reviews/            # 评测文章
├── assets/              # 静态资源
└── generate_content.py  # 内容生成脚本
```

## 自动生成内容

运行内容生成脚本：

```bash
python3 generate_content.py
```

## 部署

推送到 GitHub 后自动部署到 GitHub Pages。
