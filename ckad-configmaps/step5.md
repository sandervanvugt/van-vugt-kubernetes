Now let's verify that all has worked out well. If it did, you should see that the Deployment now has three Pods that are in a Running state. If you're a bit early, you will see the old failing Pods being terminated, and new Pods being successfully started:

`kubectl get all --selector app=mydb`{{execute}}

With this, you have successfully completed this lab!
