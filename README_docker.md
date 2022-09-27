#Running k40 whisperer as a GUI docker application:

`Run ./k40_docker.sh`
from the repo, or directly run
```
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
```
