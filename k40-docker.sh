#!/bin/bash
# xhost +
xhost +local:docker
docker run -it --rm --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix k40
