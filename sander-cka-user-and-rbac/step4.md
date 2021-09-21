## Task

Investigate if the new application was started successfully. You will see a deployment and a relicaset, but no running pods:

`kubectl get all -n limited`{{execute}}

To figure out what is going wrong, you should check the replicaset. Notice that you need to use tab completion to enter the correct name of the replicaset, which is why you will really have to type the following command:

`kubectl describe rs/nginx-xxx -n limited`{{execute}}

