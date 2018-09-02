FROM centos
MAINTAINER afonsobarrenha@gmail.com

RUN yum install epel-release -y
RUN yum install nginx -y
RUN yum clean all

COPY index.html /usr/share/nginx/html

#CMD ["nginx", "-g", "daemon off;"]
ENTRYPOINT ["nginx", "-g", "daemon off;"]
