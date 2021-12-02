At this point it should all be working. First, let's see what it looks like. Use the following command to check the contents (including hidden files) of the /home/nfs directory. While looking at the result, notice that you never created this directory. You didn't have to, because autofs has done it for you: `ls -al /home/nfs`{{execute}}

In the previous step you've seen that the /home/nfs directory didn't contain any subdirectories. That is expected, because autofs will only become active when one of the subdirectories is actually accessed. For a home directory, that would happen automatically when the user is logging in. Use the following to simulate this: `cd /home/nfs/linda`{{execute}}

Type `pwd`{{execute}} to verify that you are indeed in the directory /home/nfs/linda, which has now been automounted for you. 

To understand a bit more about all that is happening in the background, use `mount | tail -5`{{execute}} where you'll see the mounts that have been created by autofs. 
