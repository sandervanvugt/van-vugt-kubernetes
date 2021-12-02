At this point you have created the base NFS configuration. Let's start and enable the NFS server and verify: `systemctl enable --now nfs-server`{{execute}}

The showmount command provides an easy way to test NFS server access. In this case it's super-easy, as the NFS server isn't even running remotely. That's why you don't have to configure any firewall either. Use the following command to verify the NFS shares are available: `showmount -e localhost`{{execute}}

You'll see that the directory /users is exported, which means that it's time to take care of automount setup. 
