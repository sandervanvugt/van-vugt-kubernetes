## Task

As the problem really seems to be on the node01 itself, let's go there and investigate:

`ssh node01`{{execute}}

The most critical process on a worker node is the kubelet. Let's check what it is doing:

`ps aux | grep kubelet`{{execute}}

As you notice, there is no kubelet process currently running! As kubelet is the most critical process in Kubernetes, and everything else depends on it, it is started through systemd on most configurations:

`systemctl status kubelet`{{execute}}

As you can see, the kubelet service is not currently running. In the last and final step in this procedure you'll fix it.
First, press q to quit the systemctl viewer:

`q`{{execute}}
