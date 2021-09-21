## Task
Now it's time to deploy a new application in the namespace where quota are applied: 

`kubectl create deploy nginx --image=nginx -n limited`{{execute}}

After creating the application, scale the deployment to run 3 replicas:

`kubectl scale deploy nginx --replicas=3 -n limited`{{execute}}
