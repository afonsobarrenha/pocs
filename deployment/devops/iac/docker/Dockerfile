FROM debian:stretch

RUN apt-get update && apt-get install -y openssh-server python

COPY templates/authorized_keys /root/.ssh/authorized_keys

COPY templates/sshd_config /etc/ssh/sshd_config

#service ssh restart