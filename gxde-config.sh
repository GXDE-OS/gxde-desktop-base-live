#!/bin/bash
cd /tmp
export PATH=$PATH:/sbin
export QT_QPA_PLATFORMTHEME=deepin

# 加载 deepin anything 模块并启动 deepin anything
modprobe vfs_monitor | true
setsid deepin-anything-server &

if [[ -f /var/log/installer/lsb-release ]]; then
    # 使用 Debian Installer 安装系统
    # 判定是否已经配置过
    if [[ ! -f /etc/gxde-os-config-finished ]]; then
        rm -rfv /etc/apt/sources.list.d/debian.list
        apt purge deepin-installer -y
        touch /etc/gxde-os-config-finished
    fi
fi
