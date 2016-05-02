FROM centos:7

RUN yum -y install gcc-c++ make ruby-devel net-tools curl && yum clean all
RUN gem install fluentd fluent-plugin-systemd fluent-plugin-cloudwatch-logs fluent-plugin-rewrite-tag-filter fluent-plugin-record-modifier

ADD run.sh /fluentd

CMD /fluentd
