# 🚀 零环境构建 APK - GitHub Actions 方案

不需要安装 Android Studio！不需要安装 JDK！只需要一个 GitHub 账号，**100% 在线免费构建 APK**！

---

## 📋 完整步骤

### 第 1 步：创建 GitHub 仓库（5 分钟）

1. 访问 https://github.com/new 创建一个新仓库
   - 仓库名称：`LayerEraser`（或你喜欢的名字）
   - 选择 **Public** 或 **Private** 都可以
   - **不要**勾选 "Initialize this repository with a README"
   - 点击 **"Create repository"**

### 第 2 步：上传代码到 GitHub

在你的电脑上，打开终端（Terminal），执行以下命令：

```bash
cd /Users/Projects/图片小工具

# 初始化 Git
git init
git add .
git commit -m "Initial commit"

# 推送到 GitHub（把下面的 YOUR_USERNAME 换成你的 GitHub 用户名）
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/LayerEraser.git
git push -u origin main
```

### 第 3 步：等待 GitHub 自动构建 APK（2-5 分钟）

推送成功后，GitHub 会自动开始构建！

查看构建状态：
1. 打开你的 GitHub 仓库页面
2. 点击顶部的 **"Actions"** 标签
3. 点击最新的 workflow 运行记录
4. 等待构建完成（会显示绿色的 ✅）

### 第 4 步：下载 APK！

构建完成后：
1. 在同一个 workflow 页面往下滑
2. 找到 **"Artifacts"** 区域
3. 点击 **"layer-eraser-apk"** 下载
4. 解压后得到 `app-debug.apk`！

### 第 5 步：安装到手机

- 把 APK 传到手机
- 点击安装（需要允许"未知来源"应用）

---

## 📸 图示说明

| 步骤 | 说明 |
|------|------|
| 1 | 创建仓库 → 2 | 上传代码 → 3 | Actions 查看构建 → 4 | 下载 APK |

---

## ⚡ 高级用法

### 以后修改了代码怎么重新构建？

1. 修改代码
2. 提交并推送到 GitHub：
   ```bash
   git add .
   git commit -m "Update code"
   git push
   ```
3. GitHub 会**自动重新构建**！去 Actions 下载新的 APK 即可。

---

## 💡 提示

- 这是完全免费的！GitHub Actions 为公开仓库提供无限构建时间
- 每次 push 都会触发构建
- 你也可以手动触发构建：在 Actions 标签页点击 "Run workflow"
- APK 会保存 90 天

---

## 📞 遇到问题？

1. 确保你正确替换了 `YOUR_USERNAME`
2. 检查 Actions 里的构建日志
3. 确保 `.github/workflows/build-apk.yml` 文件已经上传

---

## 🎉 完成！

现在你拥有了一个自动构建 APK 的 CI/CD 流水线！每次推送代码都能得到新的 APK！
