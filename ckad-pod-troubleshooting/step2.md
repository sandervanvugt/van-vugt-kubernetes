Use the following command to start a database Deployment that uses the mariadb Docker image

`kubectl create deploy mydb --image=mariadb --replicas=3`{{execute}}

Now let's check if the Pods in the Deployment were started corrently. To show only resources that were started by this specific Deployment, use the --selector app=mydb option:

`kubect get all --selector app=mydb`{{execute}}
