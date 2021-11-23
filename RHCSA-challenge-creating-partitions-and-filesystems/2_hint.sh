#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 2: $seconds_sofar"

# This hint message will appear between 20-40 seconds elapsed after the task began
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [ $seconds_sofar -ge 40 ]; then
  echo "**Hint:** Use the fdisk utility on the device /dev/loop0p1 to create the partition, or if you prefer, use parted. Need some additional help? Please check out this lesson in [RHCSA Complete Video Course 3/ed](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_02_14_05/)"
fi
