The last thing to fix is the option to delete files. If you don't want users that are not owner to delete files, use sticky bit on the directory that contains the files. If you do that, you can only delete the file if you are the owner of the file, or the owner of the directory that contains the file. 

Let's first set the permission: `chmod +t /data/profs`{{execute}}

And let's test: `su anouk -c "rm /data/profs/*"`{{execute}}

As you've noticed, that doesn't work anymore! It will work however if you're the owner of the directory that contains the files, so let's make anouk the owner: `chown anouk /data/profs`{{execute}}

And verify that now it does work for anouk: `sudo anouk -c "rm -f /data/profs/*`{{execute}}

Did that really work? `ls -l /data/profs`{{execute}}

It did! And with this, this scenario is done!
