#!/bin/bash
# xhost +
xhost +local:docker
docker build -t k40 .
docker run -it --rm --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/bus/usb:/dev/bus/usb k40
