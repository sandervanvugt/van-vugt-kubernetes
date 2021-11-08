## Task
The Persistent Volume Claim (PVC) is used to connect to a Persistent Volume. Let's have a look at the configuration of the Persistent Volume Claim that is provided in the course Git repository:

`cat pvc.yaml`{{execute}}

As you've noticed, there is nothing in the PVC that points to a specific PV. This leaves it up to the cluster to decide what it is going to bind to, and makes it easy to bind to storage in any cluster. Let's create the PVC:

`kubectl create -f pvc.yaml`{{execute}}

At this point you can verify that the PVC is created, and whether or not it has bound to a PV. Given the configuration we're using in this scenario, you can never be sure which PV exactly it binds to, but in the sandbox environment you're using right now, you should see that the PVC is bound to the PV you've created earlier. This is because there is nothing else that it can bind to:

`kubectl get pvc`{{execute}}

You can also verify this from the perspective of the PV:

`kubectl get pv`{{execute}}
