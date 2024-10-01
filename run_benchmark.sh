#!/bin/bash

# # The PID of the existing background process (replace 12345 with the actual PID)
# target_pid=2231161

# # Loop until the process with PID $target_pid is no longer running
# while ps -p $target_pid > /dev/null; do
#     echo "Waiting for process $target_pid to finish..."
#     sleep 10  # Wait for 1 second before checking again
# done

# # Once the existing background process finishes, continue with the script
# echo "Process $target_pid has finished. Continuing with the script..."

for i in {1..10}; do
  echo "Starting benchmark ${i}"
  nohup bash -c 'time ./test.sh pneuma_fetaqa' > "fetaqa_query${i}.out"
  wait
done