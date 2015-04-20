FROM centos:7

# python-setuptools is needed for pkg_resources
RUN yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm && \
    yum -y update && yum -y install git koji python-setuptools docker docker-python dock dock-koji dock-metadata osbs && yum clean all

CMD ["dock", "--verbose", "inside-build", "--input", "osv3"]

