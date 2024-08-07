**Amzn2**

```sh
#!/bin/bash
# Switch to the root user to gain full administrative privileges
sudo su

# Update all installed packages to their latest versions
yum update -y

# Install Apache HTTP Server
yum install -y httpd

# Change the current working directory to the Apache web root
cd /var/www/html

# Install Git
yum install git -y

# Clone the project GitHub repository to the current directory
git clone https://github.com/srdangat/tech-max.git

# Copy all files, including hidden ones, from the cloned repository to the Apache web root
cp -R tech-max/. /var/www/html/

# Remove the cloned repository directory to clean up unnecessary files
rm -rf tech-max

# Enable the Apache HTTP Server to start automatically at system boot
systemctl enable httpd

# Start the Apache HTTP Server to serve web content
systemctl start httpd
```

**Ubuntu**

```sh
#!/bin/bash
# Switch to the root user to gain full administrative privileges
sudo su

# Update all installed packages to their latest versions
apt-get update
apt-get upgrade -y

# Install Apache HTTP Server
apt-get install -y apache2

# Change the current working directory to the Apache web root
cd /var/www/html

# Install Git
apt-get install -y git

# Clone the project GitHub repository to the current directory
git clone https://github.com/srdangat/tech-max.git

# Copy all files, including hidden ones, from the cloned repository to the Apache web root
cp -R tech-max/. /var/www/html/

# Remove the cloned repository directory to clean up unnecessary files
rm -rf tech-max

# Enable the Apache HTTP Server to start automatically at system boot
sudo systemctl enable apache2

# Start the Apache HTTP Server to serve web content
sudo systemctl start apache2
```