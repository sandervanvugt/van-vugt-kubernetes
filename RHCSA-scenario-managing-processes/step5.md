## Task

To verify working of the Persistent Volume, use the following command to write a file to the directory /usr/share/nginx/html in the Pod:

`kubectl exec pv-Pod -- touch /usr/share/nginx/html/hello-world.txt`{{execute}}

Files that are written by the Pod to the directory on which the PVC is mounted, should be visible in the Persistent Volume storage backend. As this is configured to the directory /mydata on the host that runs the Pod, you should see the file there. As user Pods are hosted by the worker nodes, in the next command you'll use ssh to connect to the worker node and confirm that all works as expected:

`ssh node01 ls /mydata`{{execute}}

As you've seen, the file you just created is visible on the node01 node, which proofs that all is working as expected.
