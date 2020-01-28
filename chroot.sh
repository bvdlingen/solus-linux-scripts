mkdir /target
mount /dev/nvme0n1p3 /target
# detect EFI with
#  fdisk -o Device,Size,Type -l /dev/nvme0n1
mkdir /target/boot
mount /dev/nvme0n1p1 /target/boot

mount --bind /proc /target/proc
mount --bind /dev /target/dev
mount --bind /sys /target/sys

chroot /target

#example rescue commands

# repair broken packages
# sudo eopkg up && sudo eopkg check | grep Broken | awk '{print $4}' | xargs sudo eopkg it --r>

# roll-back an update
# sudo eopkg history
# sudo eopkg history -t number

# re-run system wide configuration triggers
# sudo usysconf run -f

