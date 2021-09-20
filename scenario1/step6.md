## Task

Now that the base cluster is running, and you have a client available, it's time to set up the networking agent. This component is required for the Pod traffic, and uses the IP address that was specified while using kubeadm.

To start with, install the Calico network agent from the Calico git repository by using the next command:
`kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml`{{execute}}

Next, use the following command to fetch the main setup file:
`wget https://docs.projectcalico.org/manifests/custom-resources.yaml`{{execute}}

You'll next need to change the main configuration to match the Pod network address that was set earlier:
`sed -i -e s/192.168.0.0/10.10.0.0/g custom-resources.yaml`{{execute}}

Now you can push this configuration to the cluster:
`kubectl create -f custom-resources.yaml`{{execute}}

At this point the resources will be created. This may take a few minutes to complete. Run the next command to verify:
`kubectl get pods -n calico-system`{{execute}}

