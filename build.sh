#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE=$PROFILE

PACKAGES=""

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"

# 常用系统管理组件

# Diskman 磁盘管理
PACKAGES="$PACKAGES luci-i18n-diskman-zh-cn"
# CPU 占用限制
PACKAGES="$PACKAGES luci-i18n-cpulimit-zh-cn"
# collectd 统计
PACKAGES="$PACKAGES luci-i18n-statistics-zh-cn"

# 常用软件服务

# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"
# Passwall 代理
PACKAGES="$PACKAGES luci-i18n-passwall-zh-cn"
# Singbox 代理
PACKAGES="$PACKAGES luci-i18n-homeproxy-zh-cn"
# wireguard
PACKAGES="$PACKAGES luci-proto-wireguard"
# frp 和 nps 内网穿透
PACKAGES="$PACKAGES luci-i18n-nps-zh-cn luci-i18n-frpc-zh-cn"
# wol
PACKAGES="$PACKAGES luci-i18n-wol-zh-cn"
# ddns
PACKAGES="$PACKAGES luci-i18n-ddns-zh-cn"
# upnp
PACKAGES="$PACKAGES luci-i18n-upnp-zh-cn"

# 常用的网络存储组件

# 文件助手(24.10.0 update)
PACKAGES="$PACKAGES luci-i18n-filebrowser-go-zh-cn"
# 硬盘休眠
# PACKAGES="$PACKAGES luci-i18n-hd-idle-zh-cn"
# Samba 网络共享
PACKAGES="$PACKAGES luci-i18n-samba4-zh-cn"
# qBittorrent 下载器
# PACKAGES="$PACKAGES luci-i18n-qbittorrent-zh-cn"
# Aria2 下载器
# PACKAGES="$PACKAGES luci-i18n-aria2-zh-cn"
# FTP 服务器
# PACKAGES="$PACKAGES luci-i18n-vsftpd-zh-cn"

# Docker 组件
PACKAGES="$PACKAGES luci-i18n-dockerman-zh-cn luci-i18n-docker-zh-cn"

# 网络组件

# EQoS 网速控制
# PACKAGES="$PACKAGES luci-i18n-eqos-zh-cn"

# 界面翻译补全 （24.10 opkg update）
PACKAGES="$PACKAGES luci-i18n-package-manager-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"

# Packages 文件夹下的 ipk 包
PACKAGES="$PACKAGES luci-i18n-wrtbwmon-zh-cn"

# 一些自己需要的内核组件
PACKAGES="$PACKAGES kmod-wireguard"

# 一些其他可能有用的包

# ttyd
PACKAGES="$PACKAGES luci-i18n-ttyd-zh-cn"
# zsh 终端
PACKAGES="$PACKAGES zsh"
# Vim 完整版，带语法高亮
PACKAGES="$PACKAGES vim-fuller"
# X/Y/ZMODEM 文件传输
PACKAGES="$PACKAGES lrzsz"
# OpenSSH
PACKAGES="$PACKAGES openssh-server openssh-client"
# Netdata 系统监控界面
PACKAGES="$PACKAGES netdata"

# 一些自定义文件
FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
DISABLED_SERVICES="sshd dockerd"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
