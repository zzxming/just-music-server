# just-music后端

项目 just-music 的后端服务器代码，接口信息在 api.md 中

# 安装与运行

克隆项目
```
git clone https://github.com/zzxming/just-music-server.git
```

进入目录安装运行依赖
```
npm install
```

进入 `db.js` 更改 `MySQL` 配置

启动服务
```
npm run start
```


# 其他

数据库只是用于记录本地电脑有的音频文件，可以不需要，不影响网易云音乐和哔哩哔哩的音频获取

如果想要获取到本地歌曲请在 config 文件中修改音频存放路径，并在数据库中存入对应数据

创建歌单信息均保存在浏览器，内存有限

