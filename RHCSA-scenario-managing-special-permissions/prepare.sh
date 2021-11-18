groupadd students
groupadd profs
useradd -G students lisa
useradd -G students linda
useradd -G profs anouk
useradd -G profs anna
mkdir -p /data/{profs,students}
chgrp students /data/students
chgrp profs /data/profs
chown 770 /data/*
