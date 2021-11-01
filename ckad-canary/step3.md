The essence of the Canary Deployment strategy, is to expose the Deployment using the label you've just added, and use that same label again later in the procedure. Use the following command to do so:

`kubectl expose deploy old-nginx --name=canary --type=NodePort --port=80 --selector type=canary`{{execute}}

Now let's verify that the Service resource was added successfully:

`kubectl get svc`{{execute}}
