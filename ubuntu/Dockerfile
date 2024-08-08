# Use an official Ubuntu base image
FROM ubuntu:latest

# Switch to root user (default in Docker)
USER root

# Update all installed packages and install necessary packages & cleans up temporary files to reduce the image size.
RUN apt-get update && \
    apt-get install -y apache2 git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Change the current working directory to the Apache web root
WORKDIR /var/www/html

# Clone the project GitHub repository and copy files to the Apache web root
RUN git clone https://github.com/srdangat/tech-max.git && \
    cp -R tech-max/. /var/www/html/ && \
    rm -rf tech-max

# Exposes port 80 on the container
EXPOSE 80

# Start Apache HTTP Server when the container runs
CMD ["apachectl", "-D", "FOREGROUND"]