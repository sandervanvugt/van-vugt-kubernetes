To start with, you'll need to install the vsftpd service, enable it, and run it. Also, you need to tweak its main configuration file to allow anonymous access as well as anonymous uploads. As the third and final step, you'll have to make sure the anonymous user FTP document root (which happens to be the Linux user "ftp" home directory), is configured with write access. To verify its working, install the lftp package, open an lftp interface, and from there, use the commands cd pub, followed by put /etc/hosts to test working. You should get an error message. 