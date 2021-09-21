## Task

Before you can start this scenario, the environment needs to be started. Hang on while this is happening, and once you see a prompt type the following to test that the environment is up. If you get an error message, wait a few more minutes and try again:

`kubectl get all`{{execute}}

Now that the environment is up, you can begin. Start by creating a new namespace:

`kubectl create ns limited`{{execute}}

Apply quota to the new namespace:

`kubectl create quota qtest --hard pods=3,cpu=100,memory=500Mi --namespace limited`{{execute}}
