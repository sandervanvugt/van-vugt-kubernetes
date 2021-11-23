Now that you've seen what the processes are doing, let's run a new process with an adjusted nice value: `nice -10 dd if=/dev/zero of=/dev/null &`{{execute}}

Now let's see how this process is doing: `ps aux | grep dd | grep -v grep`{{execute}}
The third column is showing CPU load, and as you can see, the CPU load of one of the five dd processes is a lot higher than that of all the others!

Let's also check out what this looks like in `top`{{execute}}

From the top interface itself, you can also change process priority: press `r`{{execute}} and next enter the PID of the process for which you want to change priority. To do so, you need to click in the terminal window and enter the process ID of one of the top commands. You can find it in the second column. 

After entering the PID, enter the desired nice value. To do so, type the value 10, to lower process priority and observe the result. 

Now you can quit the top interface again by pressing `q`{{execute}}
