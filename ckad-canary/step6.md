At this point you're ready to prepare the application update. To prepare for the update, you can use the previously used YAML file and copy that to a new YAML file where the following is changed:

*	Set the image to nginx: latest
*	Set the number of replicas to 1
*	Change "old" throughout the YAML file to "new"
*	Mount the ConfigMap as a volume

As it's easy to make an error while applying these changes, you'll find the file canary.yaml in the Git repository. Use the following command to apply it:

`kubectl create ckad/canary.yaml`{{execute}}

Now verify your service, and also verify that one more pod has been added as an endpoint:

`kubectl get svc`{{execute}}
`kubectl get endpoints`{{execute}}

At this point, the Kubernetes Service should load balance about 25% of all requests to the new application instance. Run the following command as many times as needed to verify that every now and then the new application instance is answering:

`curl $NODEIP:$NODEPORT`{{execute}}
