## Task

Launch the following command to prepare the lab environment:
`launch.sh`{{execute}}

NetworkPolicy only works if you're using a supported network agent. The flannel agent doesn't support quota. The calico agent does. Let's investigate which one you are using. Run the following command to confirm that you are currently using the flannel agent:

`kubectl get all -n kube-system`{{execute}}

So you are running the flannel agent, and that needs to be changed. Before changing the configuration with the new agent, let's investigate the IP address range used for the Pod network. This address is manged by the kube-controller-manager service that is running as a static pod on your controller node. Use the following command to show process properties, and look for the cluster-cidr. It should be set to 10.244.0.0/16

`ps aux | grep kube-controller`{{execute}}

At this point you know all that you need to know before you can start cleaning up the old configuration. Use the following command to delete the daemonset that runs the flannel pod on all nodes:

`kubectl delete daemonset/kube-flannel-ds-amd64 -n kube-system`{{execute}}

