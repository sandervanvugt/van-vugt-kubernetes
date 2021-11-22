#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 5: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [ $seconds_sofar -ge 20 ]; then
  echo '**Hint:** The lftp command can be used to upload the file. First, type lftp localhost to open the lftp shell. Next, type cd pub to get into the pub directory on the FTP server. Last, type put /etc/hosts and that should now work.' 
fi
