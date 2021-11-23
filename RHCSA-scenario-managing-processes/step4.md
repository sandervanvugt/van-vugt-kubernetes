At this point your done playing with nice values and its time to terminate all the processes. To do so, you'll first have to install the package that contains the killall command. Let's look it up: `dnf provides */killall`{{execute}}

Now that you know the name of the package you have to install, install it: `dnf install -y psmisc`{{execute}}

And at this point you can safely terminate all these processes using `killall dd`{{execute}}

To finish this scenario, use `ps aux | awk '{ print $11 }' | grep '^dd'`{{execute}} and confirm that you don't see the dd processes anymore. Notice that the complex filter on the ps aux command will print the 11th column (which contains process names, and show only results where the 12th column is starting with "dd". This is needed to make sure you don't get a false positive on process like kthreadd.
