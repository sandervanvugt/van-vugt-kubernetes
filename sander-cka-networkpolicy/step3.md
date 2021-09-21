## Task
To make it easy to deploy a NetworkPolicy as well as two pods, get access to the course Git repository:

`git clone https://github.com/sandervanvugt/cka`{{execute}}

Change directory to the git repository:

`cd cka`{{execute}}

Before actually running it, have a look at the contents of the newpolicy-complete-example.yaml file. In particular, have a look at the NetworkPolicy, which only allows incoming traffic to the nginx pod to other pods that have the label access=true set:

`cat nwpolicy-complete-example.yaml`{{execute}}

Now that you know what is going to happen, you can deploy the YAML file:

`kubectl apply -f nwpolicy-complete-example.yaml`{{execute}}
