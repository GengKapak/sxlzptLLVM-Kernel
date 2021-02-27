#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright (C) 2018 Raphiel Rollerscaperers (raphielscape)
# Copyright (C) 2018 Rama Bondan Prakoso (rama982)
# Android Kernel Build Script

# Install build package for debian based linux
# sudo apt install bc bash git-core gnupg build-essential \
#    zip curl make automake autogen autoconf autotools-dev libtool shtool python \
#    m4 gcc libtool zlib1g-dev flex bison libssl-dev

# Clone GCC
if [ ! -d GCC ]; then
    git clone -b 10/r41 https://github.com/sxlmnwb/aarch64-linux-android-4.9 --depth=1 arm64
    git clone -b 10/r41 https://github.com/sxlmnwb/arm-linux-androideabi-4.9 --depth=1 arm
fi

# Clone AnyKernel3
if [ ! -d AnyKernel3 ]; then
    git clone -b AOSP-onclite https://github.com/sxlmnwb/AnyKernel3
fi

#Download clang
if [ ! -d clang ]; then
    git clone -b r412851 https://github.com/sxlmnwb/LLVM-Prebuilts --depth=1
fi

# Download libufdt
if [ ! -d libufdt ]; then
    wget https://android.googlesource.com/platform/system/libufdt/+archive/refs/tags/android-10.0.0_r41/utils.tar.gz
    mkdir -p libufdt
    tar xvzf utils.tar.gz -C libufdt
    rm utils.tar.gz
fi

# End
