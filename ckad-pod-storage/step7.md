## Task

By default, user pods cannot run on the Kubernetes control node. Run the following command to remove the taint so that you can start scheduling nodes on your all in one Kubernetes node. 

`kubectl taint nodes --all node-role.kubernetes.io/master-`{{execute}}

