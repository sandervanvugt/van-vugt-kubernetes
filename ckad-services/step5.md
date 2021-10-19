## Task
In the previous step you've seen how the service uses the selector to connect to the pod endpoints. Verify that this selector is now set the wrong way:

`kubectl get svc -o yaml`{{execute}}

Fortunately, that is something easy to fix! You can use kubectl edit svc nginx and manually make the change, or go for the automated way which is in the two steps below:

`sed 's/app\: Nginx/app\: nginx/g' nginx.yaml`{{execute}}

Apply the modified YAML file:

`kubectl apply -f nginx.yaml`{{execute}}

and confirm that all is working as expected again:

`kubectl get endpoints`{{execute}}

This concludes this scenario!
