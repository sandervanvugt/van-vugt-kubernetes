Now that you have set up the local user account, you'll need to login as that specific user. It needs to be a real login, su doesn't work. Let's use ssh to login to localhost as user linda. You will need to manually press enter to accept the remote host key and enter the password (don't forget to click in the console before entering the password): `ssh linda@localhost`{{execute}}

At this point you're ready to start the container. Let's use nginx to start an nginx container: `podman run -d --name mynginx -p 8081:80 docker.io/library/nginx`{{execute}}

Before continuing, verify that the container is running: `podman ps`{{execute}}
