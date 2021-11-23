## Task

Now you can verify that the pods actually have been started:
`kubectl get all -n limited`{{execute}}

As a final test, try to scale the number of pods:
`kubectl scale deploy nginx --replicas=5 -n limited`{{execute}}

As the namespace quota allow a maximum of 3 pods to be running, you'll see that the number of pods is not increased:
`kubectl get all -n limited`{{execute}}

