You have just noticed that the Pods in your Deployment have not started successfully. If any resource in Kubernetes is having issues, it's a good idea to use kubectl describe to find out what exactly has happened while the resource was added to the cluster. Use the following command to see if this gives you anything useful on the mydb Deployment:

`kubectl describe deploy mydb`{{execute}}

As you have probably noticed, using kubectl describe on the Deployment in this case doesn't give much useful information. Let's try it again, but now looking for information about the Pod that you've started. To allow you to use this interface copy/paste feature, you're first defining a variable that contains the name of the first Pod:

`export MYDBPOD=$(kubectl get pods --selector app=mydb | grep 'mydb' | head -n 1 | awk '{ print $1 }')`{{execute}}

Before we continue, let's verify that the MYDBPOD variable actually contains a Pod name:

`echo $MYDBPOD`{{execute}}

Good! Now that we know that we see the right information, let's continue and figure out what's happening on the Pod. If necessary, repeat this command until you no longer see ContainerCreating in the output, it may take a minute to get there. 

`kubectl describe pod $MYDBPOD | grep -A 6 State`{{execute}}

As you can see in the kubectl describe output, the problem is in the application. In the next step you'll learn how to find out what is happening. 
