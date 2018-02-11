#!/usr/bin/env bash

set -e

echo "Waiting ${STARTUP_DELAY} seconds"

sleep ${STARTUP_DELAY}

echo "Starting miner"

./miner --server ${SERVER} --user ${ADDRESS}.${WORKER} --pass ${PASS} --port ${PORT} --api 0.0.0.0:42000 --logfile /var/log/ewbf.log
