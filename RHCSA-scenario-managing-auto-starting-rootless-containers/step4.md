Can you believe it? You're almost done already! To ensure that the user service will automatically be started, use the following command: `systemctl --user enable container-mynginx.service`{{execute}}

Unfortunately, this environment doesn't allow you to reboot and verify that all is working good. You can however use the following command to check the status and verify the user service is enabled: `systemctl --user status container-mynginx.service`{{execute}}
