At this point the service is up and running, and we can test access by addressing the nodePort that is exposed in the node IP address. To make that easier, let's set variables containing the values in use on your configuration. 

To start with, the variable NODEIP:



And next, let's catch the nodePort using jsonpath. jsonpath is not easy to figure out, but it helps you avoiding complext shell code. Don't worry about it too much for the CKAD exam though, it's unlikely that you'll have to do any queries using jsonpath.

`export NODEPORT=$(kubectl get svc canary -o=jsonpath={.spec.ports[].nodePort})`{{execute}}

Now that you've defined these variables, let's check them before moving forward:

`echo $NODEIP:NODEPORT`{{execute}}

All looking good so far, so you should be able to use the curl command to get an answer from the nginx service!

`curl $NODEIP:NODEPORT`{{execute}}
