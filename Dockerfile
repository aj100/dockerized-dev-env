FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum upgrade -y

RUN yum install git golang -y

CMD /sbin/init

