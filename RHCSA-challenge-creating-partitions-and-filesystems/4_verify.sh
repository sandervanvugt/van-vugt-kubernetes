grep 'LABEL=LOOPFS /loop' /etc/fstab &&\
mount | grep '/dev/loop0p1 on /loop'
