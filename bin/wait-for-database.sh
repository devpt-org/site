#!/usr/bin/env bash

TRIES=0
MAX_TRIES=10
WAIT=10

until php artisan migrate:status
do
    ((TRIES++))
    if [ $TRIES -gt $MAX_TRIES ]; then
        echo "Database is not ready after $MAX_TRIES tries. Exiting."
        exit 1
    fi
    echo "Database is not ready yet. Attempt $TRIES/$MAX_TRIES. Waiting $WAIT seconds before next try..."
    sleep $WAIT
done
