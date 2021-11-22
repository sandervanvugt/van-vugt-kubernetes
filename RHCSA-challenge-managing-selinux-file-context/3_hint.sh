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
  echo "**Hint:** Not sure how to set a context label? Check man semanage-fcontext for nice examples."
fi



# This hint message will appear 20+ seconds elapsed after the task began
if [ $seconds_sofar -ge 120 ]; then
  echo '**Hint:** Use semanage fcontext to set the file context on /var/pub/ftp to public_content_rw_t. Check [here](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_04_22_00/) to review SELinux essentials.'
fi
