#!/bin/bash

# Name of the image
IMAGE_NAME="my-samp-image"

case "$1" in
  start)
    echo "Starting SAMP Server..."
    docker run -d --name my-samp-container -p 7777:7777/udp $IMAGE_NAME
    ;;
  stop)
    echo "Stopping SAMP Server..."
    docker stop my-samp-container
    ;;
  restart)
    echo "Restarting SAMP Server..."
    docker stop my-samp-container
    docker start my-samp-container
    ;;
  *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
esac