Let's start by investigating on which IP addresses the pods are listening:

`kubectl get pods -o wide`{{execute}}

Use the following command to expose the Pod workloads by adding a service:

`kubectl expose deploy nginx --port=80`{{execute}}

Let's use kubectl describe to confirm the deployment is working correctly. Look for the endpoints, which are the IP addresses this service is forwarding traffic to:

`kubectl describe svc nginx`{{execute}}

As we need it later, let's check the Service IP address:

`kubectl get svc`{{execute}}
