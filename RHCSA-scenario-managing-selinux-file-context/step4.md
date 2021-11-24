Now that we know that SELinux is involved, we should further investigate what is going on. A good first step is to investigate the audit.log file, where raw SELinux messages are written with the audit label AVC: `grep AVC /var/log/audit/audit.log`{{execute}}

Have a look at the last line of the output, where you can see that SELinux has denied access for `httpd`{{file}} to `/web/index.html`{{file}}. It also shows that httpd was using the source context httpd_t, and the /web/index.html file has default_t. As there is no rule in the SELinux policy that allows this type of access, access was denied. 

In some cases it's also useful to see if `sealert`{{command}} has generated output. You'll find that in `journalctl`{{command}} output: `journalctl | grep sealert`{{execute}}

The `sealert`{{command}} command is useful, as it tries to interpret what is going wrong, and will give you advise on what to do. Let's investigate the last sealert message, by running the entire command including the code behind the -l option: `journalctl | grep sealert | tail -1 | sed -n -e 's/^.*run: //p' | less`{{execute}}

You can browse through the output of sealert to read it, but you'll probably agree that in this case it's not very helpful. Use `q`{{execute}} to close the output screen. 
