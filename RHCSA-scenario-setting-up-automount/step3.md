At this point you'll have to set up permissions. The first step in setting up permissions, is to take care of ownership. As we are creating a shared group environment, it's group ownership that matters here:

`chgrp students /data/students`{{execute}}

`chgrp profs /data/profs`{{execute}}

Now that ownership is set, you can apply the permissions. We need user and group to have read, write and execute, and no permissions at all for others: `chmod 770 /data/{students,profs}`{{execute}}
