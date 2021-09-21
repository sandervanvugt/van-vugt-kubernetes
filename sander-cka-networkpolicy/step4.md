## Task
NOw it's time to verify that all is working as expected. To start with, you need to expose the pod to make it accessible:

`kubectl expose pod nginx --port=80`{{execute}}

Now test that traffic from the busybox to the nginx pod is blocked:

`kubectl exec -it busybox -- wget --spider --timeout=1 nginx`{{execute}}

As you have seen that the NetworkPolicy only allows access to Pods that have the appropriate label set, use the following command to show all labels currently used:

`kubectl get pods --show-labels`{{execute}}
