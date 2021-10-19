## Task

The service use the selector to connect to the label that is set on the deployment and the pods. Let's change the selector to see how that works. You can do this interactively with kubectl edit, but in this lab we're providing an automated way that uses a YAML file:

`kubectl get svc nginx -o yaml > nginx.yaml`{{execute}}

Now we need to edit the contents of the YAML file:

`sed 's/app\: nginx/app\: Nginx/g nginx.yaml`{{execute}}

Apply the modified YAML code to the cluster and ignore the warning that is printed:

`kubectl apply -f nginx.yaml`{{execute}}

Now let's see if the service still connects to its endpoints:

`kubectl get endpoints`{{execute}}

Oh no! It doesn't!
