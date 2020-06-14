# Device                                    Boot  Start     End Sectors  Size Id Type
# 2020-05-27-raspios-buster-lite-armhf.img1        8192  532479  524288  256M  c W95 FAT32 (LBA)
# 2020-05-27-raspios-buster-lite-armhf.img2      532480 3620863 3088384  1.5G 83 Linux
sudo mount -o ro -t vfat -o offset=4194304 -o sizelimit=268435456 2020-05-27-raspios-buster-lite-armhf.img /mnt/img/one
sudo mount -o ro -t ext4 -o offset=272629760 -o sizelimit=1581252608 2020-05-27-raspios-buster-lite-armhf.img /mnt/img/two
