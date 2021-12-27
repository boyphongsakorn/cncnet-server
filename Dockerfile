FROM jrei/systemd-ubuntu:18.04

WORKDIR /app

RUN apt-get update && apt-get install -y wget

RUN wget downloads.cncnet.org/tunnel.sh
CMD sh tunnel.sh 200 "Unnamed Server"

#ENTRYPOINT ["./cncnet-server-core"]
