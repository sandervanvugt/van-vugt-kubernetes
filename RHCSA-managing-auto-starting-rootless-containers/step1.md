To work with containers, you have to install the appropriate software: `dnf module install -y container-tools`{{execute}}

To start with, you'll need a non-root user account to run the rootless containers. Use the following commands to create user linda, and set the password to "password":

`useradd linda`{{execute}}

`echo password | passwd --stdin linda`{{execute}}

Next, you need to enable the linger feature for the user, which allows the user to autostart systemd unit files: `loginctl enable-linger linda`{{execute}}

Let's verify the linger feature is now enabled for user linda: `loginctl show-user linda`{{execute}}
