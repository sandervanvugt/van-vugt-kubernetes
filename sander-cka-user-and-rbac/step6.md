## Task

Now that all is configured, open a shell as user anna:

`su - anna`{{execute}}

Test that you can see pods:

`kubectl get pods -n default`{{execute}}

Also check what happens if you want to see all resources:

`kubectl get all`{{execute}}

The last command is showing lots of errors, as user anna only has access to a limited number of resources. This completes this lab. 
