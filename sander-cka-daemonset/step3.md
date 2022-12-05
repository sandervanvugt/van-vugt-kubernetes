## Task
Now that you have modified the YAML code the right way, it's time to create the DaemonSet:

`kubectl apply -f daemonginx.yaml`{{execute}}

Next, let's verify if it has been started:

`kubectl get daemonset,pods`{{execute}}

You'll notice it hasn't been started!
