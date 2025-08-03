#!/bin/sh
set -e

# If a command is provided, run it; otherwise start Prefect
if [ "$#" -eq 0 ]; then
    exec prefect server start
else
    exec "$@"
fi
