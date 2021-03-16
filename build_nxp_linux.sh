#!/bin/sh

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- clean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx_v7_mfg_defconfig #配置 Linux 内核 
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j2 #编译 Linux 内核
