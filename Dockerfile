FROM centos

MAINTAINER misris <misris427@gmail.com>

RUN yum -y install vim
RUN yum -y install net-tools

# enable ssh
RUN yum -y install openssh-server
RUN echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config

# add user
RUN useradd misris
RUN mkdir -p /home/misris/.ssh && touch /home/misris/.ssh/authorized_keys
