grep 'LABEL=LOOPFS' /etc/fstab &&\
mount | grep '/dev/loop0p1 on /loop'
