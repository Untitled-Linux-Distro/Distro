echo Copying files...
cp -r mnt2/* /mnt
echo Installing GRUB
grub2-install --boot-directory=/mnt/boot /dev/sda --no-floppy --force --target=i386-pc --skip-fs-probe
echo Done!
sudo umount /mnt/proc
sudo umount /mnt/sys
sudo umount /mnt/run
sudo umount /dev/sda1
