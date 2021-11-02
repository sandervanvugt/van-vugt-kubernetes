## Task
For the rest of our tests, we need the service IP address. Let's store it in a variable:

`SVCIP=$(kubectl describe svc nginx | grep '^IP' | awk '{ print $2 }')`{{execute}}

Test that accessing this IP address gives access to the nginx application:

`curl ${SVCIP}:80`{{execute}}

As you see, that works. In the next step we are going to introduce some trouble to better understand the working of services.
