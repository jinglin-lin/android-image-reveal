const fs = require('fs');
const path = require('path');

// 确保 www 目录存在
const wwwDir = path.join(__dirname, 'www');
if (!fs.existsSync(wwwDir)) {
  fs.mkdirSync(wwwDir);
}

// 复制文件
const files = ['layer-eraser.html', 'manifest.json', 'sw.js'];
files.forEach(file => {
  const src = path.join(__dirname, file);
  const dest = path.join(wwwDir, file === 'layer-eraser.html' ? 'index.html' : file);
  if (fs.existsSync(src)) {
    fs.copyFileSync(src, dest);
    console.log(`✅ 复制 ${file} -> www/${file === 'layer-eraser.html' ? 'index.html' : file}`);
  }
});

console.log('\n✅ 构建完成！');
