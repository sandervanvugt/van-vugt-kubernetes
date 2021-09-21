## Task

The all-in-one cluster should now be operational. Let's do a simple test and verify that you can run a simple application on top of it:

`kubectl create deploy mynginx --image=nginx`{{execute}}

To verify that the resource was created successfully, use the following command:
`kubectl get all`{{execute}}

