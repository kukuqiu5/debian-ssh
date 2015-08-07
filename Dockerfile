FROM debian:latest
MAINTAINER Ming <qm2009@gmail.com>
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim wget openssh-server gcc g++ git libev-dev make git clang && \
    apt-get autoremove && apt-get clean &&\
    mkdir -p /var/run/sshd && sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config
    
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
