#!/usr/bin/env bash

docker=docker

mkdir -p /app/screenshots  # Create a directory to store screenshots

$docker build -t xvfb-test .
container_id=$($docker run --detach -it xvfb-test)
$docker exec $container_id /app/entrypoint.sh
sleep 1  # Give tracer some time to start

# Take screenshots in a loop
seconds=10
while [ $seconds -gt 0 ]; do
    echo "Taking screenshot ($seconds)..."
    $docker exec $container_id /app/screenshot.sh
    $docker cp $container_id:/app/screenshots .
    sleep 10
    seconds=$((seconds-1))
done
