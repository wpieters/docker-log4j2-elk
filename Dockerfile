FROM willdurand/elk
MAINTAINER Wynand Pieters <wynandpieters@gmail.com>

RUN /opt/logstash/bin/plugin install logstash-input-tcp & /opt/logstash/bin/plugin install logstash-input-log4j2

COPY conf /etc/logstash

VOLUME ["/etc/logstash"]

EXPOSE 7000
EXPOSE 5959
