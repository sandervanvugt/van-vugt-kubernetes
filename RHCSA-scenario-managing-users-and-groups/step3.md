At this point you are ready to create the user itself: `useradd -G sales anna`{{execute}}

Also set a password for the new user. The command will prompt you to enter the new password twice (don't forget to click in the terminal window before you do). Set the password to anything you like: `passwd anna`{{execute}}

Alternatively, you can use passwd --stdin, which allows you to set the new password from a pipe: `echo mysecretpassword | passwd --stdin anna`{{execute}}
