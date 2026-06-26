# 图层擦除工具 🎨

一个简单易用的图片图层擦除工具，支持 Web 和 Android APK！

---

## 🔥 零环境构建 APK - GitHub Actions（推荐！⭐️）

**不需要安装 Android Studio！不需要安装 JDK！** 只需要一个 GitHub 账号，100% 在线免费构建！

### 快速开始（5 分钟）

1. **在 GitHub 创建仓库**：https://github.com/new
2. **运行上传脚本**：
   ```bash
   cd /Users/Projects/图片小工具
   ./push_to_github.sh
   ```
3. **等待自动构建**（2-5 分钟）
4. **去 Actions 下载 APK！**

👉 详细教程：[GITHUB_BUILD_GUIDE.md](./GITHUB_BUILD_GUIDE.md)

---

## 📦 项目文件

| 文件 | 说明 |
|------|------|
| `layer-eraser.html` | 原版 Web 应用，直接在浏览器打开 |
| `android/` | 完整的 Android 项目源码 |
| `push_to_github.sh` | ⭐ 快速上传脚本 |
| `.github/workflows/build-apk.yml` | GitHub Actions 自动构建配置 |
| `APK_BUILD_GUIDE.md` | Android Studio 构建指南 |
| `GITHUB_BUILD_GUIDE.md` | ⭐ GitHub Actions 构建指南（推荐） |

---

## 🚀 快速使用

### Web 版本
直接用浏览器打开 `layer-eraser.html` 即可使用！

### Android APK 版本
- **方案 A（推荐）**：GitHub Actions 在线构建 → [GITHUB_BUILD_GUIDE.md](./GITHUB_BUILD_GUIDE.md)
- **方案 B**：使用 Android Studio 本地构建 → [APK_BUILD_GUIDE.md](./APK_BUILD_GUIDE.md)

---

## ✨ 功能特点

- 🖼️ 双图层图片叠加（A 在上，B 在下）
- 🖌️ **手动擦除模式**：按住滑动自由擦除
- 🌊 **自动扩散模式**：点击一下，自动从下往上扫描扩散
- 💨 软边笔刷，羽化边缘过渡自然
- 📱 完全支持触摸操作
- 🔌 纯离线运行，不需要网络

---

## 📱 Android 项目结构

```
android/
├── app/
│   ├── src/main/
│   │   ├── java/com/lasereraser/app/MainActivity.java
│   │   ├── assets/              # Web 资源（HTML/JS）
│   │   ├── res/                 # Android 资源
│   │   └── AndroidManifest.xml
│   └── build.gradle
├── build.gradle
├── settings.gradle
├── gradle.properties
└── gradlew                     # Gradle 构建脚本
```

---

## 📝 总结

| 方式 | 难度 | 需要安装 | 速度 |
|------|------|----------|------|
| GitHub Actions | ⭐ 简单 | 无 | 2-5 分钟 |
| Android Studio | ⭐⭐⭐ 中等 | Android Studio, JDK | 取决于电脑 |

推荐使用 **GitHub Actions** 方案，省时省心！

