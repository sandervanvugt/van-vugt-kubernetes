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
  echo "**Hint:** Install the vsftpd package as well as the lftp package, and use systemctl to start and enable vsftpd. Next, use chmod to apply correct ownership."
fi

if [ $seconds_sofar -ge 120 ]; then
  echo "**Hint:** As configuring vsftpd is not a part of the RHCSA objectives, let me be specific about what you need to do so that you can move forward. Make sure that in /etc/vsftpd/vsftpd.conf you have anonymous_enable=YES and also anon_upload_enable=YES. Also, make sure the directory /var/ftp/pub has 777 as the permission mode and verify that the vsftpd systemctl service is running. Next, use (1) lftp localhost, (2) cd pub, (3) put /etc/hosts, (4) quit to upload the file."
fi
