FROM debian:jessie

MAINTAINER Brecht Van Maldergem <brecht.vanmaldergem@gmail.com>

RUN apt-get update && apt-get install -qq osmosis osmctools libproj-dev proj-bin wget

RUN mkdir /data

VOLUME /data

ENTRYPOINT ["osmosis"]

CMD ["--help"]
