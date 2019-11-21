./mkimage -n rk3399 -T rksd -d "rk3399_ddr_933MHz_v1.20.bin" idbloader.img
cat "rk3399_miniloader_v1.19.bin" >> idbloader.img
./loaderimage --pack --uboot u-boot-dtb.bin uboot.img 0x200000
./trust_merger --verbose trust.ini
