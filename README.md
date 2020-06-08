# Distro
To run, put in a USB drive and do `sudo bash do.sh`.
If the drive is something other than `/dev/sdaX`, change the script to reflect that.
Also make sure the drive has two partitions: the first one being 64MB, for GRUB, and the second being the rest of the disk and formatted with ext4.
Then run `sudo qemu-system-x86_64 -drive format=raw,cache=none,file=/dev/sda1 -drive format=raw,cache=none,file=/dev/sda2`, again replacing `/dev/sda` with the name of your drive.

