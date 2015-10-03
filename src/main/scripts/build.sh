#!/bin/bash
docker rm -f "git-maven-eclipse.docker"
docker build -t "funthomas424242/git-maven-eclipse.docker" ../docker/
docker run --name "git-maven-eclipse.docker" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/git-maven-eclipse.docker


