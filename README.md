
# Raspian and Proot

This about running Raspian GNU/Linux (arm), in a PRoot environment (amd64).

* Debian
* Raspian

* PRoot
* Qemu

We can list the partitions on the standard offical Raspian image, using `fdisk`:

``` console
$ LANG=C fdisk -l 2018-06-27-raspbian-stretch-lite.img
Disk 2018-06-27-raspbian-stretch-lite.img: 1.8 GiB, 1862270976 bytes, 3637248 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x4d3ee428

Device                                Boot Start     End Sectors  Size Id Type
2018-06-27-raspbian-stretch-lite.img1       8192   96663   88472 43.2M  c W95 FAT32 (LBA)
2018-06-27-raspbian-stretch-lite.img2      98304 3637247 3538944  1.7G 83 Linux
```

Multiply the sectors by 512, to get a suitable offset for mounting the partions:

``` console
sudo mkdir -p /mnt/img/one
sudo mount -o ro -t vfat -o offset=4194304 2018-06-27-raspbian-stretch-lite.img /mnt/img/one
sudo mkdir -p /mnt/img/two
sudo mount -o ro -t ext4 -o offset=50331648 2018-06-27-raspbian-stretch-lite.img /mnt/img/two
```

Then we can start an interactive shell in the mounted partition, with `proot`:

``` console
proot -R /mnt/img/two -q qemu-arm
```

Clean up by exiting the shell started, and unmounting the disk images again:

``` console
sudo umount /mnt/img/one
sudo umount /mnt/img/two
```

## Lightning Talk

Here is a short presentation that I held at [FOSS Gbg](http://foss-gbg.se/):

* [RaspianProot.pdf](RaspianProot.pdf) ([source](RaspianProot.odp))

