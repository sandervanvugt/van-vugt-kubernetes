test $(ps aux | grep dd | grep zero | grep -v grep | sort -n -k 3 | tail -1 | awk '{ print $3 }' | cut -f 1 -d .) -gt 70
