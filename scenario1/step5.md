## Task

At this point the Kubernetes software is running. You now need to setup the kubectl client. To do so, you just have to copy over the automatically generated main configuration file to your home directory. Run the following commands to do so:

`cd ~`{{execute}}
`mkdir .kube`{{execute}}
`sudo cp -i /etc/kubernetes/admin.conf .kube/config`{{execute}}
`sudo chown $(whoami):$(whoami) .kube.config`{{execute}}

