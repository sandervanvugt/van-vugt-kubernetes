The automount configuration is stored in two files. The /etc/auto.master file is used to identify the directory that automount will manage, as well as the file that is used for further configuration. A nice example is provided by the /misc directory. Use the following command to see what this default line looks like: `grep '^/misc' /etc/auto.master`{{execute}}

In this scenario we're simulating automatic mounts of NFS provided user home directories. To accomplish that, run the following command to add a line to the auto.master file: `echo "/home/nfs  /etc/auto.nfs >> auto.master`{{execute}}

If at any time you need an example of an automounted directory, have a look at the contents of /etc/auto.misc. It will show you the names of the subdirectories that you're going to mount in the main directory, as well as where to fetch these directories from. The line that mounts the Linux FTP server (which in fact is an NFS server) is very useful: `grep -i linux /etc/auto.misc`{{execute}}

Based on this example you can add the mount for the NFS home directories. There's one thing you need to do differently though. You need wildcards to refer to any directory, and to refer to the matching part on the NFS server, you need an ampersand. So to create the automount configuration, use `echo "*   -rw   localhost:/users/nfs/&` > /etc/auto.nfs

This completes the configuration, so it's time to start and enable the autofs service: `systemctl enable --now autofs`{{execute}}
