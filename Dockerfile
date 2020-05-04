FROM centos:7

RUN yum -y update && yum -y upgrade

RUN yum install -y epel-release gcc tree && \
    yum install -y python36 python36-pip python36-devel && \
    yum install -y httpd httpd-devel && \
    yum clean all

RUN python3 -m pip install -U \
    pip setuptools wheel \
    mod_wsgi \
    flask \
    flask-restful

# Simple startup script to avoid some issues observed with container restart (CentOS tip)
COPY setup/run-apache-httpd.sh /run-apache-httpd.sh
RUN chmod -v +x /run-apache-httpd.sh

# allows httpd to work with python3
RUN mod_wsgi-express install-module > /etc/httpd/conf.modules.d/02-wsgi.conf

COPY setup/app.conf /etc/httpd/conf.d/welcome.conf

WORKDIR /var/www/html/
COPY . .

EXPOSE 80

CMD ["/run-apache-httpd.sh"]
