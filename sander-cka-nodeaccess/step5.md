## Task

To start the kubelet service again, you just have to use the appropriate systemctl command:

`systemctl start kubelet`{{execute}}

It's always a good idea to verify that this worked out all right:

`systemctl status kubelet`{{execute}}

Now that you've confirmed the kubelet is running, it's safe to return to the main node where the kubectl client is available:

`exit`{{execute}}

As long as a pod is in a state of pending, that means thatt the Kubernetes scheduler keeps on trying. So once the condition that prevented it to run was resolved, it will come up automatically. You can now verify that:

`kubectl get all`{{execute}}

You will see that all is good now, and with that, this scenario is now concluded. 

