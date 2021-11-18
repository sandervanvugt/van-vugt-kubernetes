In this scenario you're going to set up a shared group environment for the groups students and profs. The purpose is to ensure that members of the profs group can work in the /data/profs directory, and members of the group students can work in the /data/students directory. To do so, you'll first have to create these groups and users, and make sure that group membership is managed the right way:

`groupadd students`{{execute}}

`groupadd profs`{{execute}}

`useradd linda -G students`{{execute}}

`useradd lisa -G students`{{execute}}

`useradd anouk -G profs`{{execute}}

`useradd anna -G profs`{{execute}}
