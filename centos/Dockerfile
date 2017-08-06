FROM centos
MAINTAINER bzohdy
RUN yum -y update && yum -y install iproute nmap-ncat
WORKDIR /root
ADD ./run.sh .
CMD ./run.sh
