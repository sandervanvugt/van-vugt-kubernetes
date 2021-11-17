#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 1: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [[ $seconds_sofar -ge 20 && $seconds_sofar -lt 120 ]]; then
  echo "**Hint:** Use the dd command to create the image file, use the losetup command to create the loop device. Still don't know what to do? Hang on for another 2 minutes and I'll show you what to do so that you can move forward.
fi

if [ $seconds_sofar -ge 120 ]; then
  echo "**Hint:** No worries if you couldn't do this step for yourself, as setting up a loop device is not really on the RHCSA objectives. We need it in this environment though, as a flexible solution to set up disk devices to practice partitioning and LVM. Here are the commands that you'll need to run to proceed to the next step: (1) dd if=/dev/zero of=/root/diskfile.img bs=1M count=8192 (2) losetup -fP /root/diskfile.img (3) losetup -a.
