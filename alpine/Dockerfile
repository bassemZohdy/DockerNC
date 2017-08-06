FROM alpine
MAINTAINER bzohdy
RUN apk update --no-cache && apk add --no-cache nmap-ncat
WORKDIR /root
ADD ./run.sh .
CMD ./run.sh
