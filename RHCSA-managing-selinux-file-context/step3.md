If a service isn't working on a server where SELinux is active, SELinux is always blamed. To find out if it really is SELinux, you can run a simple test and switch SELinux to permissive mode: `setenforce Permissive`{{execute}}

Now that SELinux is only logging and no longer blocking, try again: `curl localhost`{{execute}}

As you can see: that didn't change anything. The lesson learned is that it isn't always SELinux, it can be something else as well. In this case, it is Apache internal access permissions. If you want to set a new DocumentRoot, you need to allow Apache to access content in that directory as well. Use the following command to do so: `sed -i 's/<Directory\ "\/var\/www">/<Directory\ "\/web">/' /etc/httpd/conf/httpd.conf`{{execute}}

As you've just modified the configuration file, don't forget to restart apache: `systemctl restart httpd`{{execute}}

And try again: `curl localhost`{{execute}}

As you can see, at this point it works! Now you can start fixing it. Before you do, you'll need to switch SELinux back to enforcing mode though. It's okay to switch to permissive mode for analyzing what is going wrong, but you shoulnd't stay there any longer than necessary: `setenforce enforcing`{{execute}}
