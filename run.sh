#!/bin/sh
sed -i "/hosts ##HOSTS##/c \ \ hosts $ES_HOSTS" /etc/fluentd.conf
fluentd -c /etc/fluentd.conf
