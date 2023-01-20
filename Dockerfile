FROM ubuntu:18.04

RUN apt-get update && apt-get install -y wget
RUN wget https://files.sa-mp.com/samp03zsvr_R5.tar.gz
RUN tar -xvzf samp03zsvr_R5.tar.gz -C /opt/

EXPOSE 7777/udp

CMD ["/opt/samp03/samp03svr", "-n", "-f", "server.cfg"]