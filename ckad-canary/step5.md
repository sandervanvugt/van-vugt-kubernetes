We are about the update the application. To make it easy to see when we are using a new instance of the application, let's create a ConfigMap that contains a new index.html. First, use the following to generate the file that we want to put in the ConfigMap:

`echo Greetings from the Canary > index.html`{{execute}}

Now create a ConfigMap resource, using the index.html you've just created:

`kubectl create configmap canary --from-file=index.html`{{execute}}

And check that the ConfigMap contains the right data:

`kubectl describe cm canary`{{execute}}
