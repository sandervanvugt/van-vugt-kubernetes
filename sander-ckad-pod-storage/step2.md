There are no imperative commands to easily create persistent volumes. That's why you're going to use a preconfigured YAML file. Have a look at the contents of the YAML file, and notice that it is creating a persistent volume of the hostPath type:

`cat pv.yaml`{{execute}}

Now add the configuration in the YAML file to the cluster:

`kubectl create -f pv.yaml`{{execute}}

Verify that the persistent volume was added to the cluster successfully: 

`kubectl get pv`{{execute}}

The persistent volume is now avalailable, let's continue and create the persistent volume claim. 

