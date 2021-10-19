## Task

Launch the following command to prepare the lab environment:
`launch.sh`{{execute}}

Before you can start this scenario, the environment needs to be started. Hang on while this is happening, and once you see a prompt type the following to test that the environment is up. If you get an error message, wait a few more minutes and try again:

`kubectl get all`{{execute}}

You have now confirmed that the cluster is operational, so let's run an application:

`kubectl create deploy nginx --image=nginx`{{execute}}

To really understand the working of services, the application should have multiple replicas:

`kubectl scale deploy nginx --replicas=3`{{execute}}
