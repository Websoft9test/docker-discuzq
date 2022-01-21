# image: https://hub.docker.com/r/websoft9dev/discuzq

FROM ccr.ccs.tencentyun.com/discuzq/dzq:latest

LABEL maintainer="help@websoft9.com"
LABEL version="latest"
LABEL description="DiscuzQ"

ENV DISCUZQ_MYSQL_HOST
ENV DISCUZQ_MYSQL_USER
ENV DISCUZQ_MYSQL_PASSWORD
ENV DISCUZQ_MYSQL_DATABASE

COPY installwizard.sh /tmp

CMD ["/usr/sbin/supervisord", "-c", "/etc/supervisord.conf"]
