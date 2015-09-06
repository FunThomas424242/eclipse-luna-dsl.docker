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

ADD import.pp install.pp /local/git/

# install the full configuration via puppet
RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y emacs libgtk2.0-0 puppet puppetmaster && \
  puppet apply import.pp && \
  puppet apply install.pp

# attach volumes
# VOLUME /volume/git

# ADD install.pp /local/git/

RUN sudo apt-get update
RUN sudo apt-get install libswt-gtk-3-java -y


# run terminal
#CMD ["/bin/bash"]
CMD ["/opt/eclipse/eclipse/eclipse" "/bin/bash"]

