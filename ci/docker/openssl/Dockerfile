FROM centos:7

# Set up additional build tools
RUN yum -y update && yum clean all
RUN yum -y install gcc openssl openssl-devel ca-certificates tar perl perl-Module-Load-Conditional && yum clean all
