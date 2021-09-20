## Task

At this point, it's time to install the Kubernetes master node. Notice that the command to do so will need a few minutes to complete. While using the kubeadm command, you also have to define the IP address range for the pod network. Do this by running the following command with sudo privileges:

`sudo kubeadm init --pod-network-cidr=10.10.0.0/16`{{execute}}

