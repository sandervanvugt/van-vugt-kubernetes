The main file used when users are created is /etc/login.defs. In this file many - but not all - default settings are defined for new user accounts. Be aware though that login.defs is not a template, changing settings in it doesn't change settings for existing user accounts. Use `cat /etc/login.defs | grep -v '^#'`{{execute}} to see all of its current settings.

As you may have noticed, by default a user password expires after 99999 days. As that is about 272 years, this is something that has to be changed. Let's use sed to do this and set the new value to 90 days: `sed -i 's/99999/90/' /etc/login.defs`{{execute}}

Also, let's add a file to the directory /etc/skel, which will be copied to the user home directory when the user is created: `echo hello > /etc/skel/greetings`{{execute}}
