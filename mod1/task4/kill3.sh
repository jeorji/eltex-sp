pgrep -f "sleep $SLEEP_TIME" | awk 'NR <= 3 { system("kill -9 " $0) }'
