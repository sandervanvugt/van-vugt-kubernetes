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
  echo "**Hint:** Use the mkdir command to create the directories. Think about using the convenient option to create a complete path using one single command. No worries if you don't remember; just use mkdir --help for additional usage information. 
fi
