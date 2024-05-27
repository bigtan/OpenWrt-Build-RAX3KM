#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i "s/https:\/\/git.openwrt.org\/feed\/packages/https:\/\/github.com\/openwrt\/packages/g" "feeds.conf.default"
sed -i "s/https:\/\/git.openwrt.org\/project\/luci/https:\/\/github.com\/openwrt\/luci/g" "feeds.conf.default"
sed -i "s/https:\/\/git.openwrt.org\/feed\/routing/https:\/\/github.com\/openwrt\/routing/g" "feeds.conf.default"
sed -i "s/https:\/\/git.openwrt.org\/feed\/telephony/https:\/\/github.com\/openwrt\/telephony/g" "feeds.conf.default"

# Add a feed source
sed -i '$a src-git smpackage https://github.com/bigtan/luci-app-msd_lite' feeds.conf.default
