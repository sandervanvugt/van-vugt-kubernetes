Now that you have created the new partition, it's time to put a filesystem on top of it. Use the `mkfs.xfs /dev/loop0p1`{{execute}} to create the XFS filesystem on top of the partition. 

Now use `mount /dev/loop0p1 /mnt`{{execute}} to mount the file system as a temporary mount on the /mnt directory.

To verify that the filesystem was mounted successfully, use `lsblk`{{execute}} where you will see that the filesystem is now mounted. Alternatively, you can also use `mount`{{execute}} but as this command will show a lot of internal system mounts as well, it's not as convenient. 

With this you have reached the end of this scenario!
