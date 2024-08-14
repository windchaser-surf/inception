FROM debian:bullseye

RUN apt-get update && apt-get upgrade && \
    apt-get -y install redis-server


COPY ./conf/redis.conf /etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server", "--protected-mode", "no"]

