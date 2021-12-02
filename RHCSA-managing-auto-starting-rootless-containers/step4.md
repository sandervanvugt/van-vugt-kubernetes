Can you believe it? You're almost done already! At this point, let's hand over full control to systemd. To do so, you first have to stop the container in podman: `podman stop mynginx`{{execute}}

To ensure that the user service will automatically be started and also that systemd will start it now, use the following command: `systemctl --user enable --now container-mynginx.service`{{execute}}

Unfortunately, this environment doesn't allow you to reboot and verify that all is working good. You can however use the following command to check the status and verify the user service is enabled: `systemctl --user status container-mynginx.service`{{execute}}

Press q to quit the systemctl status view: `q`{{execute}}

Also verify that you can still see the container in podman: `podman ps`{{execute}}
