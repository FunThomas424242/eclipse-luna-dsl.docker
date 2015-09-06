#
#
#

# pull base image.
FROM isuper/java-oracle:jdk_8

# maintainer details
MAINTAINER Thomas Schubert "funthomas424242@gmail.com"

# create working directory
RUN mkdir -p /local/git
WORKDIR /local/git

ADD import.pp /local/git/

# install the full configuration via puppet
RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y emacs puppet puppetmaster && \
  puppet apply import.pp

# attach volumes
# VOLUME /volume/git

ADD install.pp /local/git/



# run terminal
CMD ["/bin/bash"]

