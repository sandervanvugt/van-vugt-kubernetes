Using automount makes sense in combination with remote provided NFS shares. You'll often see it to give access to NFS based user home directores. These allow you to provide the home directories on one central server, and give users access to these home directories when they log in to any machine. To create such an environment, you first have to install and configure the NFS server. 

To start with, use `dnf install -y nfs-utils`{{execute}} to install the NFS server and related utilities.

In NFS you'll need to share something. Let's create a dummy user homedirectory structure which can be shared next: `mkdir -p /users/nfs/{lisa,linda,anna}`{{execute}}

Next you'll need to tell NFS to share the directory containing these user home directories. To do so, it needs a file /etc/exports that contains the name of the directory to share, including some access permissions: `echo "/users *(rw,no_root_squash)" > /etc/exports`{{execute}}
