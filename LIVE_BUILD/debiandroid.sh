#!/bin/bash



# debiandroid live-disk/installer 



lb config \
--mode debian \
--distribution stretch  \
--architectures amd64 \
--system live \
--backports true \
--interactive shell \
--debian-installer live \
--architecture i386 \
--archive-areas "main contrib non-free" \
--security true \
--updates true \
--binary-images iso-hybrid \
--memtest memtest86+ 

dpkg --add-architecture i386

apt-get update

apt-get install ufw laptop-mode-tools \
vlc brasero gparted hdparm thinkfan \
tp-smapi-dkms firmware-linux-free \ 
firmware-linux-nonfree ccache \
keyboard-configuration pciutils \
powertop qemu-kvm qpdfview \
task-laptop tpb redshift \
tzdata acpitool debian-handbook \
debian-kernel-handbook \
debian-reference xorg openjdk-8-jdk \
i3 xfe chromium android-tools-adb \
android-tools-fastboot gradle \
git git-core gnupg flex bison \
gperf build-essential zip curl \
zlib1g-dev gcc-multilib g++-multilib \ 
libc6-dev-i386 lib32ncurses5-dev \
x11proto-core-dev libx11-dev \
lib32z1-dev ccache libgl1-mesa-dev \
libxml2-utils xsltproc unzip inkscape







