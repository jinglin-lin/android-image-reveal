# 📱 图层擦除工具 - APK 构建指南

## 方法一：使用 Android Studio 构建（推荐）⭐️

### 1. 准备工作
- 下载并安装 [Android Studio](https://developer.android.com/studio)
- 确保电脑有至少 8GB 内存和 10GB 可用空间

### 2. 打开项目
1. 启动 Android Studio
2. 选择 **"Open an Existing Project"**
3. 选择文件夹：`/Users/Projects/图片小工具/android`
4. 等待 Gradle 同步完成（首次需要下载依赖，约 5-10 分钟）

### 3. 构建 APK
1. 菜单栏：**Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
2. 等待构建完成
3. 构建成功后点击通知中的 **"locate"** 找到 APK 文件
   - APK 位置：`android/app/build/outputs/apk/debug/app-debug.apk`

### 4. 安装到手机
- 复制 `app-debug.apk` 到手机
- 手机上点击安装（需要允许"未知来源"应用）

---

## 方法二：命令行构建（需要 Android SDK）

如果你已经安装了 Android SDK 和 Gradle：

```bash
cd /Users/Projects/图片小工具/android

# 构建 Debug APK
./gradlew assembleDebug

# APK 位置：android/app/build/outputs/apk/debug/app-debug.apk
```

---

## 项目结构说明

```
图片小工具/
├── layer-eraser.html      # 原 Web 应用
├── android/               # Android 项目根目录
│   ├── app/
│   │   ├── src/main/
│   │   │   ├── java/com/lasereraser/app/MainActivity.java   # 主 Activity
│   │   │   ├── assets/                                     # Web 资源
│   │   │   │   ├── index.html
│   │   │   │   ├── manifest.json
│   │   │   │   └── sw.js
│   │   │   ├── res/                                        # 资源文件
│   │   │   └── AndroidManifest.xml
│   │   └── build.gradle
│   └── build.gradle
└── APK_BUILD_GUIDE.md      # 本文件
```

---

## ✨ 应用特性

- ✅ 完全离线运行，不需要网络
- ✅ 支持本地图片导入
- ✅ 手动擦除 + 自动扩散双模式
- ✅ 软边笔刷 + 流畅动画
- ✅ 适配安卓 7.0+ (API 24+)

---

## 常见问题

**Q: 构建时提示缺少 SDK？**
A: Android Studio 会自动提示下载，按提示安装即可。

**Q: 手机提示"无法安装"？**
A: 请在手机设置中允许"安装未知来源应用"。

**Q: 想要正式签名的 Release APK？**
A: 使用 **Build** → **Generate Signed Bundle / APK** 菜单。
