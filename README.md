This is a VERY simple repository.

I've compiled and gathered all the files and tools required to create idbloader.img, trust.img, and uboot.img.

mkimage binary was copied from the uboot source.
loaderimage, rk33*, and trust_merger all were copied from rkbin.

The first step is to compile uboot from here:
 https://github.com/mrfixit2001/rockchip-u-boot

To compile that, use the below and replace (DEFCONFIG) with the defconfig file you're building for.
 
 make mrproper (DEFCONFIG) all


An example defconfig file name is rock64-rk3328_defconfig.

Once compiled, you'll need the u-boot-dtb.bin file that's generated after it's compiled. Copy that into the rk3399 or rk3328 folder, whichever you compiled uboot for. Then run the make-uboot.sh script.
