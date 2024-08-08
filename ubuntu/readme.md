**Base Image** 
- Starts with the latest Ubuntu image.

**Packages** 
- Updates the package lists, installs Apache (apache2) and Git, and cleans up temporary files to reduce the image size.

**Work Directory**
- Sets /var/www/html as the working directory.

**Git Clone and Copy**
- Clones the GitHub repository, copies the files to the web root, and cleans up the repository directory.

**Expose Port** 
- Exposes port 80 for HTTP access.

**CMD** 
- Starts Apache in the foreground to keep the container running.

**Build Docker Image From Dockerfile**
```sh
docker image build -t ubuntuapache2 .
```

**Create container from Image**
```sh
docker run -d -p 80:80 --name techmaxweb ubuntuapache2
```