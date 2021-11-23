At this point your done playing with nice values and its time to terminate all the processes. To do so, you'll first have to install the package that contains the killall command. Let's look it up: `dnf provides */killall`{{execute}}

Now that you know the name of the package you have to install, install it: `dnf install -y CHANGEME`{{execute}}

And at this point you can safely terminate all these processes using `killall dd`{{execute}}
