## Task

Launch the following command to prepare the lab environment:
`launch.sh`{{execute}}

Before you can start this scenario, the environment needs to be started. Hang on while this is happening, and once you see a prompt type the following to test that the environment is up. If you get an error message, wait a few more minutes and try again:

`kubectl get all`{{execute}}

Now that the environment is up, you can begin. Start by creating a YAML file for a Deployment with the name daemonginx:

`kubectl create deploy daemonginx --image=nginx --dry-run=client -o yaml > daemonginx.yaml`{{execute}}

Obviously, a Deployment is not a DaemonSet, so in the next step you are going to change the YAML file. 
