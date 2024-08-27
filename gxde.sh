#!/bin/bash
cd /tmp
export PATH=$PATH:/sbin
export QT_QPA_PLATFORMTHEME=deepin
# 用于解决 deepin 截图无法使用的问题
export DBUS_FATAL_WARNINGS=0

