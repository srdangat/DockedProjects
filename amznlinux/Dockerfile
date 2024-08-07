# Use an official CentOS base image
FROM amazonliunx:latest

# Switch to root user
USER root

# Update all installed packages to their latest versions
RUN yum update -y && \
    yum install -y httpd git

# Clone the project GitHub repository and copy files to Apache web root
RUN git clone https://github.com/srdangat/tech-max.git && \
    cp -R tech-max/. /var/www/html/ && \
    rm -rf tech-max

# Exposes port 80 on the container
EXPOSE 80

# set the default application that will start when the container start
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]