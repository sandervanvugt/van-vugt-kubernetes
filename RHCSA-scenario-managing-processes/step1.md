To start with, you're going to create some stress, using the dd command. Run the following command four times, to create four very busy background processes. Notice that the & sign will run the processes in the background, so that you can continue working in your terminal: `dd if=/dev/zero of=/dev/null &`{{execute}}

Let's verify that the processes are decently running in the background, by using the `jobs`{{execute}} command.

Before we move on, use `fg 1`{{execute}} to move the first background job you started back to the foreground. 

You can always restart a foreground job in the background. To do so, click in the terminal window and use the Ctrl-z keystroke. This will pause the process. 

Now use `bg`{{execute}} to continue the paused process in the backround. 
