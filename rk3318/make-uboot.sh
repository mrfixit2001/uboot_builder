rm idbloader.img uboot.img trust.img
../mkimage -n rk3328 -T rksd -d "rk3318_ddr_666Mhz_v1.16.bin" idbloader.img
cat "rk3328_miniloader_v2.50.bin" >> idbloader.img
../loaderimage --pack --uboot u-boot-dtb.bin uboot.img 0x200000
../trust_merger --verbose trust.ini
