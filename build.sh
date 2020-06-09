echo Creating FS...
dd if=/dev/zero of=distro.img bs=10M count=20
mkfs.ext4 distro.img
mount -o loop distro.img /mnt
echo Copying files...
cp -r mnt2/* /mnt
mount -vt proc proc /mnt/proc
mount -vt sysfs sysfs /mnt/sys
mount -vt tmpfs tmpfs /mnt/run
sync
echo Installing GRUB
grub2-install --boot-directory=/mnt/boot /dev/loop0 --no-floppy --force --target=i386-pc --skip-fs-probe
sync
echo Done!
sudo umount /mnt/proc
sudo umount /mnt/sys
sudo umount /mnt/run
sudo umount /mnt
