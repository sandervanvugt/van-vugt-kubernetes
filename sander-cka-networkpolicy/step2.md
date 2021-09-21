Now that the old network agent has been removed, you can install the calico agent. As the first step, run the following command to deploy the tigera operator. This is a required framework for running the network agent. 
 
`kubectl create -f https://docs.projectcalico.org/manifests/tigera-operator.yaml`{{execute}}

Next you need to fetch the calico custom-resources.yaml file:

`wget https://docs.projectcalico.org/manifests/custom.resources.yaml`{{execute}}

To match the YAML file with the pod network CIDR that will be created by the kube-controller service, you need to change the IP addresses for the Calico agent:

`sed -i -e 's/192.168.0.0/10.244.0.0/g' custom-resources.yaml`{{execute}}

At this point, you can create the Calico resources:

`kubectl create -f custom-resources.yaml`{{execute}}

To verify that the new network agent has been deployed successfully, run the following command. Repeat until all pods show as running:

`kubectl get pods -n calico-system`{{execute}}

