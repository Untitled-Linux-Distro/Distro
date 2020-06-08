grub2-mkrescue -o distro.iso iso
dd if=distro.iso of=/dev/sda1 count=64M
