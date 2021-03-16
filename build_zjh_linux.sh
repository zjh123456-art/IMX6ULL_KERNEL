#!/bin/sh
read -p "请选择是否要清理工程：y 或 n :"  cmd
if [ ${cmd} = "y" ]
then
	echo "不清理"
else
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- clean
fi
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx_zjh_emmc_defconfig #配置 Linux 内核 
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j2 #编译 Linux 内核
