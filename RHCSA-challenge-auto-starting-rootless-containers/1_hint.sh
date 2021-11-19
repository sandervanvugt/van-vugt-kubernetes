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
if [[ $seconds_sofar -ge 20 && $seconds_sofar -lt 120]]; then
  echo "**Hint:** Have a look at the loginctl command to enable the user to auto-start systemd services without logging in." 
fi

if [ $seconds_sofar -ge 120 ]; then
  echo "**Hint:** Having a hard time? No problem! Just have a look at lesson 27.4 of the [RHCSA Complete Video Course 3/ed](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_04_27_06/) for everything you need to know about this topic."
