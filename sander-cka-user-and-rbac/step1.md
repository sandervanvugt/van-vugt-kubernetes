## Task

Launch the following command to prepare the lab environment:
`launch.sh`{{execute}}

Before you can start this scenario, the environment needs to be started. Hang on while this is happening, and once you see a prompt type the following to test that the environment is up. If you get an error message, wait a few more minutes and try again:

`kubectl get all`{{execute}}

To configure user access, you'll need a matching Linux user. When prompted for a password, enter the text 'password' and confirm:

`sudo useradd -m -G sudo anna; sudo passwd anna`{{execute}}
