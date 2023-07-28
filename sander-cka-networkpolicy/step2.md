You will need to install a network agent to work with NetworkPolicy, let's install the calico agent. To access it, clone the course Git repository:

`git clone https://github.com/sandervanvugt/cka`{{execute}}

Change into the Git directory:

`cd cka`{{execute}}

Run the following command to do so:

`kubectl apply -f calico.yaml`{{execute}}

To verify that the new network agent has been deployed successfully, run the following command. Repeat until all pods show as running:

`kubectl get pods -n kube-system`{{execute}}

