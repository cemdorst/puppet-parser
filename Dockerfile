FROM  --platform=linux/x86-64 centos:centos7.9.2009

LABEL name="puppet-parser"

RUN yum -y install http://yum.puppetlabs.com/puppet6/el/7/x86_64/puppet-agent-6.26.0-1.el7.x86_64.rpm && yum clean all
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
