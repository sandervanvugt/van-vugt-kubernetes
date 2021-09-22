## Task
In this step you're going to open a shell as user anna and check how far that brings you:

`su - anna`{{execute}}

Create the .kube directory that will hold the Kubernetes config file
`mkdir .kube`{{execute}}

Next, copy the admin.conf file to user anna's local directory:
`sudo cp /etc/kubernetes/anna.conf .kube/config`{{execute}}

Set file ownership, such that user anna can also use the config file:
`sudo chown anna:anna .kube/config`{{execute}}

Verify that user anna has no access privileges to the cluster; you should see many forbidden messages:
`kubectl get all`{{execute}}

Exit the user anna shell to get back to your regular user account:
`exit`{{execute}}
