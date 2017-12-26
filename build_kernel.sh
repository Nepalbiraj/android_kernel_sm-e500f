#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/android/Downloads/aarch64-linux-android-5.3-kernel/bin/aarch64-linux-android-
mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8916_sec_e5_eur_defconfig msm8916_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
