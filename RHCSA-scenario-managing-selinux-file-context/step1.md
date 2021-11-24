To work with SELinux, we need some test environment. The Apache webserver is a good candidate, as it is relatively easy to setup, and offers lots of options related to SELinux. If you install with default options, nothing needs to be changed. If you start changing settings however, SELinux is going to block access and that is exactly what we need for this scenario. 

Let's start by installing apache, and setroubleshoot-server, a package that is needed to do decent SELinux troubleshooting: `dnf install -y httpd setroubleshoot-server`{{execute}}

Next, use the following to set the default DocumentRoot to `/web`{{file}}: `sed -i 's/DocumentRoot\ "\/var\/www\/html"/DocumentRoot\ "\/web"/' /etc/httpd/conf/httpd.conf`{{execute}}

Also, we need a simple `index.html`{{file}} file in the new DocumentRoot: `echo welcome to web > /web/index.html`{{execute}}

Now let's start and enable Apache and see how it is doing: `systemctl enable --now httpd`{{execute}}
