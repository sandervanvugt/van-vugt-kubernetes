#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 1: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 20 &&  $seconds_sofar -lt 40 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [[ $seconds_sofar -ge 40 && $seconds_sofar -lt 180 ]]; then
  echo "**Hint:** Install the nfs-utils package, and use systemctl to start and enable nfs-server. There is no need to do anything about either SELinux or firewalld."
fi

if [ $seconds_sofar -ge 180 ]; then
  echo '**Hint:** As configuring an NFS server is not a part of the RHCSA objectives, no worries if you need some help. Check [here](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_04_26_01/) for the complete explanation!'
fi
