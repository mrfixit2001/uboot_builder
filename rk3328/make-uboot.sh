../mkimage -n rk3328 -T rksd -d "rk3328_ddr_786MHz_v1.13.bin" idbloader.img
cat "rk3328_miniloader_v2.50.bin" >> idbloader.img
../loaderimage --pack --uboot u-boot-dtb.bin uboot.img 0x200000
../trust_merger --verbose trust.ini
