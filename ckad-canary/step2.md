To work with Canary Deployments, it's convenient to use YAML files. Use the following command to generate the oldnginx.yaml file:

`kubectl create deploy old-nginx --image=nginx:1.14 --dry-run=client -o yaml > oldnginx.yaml`{{execute}}

To make the YAML file usable in a Canary Deployment, you'll need to add the label "type: canary" and change the number of replicas to 3. For your convenience, use the oldnginx.YAML file that is provided in the course Git repository, which alread contains these changes. As an alternative, you can also manually make these changes to the YAML file you've just created:

`kubectl create -f ckad/old-nginx.yaml`{{execute}}

And verify that you have 3 Pods, as well as the right label. Repeat the next command until you see all Pods with a status of Running:

`kubectl get all --selector type=canary`{{execute}}
