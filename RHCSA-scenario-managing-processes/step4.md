At this point it's time to clean up a bit. To do so, use the `killall`{{command}} command. This command is not installed by default though. So let's find out which package it is coming from: `dnf provides */killall`{{execute}}

In the output of the previous command, look for the name of the package that contains the file `/usr/sbin/killall`{{file}}. The name is psmisc. You can now install the package: `dnf install -y psmisc`{{execute}}

And finally, use `killall dd`{{execute}} to terminate all of the dd processes.

Once more, type `ps aux | grep dd`{{execute}}. You will see a few processes, but you'll also see that the `dd`{{command}} processes have all disappeared.
