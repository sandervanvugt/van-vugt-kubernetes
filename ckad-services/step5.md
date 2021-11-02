## Task
In the previous step you've seen how the service uses the selector to connect to the pod endpoints. Verify that this selector is now set the wrong way:

`kubectl get svc -o yaml`{{execute}}

Fortunately, that is something easy to fix! You can use kubectl edit svc nginx and manually make the change to correct the selector label, or go for the automated way which is in the two steps below:

`sed -i -e 's/app\: Nginx/app\: nginx/g' nginx.yaml`{{execute}}

At this point you should apply the modified YAML file. As in some Kubernetes versions that will give an error message, with the next commands you will first delete the current erroneous deployment and next create it again based on the modified YAML file:

`kubectl apply -f nginx.yaml`{{execute}}

and confirm that all is working as expected again:

`kubectl get endpoints`{{execute}}

This concludes this scenario!
