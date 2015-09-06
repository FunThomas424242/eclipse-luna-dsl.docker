#!/bin/bash
docker start --name "eclipse-luna-dsl" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/eclipse-luna-dsl
