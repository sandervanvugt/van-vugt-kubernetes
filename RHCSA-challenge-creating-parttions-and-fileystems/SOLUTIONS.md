# SOLUTIONS

For each task, please provide instructions for the solution. This is NOT shared with the learner, but is for our internal reference, to help test the scenario.

command dump
[root@54de0906bc6a ~]# history
    1  dd if=/dev/zero of=diskfile bs=1M count=8192
    2  losetup -fP diskfile
    3  losetup -a
    4  mkfs.ext4 /dev/loop0
    5  mkdir /loopfs
    6  mount -o loop /dev/loop0 /loopfs
    7  df -h
    8  losetup -a
    9  fdisk /dev/loop0
   10  lsblk
   11  mkfs.xfs /dev/loop0p1
   12  mount /dev/loop0p1 /mnt
   13  df -h
   14  history

## Task 1 Solution

- Poke the widget
- Change the value
- Paste in the code
- Run the thing
- [etc...]

## Task 2 Solution

- xxxxx
- xxxxx
- xxxxx

## Task 3 Solution

- xxxxx
- xxxxx
- xxxxx

## Task 4 Solution

- xxxxx
- xxxxx
- xxxxx

## Task 5 Solution

- xxxxx
- xxxxx
- xxxxx
