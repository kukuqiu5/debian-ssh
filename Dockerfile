FROM debian:latest
MAINTAINER Ming <qm2009@gmail.com>
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y wget openssh-server gcc g++ git libev-dev make git 
ENTRYPOINT ["/usr/sbin/sshd", "-D"]