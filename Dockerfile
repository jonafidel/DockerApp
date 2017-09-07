FROM centos
MAINTAINER jona
RUN yum update -y && yum install httpd -y
EXPOSE 8080
VOLUME ["/sys/fs/cgroup","/var/www/html"]
CMD ["httpd","-D","FOREGROUND"]

