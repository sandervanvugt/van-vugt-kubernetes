#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 2: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 20 &&  $seconds_sofar -lt 40 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [ $seconds_sofar -ge 40 ]; then
  echo "**Hint:** In /etc/fstab you'll use 6 columns. The first 3 is what is important. for this assignment. Use LABEL= instead of the device name to mount the filesystem by label." 
fi
