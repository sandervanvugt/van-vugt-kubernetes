To start with, let's run a database Deployment:

`kubectl create deploy mydb --image=mariadb`{{execute}}

Now make sure that the Deployment is scaled to run 3 Pods:

`kubectl scale deploy mydb --replicas=3`{{execute}}

And verify that all has been started as expected:

`kubectl get all --selector app=mydb`{{execute}}

If you see a Pod status of Pending or ContainerCreating, wait a minute and try again. Next, you should see that the application has not been started correctly. That is because it misses a variable that should be provided to specify how it should do its work. In the next step you'll create a ConfigMap to provide this variable.
