#!/bin/bash

# MTranServer Bob插件 v1.1.0 发布脚本
# 使用GitHub CLI创建release

echo "🚀 开始创建 MTranServer Bob插件 v1.1.0 release..."

# 检查GitHub CLI是否安装
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) 未安装"
    echo "请安装GitHub CLI: https://cli.github.com/"
    exit 1
fi

# 检查是否已登录GitHub CLI
if ! gh auth status &> /dev/null; then
    echo "❌ 请先登录GitHub CLI:"
    echo "gh auth login"
    exit 1
fi

# 创建release
echo "📦 创建GitHub release..."
gh release create v1.1.0 \
  --title "MTranServer Bob插件 v1.1.0" \
  --notes "# MTranServer Bob插件 v1.1.0 发布说明

## 🚀 新功能
- **适配 MTranServer 3.0 版本** - 完全兼容最新的MTranServer 3.0 API
- **支持中文繁体翻译** - 现在可以正确区分简体中文(zh-Hans)和繁体中文(zh-Hant)

## 🔧 改进
- 优化语言代码映射，提升翻译准确性
- 改进繁体中文支持，提供更精确的翻译结果

## 📋 技术变更
- 更新 `src/lang.js` 中的语言映射配置
- 版本号从 1.0.0 升级到 1.1.0

## 安装说明
1. 下载 `MTranServer-1.1.0.bobplugin` 文件
2. 双击安装到 Bob
3. 在 Bob 偏好设置中配置您的 MTranServer API 地址

## 兼容性
- 需要 Bob 0.5.0 或更高版本
- 兼容 MTranServer 3.0+ 版本" \
  --draft=false \
  --prerelease=false \
  MTranServer-1.1.0.bobplugin

echo "✅ release创建完成！"
echo "🔗 访问: https://github.com/xxnuo/bob-plugin-MTranServer/releases/tag/v1.1.0"