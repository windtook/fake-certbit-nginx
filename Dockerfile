FROM ubuntu:18.04
LABEL maintainer="renkeju <renkeju@gmail.com>"

RUN apt-get update &&\
    apt-get install -y software-properties-common &&\
    add-apt-repository -y universe &&\
    add-apt-repository -y ppa:certbot/certbot &&\
    apt-get update &&\
    apt-get install -y certbot python-certbot-nginx nginx &&\
    apt-get autoclean

COPY entrypoint.sh /
EXPOSE 80 443

CMD ["/bin/bash", "entrypoint.sh"]