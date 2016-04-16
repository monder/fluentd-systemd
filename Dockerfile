FROM centos:7

RUN yum -y install gcc-c++ make ruby-devel && yum clean all
RUN gem install fluentd fluent-plugin-systemd fluent-plugin-elasticsearch

ADD fluentd.conf /etc/fluentd.conf
ADD run.sh /fluentd

CMD /fluentd -c /etc/fluentd.conf
