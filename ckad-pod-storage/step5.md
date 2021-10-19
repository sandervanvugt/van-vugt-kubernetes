## Task

To verify working of the persistent volume, use the following command to write a file to the directory /usr/share/nginx/html in the pod:

`kubectl exec pv-pod -- touch /usr/share/nginx/html/hello-world.txt`{{execute}}

Files that are written by the pod to the directory on which the PVC is mounted, should be visible in the persistent volume storage backend. As this is configured to the directory /mydata on the host that runs the pod, you should see the file there. As user pods are hosted by the worker nodes, in the next command you'll use ssh to connect to the worker node and confirm that all works as expected:

`ssh node01 ls /mydata`{{execute}}

As you've seen, the file you just created is visible on the node01 node, which proofs that all is working as expected.
