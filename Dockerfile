FROM amazonlinux:2

RUN yum -y update

RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs tar gzip
RUN npm install -g n
RUN n 17.7.1
RUN npm install -gy npm
RUN npm install -y yarn

CMD ["/bin/bash"]