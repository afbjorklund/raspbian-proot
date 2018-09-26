# Device                                Boot Start     End Sectors  Size Id Type
# 2018-06-27-raspbian-stretch-lite.img1       8192   96663   88472 43.2M  c W95 FAT32 (LBA)
# 2018-06-27-raspbian-stretch-lite.img2      98304 3637247 3538944  1.7G 83 Linux
sudo mount -o ro -t vfat -o offset=4194304 2018-06-27-raspbian-stretch-lite.img /mnt/img/one
sudo mount -o ro -t ext4 -o offset=50331648 2018-06-27-raspbian-stretch-lite.img /mnt/img/two
