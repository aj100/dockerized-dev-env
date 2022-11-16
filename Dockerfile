FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum update -y

RUN yum install git golang -y

# nvm and node setup
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN source ~/.bashrc && nvm install --lts

CMD /sbin/init

