#!/bin/bash

run_child_process() {
    sleep $SLEEP_TIME
}

num_processes=5
for ((i=1; i<=$num_processes; i++)); do
    run_child_process &
done

wait

echo "Количество отработанных процессов: $num_processes" > processed_count.txt

sleep 3600
