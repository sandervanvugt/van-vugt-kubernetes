systemctl is-active nfs-server &&\
ls -d /users/ldap/ldapuser{1,2,3} &&\
grep /users /etc/exports 

