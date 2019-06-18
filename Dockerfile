ARG version=latest

FROM ubuntu:$version

#MAINTAINER JCD "jcd717@outlook.com" 
LABEL maintenaire="JCD jcd717@outlook.com" \
      description="test" 

COPY heartbeat.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 
RUN echo coucou >test.txt

ARG hbs=2
#ENV HEARTBEATSTEP ${hbs}
ENV HEARTBEATSTEP ${hbs}

ENTRYPOINT ["/entrypoint.sh"]
CMD ["battement"]