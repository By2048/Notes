## ADB命令

- 检测设备是否连接正常
    - `adb devices`
- 列出所有包
    - `adb shell pm list packages`



## 卸载内置包

|                      |                                                                     |
|----------------------|---------------------------------------------------------------------|
| 小米系统广告解决方案 | `adb shell pm uninstall --user 0 com.miui.systemAdSolution`         |
| 小米广告分析         | `adb shell pm uninstall --user 0 com.miui.analytics`                |
| 游戏中心服务         | `adb shell pm uninstall --user 0 com.xiaomi.gamecenter.sdk.service` |
| 搜狗输入法           | `adb shell pm uninstall --user 0 com.sohu.inputmethod.sogou.xiaomi` |
| 小米音乐             | `adb shell pm uninstall --user 0 com.miui.player`                   |
| 小米视频             | `adb shell pm uninstall --user 0 com.miui.video`                    |
| 相册                 | `adb shell pm uninstall --user 0 com.miui.gallery`                  |
| 黄页                 | `adb shell pm uninstall --user 0 com.miui.yellowpage`               |
| 小米支付             | `adb shell pm uninstall --user 0 com.xiaomi.payment`                |
| 小米钱包             | `adb shell pm uninstall --user 0 com.mipay.wallet`                  |
| 语音助手             | `adb shell pm uninstall --user 0 com.miui.voiceassist`              |
| 悬浮球               | `adb shell pm uninstall --user 0 com.miui.touchassistant`           |
| 服务反馈             | `adb shell pm uninstall --user 0 com.miui.miservice`                |
| 邮箱                 | `adb shell pm uninstall --user 0 com.android.email`                 |
| 主题                 | `adb shell pm uninstall --user 0 com.android.thememanager`          |
| 文件管理             | `adb shell pm uninstall --user 0 com.android.fileexplorer`          |
| 快应用               | `adb shell pm uninstall --user 0 com.miui.hybrid`                   |
| 自动测试             | `adb shell pm uninstall --user 0 com.longcheertel.AutoTest`         |
| bug反馈              | `adb shell pm uninstall --user 0 com.miui.bugreport`                |
| 智能出行             | `adb shell pm uninstall --user 0 com.miui.smsextra`                 |
| 智能助理             | `adb shell pm uninstall --user 0 com.miui.personalassistant`        |
| 装配测试             | `adb shell pm uninstall --user 0 com.longcheertel.midtest`          |
| 装配测试             | `adb shell pm uninstall --user 0 com.longcheertel.cit`              |


- 以下系统自带应用删除后必定无法正常开机
    - `com.miui.cloudservice`  （小米云服务）
    - `com.xiaomi.account`  （小米账户）
    - `com.miui.cloudbackup`  （云备份）
    - `com.xiaomi.market`  （应用市场）



## 备份/恢复

- 备份整个系统
    - `adb backup`
    - `adb backup [-f {backup.ab}] [-apk|-noapk] [-shared|-noshared] [-all] [-system|nosystem]`
        - `-f`
            - 用这个来选择备份文件存储位置，例如`-f backup.ab`
        - `-apk|-noapk`
            - 是否备份`apk`
        - `-all`
            - 备份所有应用
        - `-shared|-noshared`
            - 是否备份设备数据 默认是`-noshare`
        - `-system|-nosystem`
            - `-all`是否包含系统应用，默认的是`-system`
- 恢复
    `adb restore backup.ab`
- 示例命令
    - `adb backup -apk -shared -system -all -f backup.ab`
    - `adb backup -apk -noshared -nosystem -all -f backup.ab`
- 备份文件解压查看
    - [工具链接](https://github.com/nelenkov/android-backup-extractor)
    - `java.exe -jar abe.jar unpack backup.ab backup.tar`



## 示例命令

```
D:\Android\Adb\adb.exe backup -noapk -shared -f T:\Backup.ab
D:\JDK\bin\java.exe -jar D:\Android\abe.jar unpack T:\Backup.ab T:\Backup.tar
copy T:\Backup.tar R:\Phone\Backup.tar
del T:\Backup.ab
del T:\Backup.tar
```