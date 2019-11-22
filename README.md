This is a VERY simple repository.

I've compiled and gathered all the files and tools required to create idbloader.img, trust.img, and uboot.img.

mkimage binary was copied from the uboot source.
loaderimage, rk33*, and trust_merger all were copied from rkbin.

The first step is to compile uboot from here:
 https://github.com/mrfixit2001/rockchip-u-boot

To compile that, use the below and replace (DEFCONFIG) with the defconfig file you're building for.
 
 make mrproper (DEFCONFIG) all

If you are cross compiling (compiling uboot on a different arch than aarch64/arm64) then you will need to prefix the make command with something like the below and replace (PATH TO AARCH64 GNU TOOLCHAIN) with the actual path:
CROSS_COMPILE=/(PATH TO AARCH64 GNU TOOLCHAIN)/aarch64-linux-gnu-

An example defconfig file name is rock64-rk3328_defconfig.

Once compiled, you'll need the u-boot-dtb.bin file that's generated after it's compiled. Copy that into the rk3399 or rk3328 folder, whichever you compiled uboot for. Then run the make-uboot.sh script. That will generate idbloader.img, trust.img, and uboot.img.

Then use upgrade_uboot.sh to write those 3 resulting files to the correct offsets.
