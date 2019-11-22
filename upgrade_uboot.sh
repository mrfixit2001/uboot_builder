SYSPART=$(findmnt -n -o SOURCE /)
if echo $SYSPART | grep -qE 'p[0-9]$' ; then
	DEVID=$(echo $SYSPART | sed -e s+'p[0-9]$'+''+)
else
	DEVID=$(echo $SYSPART | sed -e s+'[0-9]$'++)
fi

echo Identified $DEVID as device to flash uboot to...

if [ -f idbloader.img ] ; then
	echo "Upgrading idbloader.img..."
	dd if=idbloader.img of=$DEVID bs=32k seek=1 conv=fsync &>/dev/null
fi
if [ -f uboot.img ] ; then
	echo "Upgrading uboot.img..."
	dd if=uboot.img of=$DEVID bs=64k seek=128 conv=fsync &>/dev/null
fi
if [ -f trust.img ] ; then
	echo "Upgrading trust.img..."
	dd if=trust.img of=$DEVID bs=64k seek=192 conv=fsync &>/dev/null
fi
