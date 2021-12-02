By default, all processes are started with the same priority. Use the nice command to start with a different priority, where the range is from -19 (highest priority) up to 20 (lowest priority): `nice -n -10 dd if=/dev/zero of=/dev/null &`{{execute}}

Use `top`{{execute}} again for a nice overview of processes and their current priority. You'll notice there is one process running with priority 10 instead of 20, which is getting a lot more CPU cycles. 

You can also change priority from the top utility: press `r`{{execute}}, next click in the terminal window and enter the PID of one of the dd processes you've started before, as well as a priority of 10. Press Enter to confirm. You'll see that one of the processes is now using a lot less CPU cycles. 

Use `q`{{execute}} to quit the top interface. 
