In the previous step you've found that SELinux is blocking access because the wrong label is set on the directory `/web`{{file}}. Let's change that. The first question of course is how it needs to be changed. In many cases you can just check the label that is set by default, using `ls -Z`{{command}}. So let's use `ls -Z`{{command}} on the default DocumentRoot: `ls -Z /var/www`{{execute}}

Now that you found the context label to set, use `semanage fcontext`{{command}} to set it on /web: `semanage fcontext -a -t httpd_sys_content_t "/web(/.*)?"`{{execute}}

Using `semanage fcontext`{{command}} writes the new context to the policy, which is where it needs to be, as the policy is supposed to be leading and have all configuration for the entire system. It's not yet applied to the file system though: `ls -dZ /web`{{execute}}

To complete the procedure, you need to use `restorecon`{{command}}: `restorecon -Rv /web`{{execute}}
