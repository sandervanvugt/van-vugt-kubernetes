The main file used when users are created is /etc/login.defs. In this file many - but not all - default settings are defined for new user accounts. Be aware though that login.defs is not a template, changing settings in it doesn't change settings for existing user accounts. Use `cat /etc/login.defs | grep -v '^$'`{{execute}} to see all of its current settings.


