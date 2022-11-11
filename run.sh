#!/bin/bash
Docker build -t mi_app .
Docker run --rm -it --user=$(id -u) --env="DISPLAY" --workdir=/usr/app --volume="$PWD":/usr/app --volume="/etc/group:/etc/group:ro"  --volume="/etc/passwd:/etc/passwd:ro" --volume="/etc/shadow:/etc/shadow:ro" --volume="/etc/sudoers.d:/etc/sudoers.d:ro" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" mi_app
