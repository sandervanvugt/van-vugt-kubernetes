systemctl is-active vsftpd &&\
ls -ld /var/ftp/pub | grep 'drwxrwxrwx' &&\
grep -i '^anonymous_enable=YES' /etc/vsftpd/vsftpd.conf &&\
grep -i '^anon_upload_enable=YES' /etc/vsftpd/vsftpd.conf

