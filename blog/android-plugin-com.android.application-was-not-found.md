今天刚安装的android studio， new project后发现报错

Plugin Repositories (could not resolve plugin artifact 'com.android.application:com.android.application.gradle.plugin:8.0.2')

Plugin [id: 'com.android.application', version: 'x.x.x', apply: false] was not found

这就有趣了，难道是studio的bug？

后来注意到gradle版本是8.0

会不会是版本太高导致当前jdk版本（jdk-11）无法支撑？

于是降低gradle版本到7.6.2，完美解决。