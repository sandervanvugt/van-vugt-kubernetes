The easiest way to update a running Deployment to use a new environment variable, is by using kubectl set env. Use the following command to change the Deployment to use the variable from the ConfigMap you've just created:

`kubectl set env deploy/mydb --from=configmap/mydbvar`{{execute}}

You can now investigate the Deployment spec, where you'll see that the env_from part contains the variable from the ConfigMap:

`kubectl get deploy mydb -o yaml`{{execute}}
