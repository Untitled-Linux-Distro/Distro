# Distro
UPDATE: Now to run you can just do `qemu-system-x86_64 distro.img`!
If you need to build a new version of `distro.img`, then run:
1. `sudo mount -o loop distro.img /mnt`
2. `sync`
3. `sudo grub2-install --boot-directory=/mnt/boot /dev/loop0 --no-floppy --force --target=i386-pc --skip-fs-probe`
4. `sudo umount /dev/loop0`
Then you're done!
