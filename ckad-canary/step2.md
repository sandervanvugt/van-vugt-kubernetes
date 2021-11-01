To work with Canary Deployments, it's convenient to use YAML files. Use the following command to generate the oldnginx.yaml file:

`kubectl create deploy old-nginx --image=nginx:1.14 --dry-run=client -o yaml > oldnginx.yaml`{{execute}}

To make the YAML file usable in a Canary Deployment, you'll need to add the label "type: canary" and change the number of replicas to 3. For your convenience, use the oldnginx.yaml file that is provided in the course Git repository, which alread contains these changes:

`kubectl create -f ckad/old-nginx.yaml`{{execute}}

And verify that you have 3 Pods, as well as the right label:

`kubectl get all --selector type=canary`{{execute}}
