## 自用CMCC RAX3KM 原生固件定制

- 更新源码至最新tag v23.05.3
- 修改所有的旧代码，去掉warning
- 使用msd_lite代替udpxy
- 移除QoS-nft，去掉luci-compat依赖
- 使用github的feed镜像，移除速度缓慢的OpenWrt官方源
- 默认地址192.168.5.1
