test -b /dev/loop0 &&\
du -hs diskfile.img | grep '8.0G' &&\
losetup -a | grep loop0 | grep diskfile.img
