#!/bin/bash


echo "Start R2S Optimize !"

# https://github.com/QiuSimons/YAOF/blob/24.10/SCRIPTS/R2S/02_target_only.sh
# 交换 LAN/WAN 口
sed -i 's,"eth1" "eth0","eth0" "eth1",g' target/linux/rockchip/armv8/base-files/etc/board.d/02_network
sed -i "s,'eth1' 'eth0','eth0' 'eth1',g" target/linux/rockchip/armv8/base-files/etc/board.d/02_network