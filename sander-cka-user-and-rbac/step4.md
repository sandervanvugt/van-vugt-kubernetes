## Task
In this step you're going to open a shell as user anna and check how far that brings you:

`su - anna`{{execute}}

Create the .kube directory that will hold the Kubernetes config file
`mkdir .kube`{{execute}}

Next, copy the admin.conf file to user anna's local directory:
`sudo cp /etc/kubernetes/admin.conf .kube/config`{{execute}}

Set file ownership, such that user anna can also use the config file:
`sudo chown anna:anna .kube/config`{{execute}}

Change the current-context in the config file to matc the anna-context that was just created by the admin user:
`sed -i -e 's/current-context\: kubernetes-admin\@kubernetes/current-context\: anna-context/' .kube/config`{{execute}}

Verify that user anna has no access privileges to the cluster
`kubectl get all`{{execute}}

##NOTE FROM SELF: root should create an anna-config file, and anna should copy that over instead of taking away her own root privileged
