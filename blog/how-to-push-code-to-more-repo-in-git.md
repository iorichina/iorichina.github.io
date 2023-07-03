# 如何一次性推送给多个仓库


## 摘要
比如再码云和github都有相同的仓库，及代码备份，那么如何从一个仓库拉代码，一次性push到所有仓库？


## 查看remote配置
```
$ git remote -v
origin  https://gitee.com/iorichina/iorichina.git (fetch)
origin  https://gitee.com/iorichina/iorichina.git (push)
```

## 增加仓库
```
$ git remote set-url --add origin https://github.com/iorichina/iorichina.github.io.git
```

## 查看remote配置
```
$ git remote -v
origin  https://gitee.com/iorichina/iorichina.git (fetch)
origin  https://gitee.com/iorichina/iorichina.git (push)
origin  https://github.com/iorichina/iorichina.github.io.git (push)
```
