#!/bin/bash
xhost +local:docker
docker run \
  --interactive \
  --tty \
  --rm \
  --privileged \
  --env DISPLAY=$DISPLAY \
  --volume /tmp/.X11-unix:/tmp/.X11-unix \
  --volume /dev/bus/usb:/dev/bus/usb \
    matthewbaggett/k40-whisperer
