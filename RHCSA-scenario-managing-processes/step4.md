At this point it's time to clean up a bit. To do so, use the killall command. This command is not installed by default though. So let's find out which package it is coming from: `dnf provides */killall`{{execute}}

You can now install the package: `dnf install -y CHANGEME`{{execute}}

And finally, use `killall dd`{{execute}} to terminate all of the dd processes.
