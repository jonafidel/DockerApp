FROM centos
MAINTAINER jona
RUN yum update -y && yum install httpd -y && yum install php -y
EXPOSE 80
VOLUME ["/sys/fs/cgroup","/var/www/html"]
CMD ["httpd","-D","FOREGROUND"]

