Now it's time to verify that it all worked out as expected. First, use a simple ls command: `ls -ld /data/{profs,students}`{{execute}}

Next, create a file as user anna, who is member of the group profs: `su anna -c "touch /data/profs/anna"`{{execute}}

And verify that worked: `ls -l /data/profs/anna`{{execute}}

That worked now didn't it? Now in a shared group environment it really makes sense if people who are a member of the same group can write to eachothers files. Let's test if anouk can write to the file that anna just created: `su anouk -c "echo anouk > /data/profs/anna"`{{execute}}

As you've noticed, that did not work. You'll learn how to fix that in the scenario [Managing special permissions]()
