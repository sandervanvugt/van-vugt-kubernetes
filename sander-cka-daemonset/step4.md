## Task

The DaemonSet hasn't been started on all nodes, because the control node has a taint. Use the following command to remove the taint from the control node, which allows user Pods to be scheduled on the control node also:

`kubectl taint node control node-role.kubernetes.io/control-plane:NoSchedule-`{{execute}}

At this point the Pods should be running on all nodes. Use the following to verify:

`kubectl get pods,daemonset`{{execute}}
