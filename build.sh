#!/bin/bash
docker rm -f "git-maven-eclipse"
docker build -t "funthomas424242/git-maven-eclipse" git-maven-eclipse.docker/
docker run --name "git-maven-eclipse" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/git-maven-eclipse


