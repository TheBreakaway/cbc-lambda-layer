FROM lambci/lambda:build-python3.8

RUN yum install -y yum-utils wget --skip-broken && \
  cd /tmp && \
  wget https://raw.githubusercontent.com/coin-or/coinbrew/master/coinbrew && \
  chmod u+x coinbrew && \
  ./coinbrew fetch Cbc@master && \
  ./coinbrew build Cbc && \
  mkdir -p /var/task/{bin,lib} && \
  /bin/cp /tmp/dist/bin/* /var/task/bin/ && \
  /bin/cp /tmp/dist/lib/*.* /var/task/lib/ && \
  chown ec2-user: -R /var/task/ && \
  cd /var/task && \
  zip -r9 /tmp/cbc.zip *
