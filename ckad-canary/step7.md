Now it's time to complete the Canary application update. To start with, use the following to verify the names of the old and the new Deployment, as well as the labels they are using:

`kubectl get deploy --show-labels`{{execute}}

Next, scale up the new Deployment to the number of replicas that you eventually want to run:

`kubectl scale deploy new-nginx --replicas=3`{{execute}}

Run a few more tests to ensure that the application is still working all-right:

`curl $NODEIP:$NODEPORT`{{execute}}

And finish the procedure by disabling the old Deployment version:

`kubectl scale deploy old-nginx --replicas=0`{{execute}}

Test a few more times, using the curl command: 

`curl $NODEIP:$NODEPORT`{{execute}}

Once you're completely sure that all is working all right, you can delete the old deployment:

`kubectl delete deploy old-nginx`{{execute}}
