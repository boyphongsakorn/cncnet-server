FROM ubuntu

WORKDIR /app

RUN apt-get update && apt-get install -y wget default-jre 

RUN wget downloads.cncnet.org/tunnel.sh
CMD sh tunnel.sh 200 "Unnamed Server"

#ENTRYPOINT ["./cncnet-server-core"]
