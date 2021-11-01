To provide the required startup information to the application, you could of course stop it and start it again. But you can also use the kubectl set env command to update the Deployment with the new environment variable:

`kubectl set env deploy mydb MYSQL_ROOT_PASSWORD=secretpw`{{execute}}

If you're fast enough, you can see the rolling deployment in action. No worries, if you're not fast enough you'll just see that a new replicaset has been created for the Deployment, running the new Pods. The old ReplicaSet is still around. In case it didn't work out well, it allows you to easily get back to the previous state.

`kubectl get all --selector app=mydb`{{execute}}

At this point the application should be running successfully, which concludes this scenario. 
