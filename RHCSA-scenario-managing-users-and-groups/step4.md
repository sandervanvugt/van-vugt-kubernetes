You are now done and the new user is created. Let's verify that this happened the way you wanted to. First, use the following command to see the new user, as well as the group membership: `id anna`{{execute}}

Now let's check that the password is indeed valid for only 90 days: `chage -l anna`{{execute}}

You can also look at the raw data in /etc/shadow, which shows the hash of the encrypted password as well: `grep anna /etc/shadow`{{execute}}

And finally, let's verify the new file was created in the user home directory: `ls -al /home/anna`{{execute}}

And with this you are done with this scenario!
