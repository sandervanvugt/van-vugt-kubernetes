You have now created the loop device, so it's time to create a partition on top of it. Notice that for this step, you need to enter some commands yourself. Please use the following command to open the fdisk interface on the newly created loop device, and next use the following commands within fdisk to create a partition: `fdisk /dev/loop0`{{execute}}

Within the fdisk interface, use the following commands:
*	p - this will print the current partition layout
*	n - this will start creating a new partition and prompt which type of partition you want to use
*	p - this is to select the primary partition type
*	Enter - when prompted for the start sector, just press enter to accept the default
*	+2G - this will create a 2 GiB partition
*	w - this will write the new partition and quit fdisk

After creating the partition, use the following command to verify the new partition is added: `lsblk`{{execute}}. You should see /dev/loop0p1, which is the newly created partition.
