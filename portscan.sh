#!/bin/bash
host=127.0.0.1 # replace with target IP address

for port in {1..65535}; do 
  timeout .1 bash -c "echo >/dev/tcp/$host/$port" &&
        echo "port $port is open"
done
echo "Done"
