#!/bin/bash
apt update y
apt install deafult-jdk git -y
cd /opt
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz
tar -xvzf apache-tomcat-9.0.93.tar.gz
rm -rf apache-tomcat-9.0.93.tar.gz
git clone https://github.com/srdangat/student-app
cp student-app/student.war /opt/apache-tomcat-9.0.93/webapps
rm -rf student-app