At this point the service is up and running, and you can test access by addressing the nodePort that is exposed in the node IP address. To make that easier, let's set variables containing the values in use on your configuration. 

To start with, the variable NODEIP:

`export NODEIP=$(kubectl get nodes -o wide | grep node01 | awk '{ print $6 }')`{{execute}}

And next, let's catch the nodePort using jsonpath. Jsonpath is not easy to figure out, but it helps you avoiding complext shell code. 

`export NODEPORT=$(kubectl get svc canary -o=jsonpath={.spec.ports[].nodePort})`{{execute}}

Now that you've defined these variables, let's check them before moving forward:

`echo $NODEIP:$NODEPORT`{{execute}}

All looking good so far, so you should be able to use the curl command to get an answer from the nginx service!

`curl $NODEIP:$NODEPORT`{{execute}}
