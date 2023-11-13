SCRIPT_PID=$(pgrep -f ./script.sh | head -n 1)
kill $SCRIPT_PID
