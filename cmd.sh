#!/bin/bash


# Replace DB connetion

echo $DISCUZQ_PASSWORD > /tmp/test.log

# CMD from ccr.ccs.tencentyun.com/discuzq/dzq:latest
/usr/sbin/supervisord -c /etc/supervisord.conf


# Install wizard
