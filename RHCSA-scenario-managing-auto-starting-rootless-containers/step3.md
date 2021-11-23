You now have a running container in podman, let's generate a systemd unit file to autostart it. Before doing so, you have to creaet a local directory where the configuration is going to be stored, and activate that directory: 

`mkdir -p ~/.config/systemd/user`{{execute}}

`cd ~/.config/systemd/user`{{execute}}

After moving to the directory where the configuration file is going to be stored, you can generate a systemd unit file to autostart the container: `podman generate systemd --name mynginx --files`{{execute}}


The previous command has generated a systemd unit file with the name container-mynginx.service. Have a look at the contents of the systemd unit file that has been created: `cat container-mynginx.service`{{execute}}

Now make sure that systemd picks up the new configuration file: `systemctl --user daemon-reload`{{execute}}
