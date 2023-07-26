## Task
Before actually running it, have a look at the contents of the newpolicy-complete-example.yaml file. In particular, have a look at the NetworkPolicy, which only allows incoming traffic to the nginx pod to other pods that have the label access=true set:

`cat nwpolicy-complete-example.yaml`{{execute}}

Now that you know what is going to happen, you can deploy the YAML file:

`kubectl apply -f nwpolicy-complete-example.yaml`{{execute}}
