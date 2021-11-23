Now that you've created the groups and some users who are member of the groups, it's time to set up the shared group environment. Use the following to do so: `mkdir -p /data/students /data/profs`{{execute}}

Before you continue, verify creation of these directories and also check permissions and ownership. You'll see that the directories are ownerd by user and group root, which makes sense as when a file or directory is created, the user that creates becomes user owner, and the primary group of that user becomes group owner: `ls -l /data`{{execute}}
