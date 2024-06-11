#!/usr/bin/env bash

docker=podman

$docker build -t xvfb-test .
container_id=$(podman run --detach -it xvfb-test)

# Run the script to take a screenshot
$docker exec $container_id /app/entrypoint.sh
$docker exec $container_id /app/screenshot.sh
sleep 1

seconds=10
while [ $seconds -gt 0 ]; do
    $docker exec $container_id /app/screenshot.sh
    $docker cp $container_id:/app/screenshot.png screenshot.png
    sleep 1
    seconds=$((seconds-1))
done
