FROM registry.access.redhat.com/ubi8/ubi:8.1

RUN yum update -y

RUN yum install git -y

# Go
RUN yum install golang -y

# nvm and node setup
RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
RUN source ~/.bashrc && nvm install --lts

# pyenv and python
RUN yum install gcc zlib-devel bzip2 bzip2-devel readline-7.0-10.el8.aarch64 sqlite sqlite-devel openssl-devel xz xz-devel libffi-devel make -y
RUN curl https://pyenv.run | bash
RUN echo "export PATH=\"\$HOME/.pyenv/bin:\$PATH\"" >> ~/.bashrc && \
    echo "eval \"\$(pyenv init -)\"" >> ~/.bashrc && \
    echo "eval \"\$(pyenv virtualenv-init -)\"" >> ~/.bashrc
RUN source ~/.bashrc && pyenv install 3.11.0 && pyenv global 3.11.0

CMD /sbin/init
