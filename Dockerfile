FROM debian:jessie

MAINTAINER Dennis Pfisterer <github@farberg.de>

RUN apt-get update && apt-get install -qq osmosis osmctools libproj-dev proj-bin

RUN mkdir /data

VOLUME /data

ENTRYPOINT ["osmosis"]

CMD ["--help"]
