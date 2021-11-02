Using kubectl describe you have just seen that the standard Pod application is stopping with an exit code that is not 0. That means there is an application problem, and you'll have to check the application output. Use the following command to do so:

`kubectl logs $MYDBPOD`{{execute}}

As you can see, the application needs more configuration information to start the right way! You'll provide this information in the next step. 
