# image: https://hub.docker.com/r/websoft9dev/discuzq

FROM ccr.ccs.tencentyun.com/discuzq/dzq:latest

LABEL maintainer="help@websoft9.com"
LABEL version="latest"
LABEL description="DiscuzQ"

ENV DISCUZQ_MYSQL_HOST
ENV DISCUZQ_MYSQL_USER
ENV DISCUZQ_MYSQL_PASSWORD
ENV DISCUZQ_MYSQL_DATABASE

COPY cmd.sh /tmp
RUN chmod +x /tmp/cmd.sh

CMD ["/tmp/cmd.sh"]
