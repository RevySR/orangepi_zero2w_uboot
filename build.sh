#!/usr/bin/env bash

export CROSS_COMPILE=aarch64-linux-gnu-

pushd arm-trusted-firmware
  make PLAT=sun50i_h616 DEBUG=1 -j$(nproc)
  export BL31=$(pwd)/build/sun50i_h616/debug/bl31.bin
popd

pushd u-boot
  make orangepi_zero2w_defconfig
  make -j$(nproc)
popd
