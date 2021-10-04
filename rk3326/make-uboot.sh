./mkimage -n px30 -T rksd -d "rk3326_ddr_333MHz_v1.16.bin" idbloader.img
cat "rk3326_miniloader_v1.28.bin" >> idbloader.img
./loaderimage --pack --uboot u-boot-dtb.bin uboot.img 0x200000
./trust_merger --verbose trust.ini
