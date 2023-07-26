Now that the old network agent has been removed, you can install the calico agent. Run the following command to do so:

`kubectl apply -f https://github.com/projectcalico/calico/blob/master/manifests/calico.yaml`{{execute}}

To verify that the new network agent has been deployed successfully, run the following command. Repeat until all pods show as running:

`kubectl get pods -n calico-system`{{execute}}

