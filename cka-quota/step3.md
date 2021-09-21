## Task
Now it's time to deploy a new application in the namespace where quota are applied: 

`kubectl create deploy nginx --image=nginx --replicas=3 -n limited`{{execute}}
