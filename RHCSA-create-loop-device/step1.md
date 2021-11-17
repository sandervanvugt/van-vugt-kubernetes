A loop device is a fake disk, that is using an image file as its storage backend. The Linux dd utility provides an easy tool to create this image file. 

To start, use `df -hs`{{execute}} to verify that at least 10GiB of free disk space is available in your / file system. This should not be an issue, but if you don't have this amount of disk space, you shouldn't continue as in this scenario you're creating an 8 GiB loop device. 

After verifying that you have the required disk space, use the following command to create an 8 GiB image file: `dd if=/dev/zero of=/root/diskfile.img bs=1M count=8192`{{execute}}

Verify the size of the file you've just created: `du -hs diskfile.img`{{execute}}
