Let's make sure now we see some oddities while working with basic permissions. First, create some files as user anna: `su anna -c "touch /data/profs/annafile1 /data/profs/annafile2"`{{execute}}

So do you think that anna's fellow prof anouk can write to the file? Let's try: `su anouk -c "echo hello >> /data/profs/annafile1"`{{execute}}

As you've noticed, that didn't work. How about deleting? Use this command to delete the files that anna has created as user anouk: `su anouk -c "rm -f /data/profs/*"`{{execute}}

And what do you think, can poor anna still access her files? `su anna -c ls -l /data/profs/`{{execute}}

Now this may be some undesired behavior! Let's go fix it!
