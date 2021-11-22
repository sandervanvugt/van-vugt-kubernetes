#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 3: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

if [[ $seconds_sofar -ge 20 &&  $seconds_sofar -lt 120 ]]; then
  echo "**Hint:** Don't forget that there's a service that needs to be started and enabled!"
fi



# This hint message will appear 20+ seconds elapsed after the task began
if [ $seconds_sofar -ge 120 ]; then
  echo "**Hint:** When referring to all files on the NFS server, use *. When referring to the corresponding local files, use &. If you're still having a hard time, review [this](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_04_26_07/) lesson in the RHCSA Complete Video Course."
fi
