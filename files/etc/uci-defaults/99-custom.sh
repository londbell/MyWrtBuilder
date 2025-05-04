#!/bin/sh

# 99-custom.sh 就是immortalwrt固件首次启动时运行的脚本 位于固件内的/etc/uci-defaults/99-custom.sh

# https://github.com/wukongdaily/AutoBuildImmortalWrt/blob/master/files/etc/uci-defaults/99-custom.sh
# 设置主机名映射，解决安卓原生 TV 无法联网的问题
uci add dhcp domain
uci set "dhcp.@domain[-1].name=time.android.com"
uci set "dhcp.@domain[-1].ip=203.107.6.88"


uci set network.lan.ipaddr='192.168.2.1'
uci set network.lan.netmask='255.255.255.0'

# https://github.com/nczyw/build_immortalwrt_r2s/blob/main/99-default-settings
chmod 0755 /etc/init.d/fa-rk3328-pwmfan
chmod 0755 /usr/bin/start-rk3328-pwm-fan.sh

/etc/init.d/fa-rk3328-pwmfan enable
/etc/init.d/fa-rk3328-pwmfan start