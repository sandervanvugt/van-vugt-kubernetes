#
# See hint documentation: https://www.katacoda.community/challenges.html#hints
#

seconds_sofar=$1

# echo "Debug Hint Task 2: $seconds_sofar"

# This hint message will appear between 10-20 seconds elapsed after the task began
if [[ $seconds_sofar -ge 10 &&  $seconds_sofar -lt 20 ]]; then
  echo "Still working on it? I'll show a hint very soon..."
fi

# This hint message will appear 20+ seconds elapsed after the task began
if [[ $seconds_sofar -ge 20 && $seconds_sofar -lt 120 ]]; then
  echo "**Hint:**  Use the full path reference to start the Docker container: docker.io/library/nginx. To login, you can use ssh anna@localhost"
fi

if [ $seconds_sofar -ge 120 ]; then
  echo "**HInt:** Stil working? If you need additional documentation, watch this lesson in [RHCSA Complete Video Course 3/ed](https://learning.oreilly.com/videos/red-hat-certified/9780135656495/9780135656495-RCSA_04_27_06/)"
