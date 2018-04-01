
# 阴阳师自动御魂脚本

网易阴阳师电脑版，Autohotkey 脚本，自动御魂, 已支持完全后台。

This is a script, written using Autohotkey, for automated Yuhun farming in Netease game Onmyoji, PC emulator version.
Now the script supports fully background running. 

## 准备工作

玩家需自行下载网易阴阳师电脑版，并登陆至游戏内，不要调整窗口大小。

该脚本为本人修仙时间使用 Autohotkey 1.1.28 版本编写，玩家可以自行下载 [Autohotkey](https://autohotkey.com/)，以及所有源文件，然后运行 onmyoji_yys-auto-yuhun.ahk。

玩家也可以下载预先编译好的可执行版本 [Releases](https://github.com/society765/yys-auto-yuhun/releases)。

## 使用方法及功能简介

玩家需要先进入探索灯笼-御魂-八歧大蛇-十层界面（或你想要挂机的层数），然后可以使用键盘快捷键(F10)开始运行脚本，鼠标不需要提前放在游戏窗口内。
但是如果有超过一个阴阳师游戏窗口，该程序可能无法找到正确的游戏窗口。

使用了后台插件，窗口现在可以完全后台，可以被遮挡，但是不能最小化。

该脚本为单人探索，每次消耗6体力。在脚本开始时会弹出对话框，输入对应的数字以选择自动点击中间或右边怪物。

玩家需要开启自动战斗模式，并提前准备好战斗阵容。御魂十层界面中的阵容不需要锁定。

在御魂战斗过程中，该脚本会自动拒绝所有悬赏封印的邀请。

该脚本仅使用了画面找色，鼠标后台点击的函数，完全模拟人类玩家行为，没有使用任何内存读写函数。在敏感位置添加了均匀分布的随机时间漂移，和随机坐标漂移。
作者使用过该脚本上万体力仍没有收到鬼使黑来信，而且作者不对您的可能存在的任何被封禁结果负责。  

不建议在御魂战斗中移动窗口位置，可能会导致战斗镜头漂移。

该脚本也适用于觉醒材料，和御灵。

玩家可以在任何时刻使用键盘快捷键结束脚本(F12)。

感谢您使用该脚本，并欢迎各种反馈和改进意见。 

## 已知存在的问题

* 当玩家使用 Windows 7 系统时，需要以管理员身份运行阴阳师游戏窗口和脚本。而且，需要调整系统的画面设置： 右键我的电脑 -> 高级系统设置 -> 高级 -> 设置 -> 取消勾选以下3项： "启用 Aero peek"，"启用透明玻璃"，和"启用桌面组合"。

* 玩家也可以使用旧版的按键精灵脚本，该按键精灵脚本不会再继续更新。按键精灵使用了后台点击，和前台找色函数，窗口不能被遮挡，不能被移动，但是不需要调整系统的画面设置。

## 更新记录

2018年1月13日，上传了初始版本。

2018年2月11日，强化了拒绝悬赏的函数。

2018年3月31日，完全使用 Autohotkey 重写了脚本，现在支持完全后台。

## 免责声明

网易，阴阳师，是网易公司的商标。 http://yys.163.com

按键精灵，是按键精灵公司的商标。 http://www.anjian.com

Autohotkey，为 GPL 开源程序。 https://autohotkey.com/

该脚本为了实现后台点击及找色功能，使用了开源的 [天使插件](http://bbs.tyuyan.net/thread-45659-1-1.html)，
该插件由 C++ 编写，用户可以前往他们的站点下载源代码，作者只是调用了预编译好的 dll 库。

<!-- 根据 [GPLv3](https://www.gnu.org/licenses/gpl-3.0.html) 开源协议，本人不对该脚本负任何责任。-->

## 协议 (License)

该源代码使用了 [GPLv3](https://www.gnu.org/licenses/gpl-3.0.html) 开源协议。

This project is licensed under the [GPLv3](https://www.gnu.org/licenses/gpl-3.0.html) license.

