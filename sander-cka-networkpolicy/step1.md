## Task

Launch the following command to prepare the lab environment:
`launch.sh`{{execute}}

NetworkPolicy only works if you're using a supported network agent. The default configuration doesn't use any NetworkPolicy. Run the following command to verify that you don't see any NetworkPolicy pods.

`kubectl get all -n kube-system`{{execute}}

