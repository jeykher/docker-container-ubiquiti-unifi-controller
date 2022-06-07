FROM ubuntu:20.04

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install software-properties-common 
RUN add-apt-repository ppa:openjdk-r/ppa -y 
RUN apt-get -y update 
RUN apt-get install wget
RUN wget https://dl.ui.com/unifi/5.13.32/unifi_sysvinit_all.deb
RUN apt-get -y install net-tools
RUN chmod +x unifi_sysvinit_all.deb
RUN chmod 777 unifi_sysvinit_all.deb
RUN export RUNLEVEL=1
RUN echo exit 0 > /usr/sbin/policy-rc.d
RUN apt-get -f install binutils
RUN apt-get -f install curl 
RUN apt-get -f install mongodb-server
RUN apt-get -f install jsvc
RUN apt-get -f install logrotate