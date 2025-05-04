#!/bin/bash

echo "Start R2S Optimize !"
echo "Current Path: $PWD"

NETWORK_FILE=$PWD/target/linux/rockchip/armv8/base-files/etc/board.d/02_network

# https://github.com/QiuSimons/YAOF/blob/24.10/SCRIPTS/R2S/02_target_only.sh
# 交换 LAN/WAN 口
sed -i 's,"eth1" "eth0","eth0" "eth1",g' $NETWORK_FILE
sed -i "s,'eth1' 'eth0','eth0' 'eth1',g" $NETWORK_FILE


# remove LRNG for 3328 （随机数）
# 这个路径对于R2并不存在，不加也行
rm -f $PWD/target/linux/generic/hack-6.6/696*