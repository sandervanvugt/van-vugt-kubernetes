#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 2: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 30 &&  $seconds_sofar -lt 45 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [[ $seconds_sofar -ge 45 && $seconds_sofar -lt 180 ]]; then
  echo '**Hint:** Start thinking about ownership and how that relates to special permissions. Need more help? Consult [RHCSA Complete Video Course 3/ed Lesson](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_01_07_00/) for more details.'
fi

# This hint message will appear 120+ seconds elapsed after the task began
if [ $seconds_sofar -ge 180 ]; then
  echo '**Hint:** Hey, you're still working I see. If you're really getting stuck, have a look at [this video](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_01_07_07/) for more specific instructions.'
fi
