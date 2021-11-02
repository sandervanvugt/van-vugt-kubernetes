## Task

Now have a look at the contents of the pv-pod.yaml file in the course Git repository:

`cat pv-pod.yaml`{{execute}}

Notice that it has a volume, which points to the Persistent Volume Claim you've created in the previous step, and it has a volumeMount that mounts this volume on the directory /usr/share/nginx/html. Run the following command to apply the YAML file to the cluster:

`kubectl create -f pv-pod.yaml`{{execute}}

Verify that the Pod was created without any issues. Notice that it may take up to a minute before you see the Pod as running. Repeat the command as needed:

`kubectl get pods`{{execute}}


