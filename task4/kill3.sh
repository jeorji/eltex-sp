pgrep -f "sleep $1" | awk 'NR <= 3 { system("kill -9 " $0) }'
