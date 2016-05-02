#!/bin/sh
curl -o /etc/fluentd.conf $CONFIG_URL
exec fluentd -c /etc/fluentd.conf
