FROM ubuntu:latest

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
RUN wget
ENTRYPOINT [ "/entrypoint.sh" ]
