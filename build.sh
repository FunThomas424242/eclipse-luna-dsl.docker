#!/bin/bash
docker rm -f "eclipse-luna-dsl"
docker build -t "funthomas424242/eclipse-luna-dsl" eclipse-luna-dsl.docker/
docker run --name "eclipse-luna-dsl" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/eclipse-luna-dsl


