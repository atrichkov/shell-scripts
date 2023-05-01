#!/bin/bash

# Prompt the user to input a port number
read -p "Enter a port number: " port

# Find the process ID (PID) of the process running on the specified port
pid=$(lsof -t -i:$port)

# If a PID was found, kill the process
if [ -n "$pid" ]; then
  echo "Killing process with PID $pid"
  kill $pid
else
  echo "No process found running on port $port"
fi
