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
if [ $seconds_sofar -ge 20 ]; then
  echo "**Hint:** The dd command takes an if and of argument, for input file and output file. Consider nothing to be the same as /dev/zero, and nowhere to be /dev/null. Okay, /dev/zero is not really nothing, as this special device will generate zeroes, but it just sounds cool to call it that way. "
fi
