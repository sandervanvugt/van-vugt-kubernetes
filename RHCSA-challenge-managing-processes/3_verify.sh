test $(ps aux | grep dd | grep zero | grep -v grep | awk '{ print $2 }' | wc -w) -eq 0
