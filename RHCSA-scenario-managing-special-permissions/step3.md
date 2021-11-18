The first special permission manages group ownership for new files. If Set Group ID is set on a directory, all files created in that directory will be group-owned by the owner of the directory: `chmod g+s /data/profs`{{execute}}

So let's test: `su anna -c "touch /data/profs/annafile{1,2}"`{{execute}}

And verify: `ls -l /data/profs`{{execute}}

So now anouk can write to anna's files while anna is on vacation: `su anouk -c "echo hello >> /data/profs/annafile1`{{execute}}
