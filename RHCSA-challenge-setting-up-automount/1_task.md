To practice automount, you'll need an NFS server. Setting up NFS is not a part of the RHCSA objectives, but it's so easy that it shouldn't give you a hard time. You should run the NFS server on localhost. For this scenario we are going to use one host only, which will be the client and the server at the same time. Make sure you do the following:

1.	Create the directories /users/ldap/ldapuser1, /users/ldap/ldapuser2 and /users/ldap/ldapuser3
2.	Create an NFS configuration that provides access to the /users directory
3.	Enable and start the NFS server to automatically provide the exports
