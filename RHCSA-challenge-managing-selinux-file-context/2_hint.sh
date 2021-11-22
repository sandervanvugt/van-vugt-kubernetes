#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 2: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

if [[ $seconds_sofar -ge 20 &&  $seconds_sofar -lt 120 ]]; then
  echo "**Hint:** There are two helper packages that need to be installed here. If you know which command to use for SELinux troubleshooting, you can use dnf provides to find the right name of the package."
fi



# This hint message will appear 20+ seconds elapsed after the task began
if [ $seconds_sofar -ge 120 ]; then
  echo '**Hint:** Still being blocked? No worries, SELinux is amongst the most difficult topics in RHCSA! You should be looking for output of the selart command. Please look [here](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_04_22_00/) for additional explanation.'
fi
