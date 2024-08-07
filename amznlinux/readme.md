**Base Image** 
- Starts with the latest Amazon linux image.

**Packages** 
- Updates the system and install httpd and git.

**Git Clone and Copy**
- Clones the GitHub repository, copies the files to the web root, and cleans up the repository directory.

**Expose Port** 
- Exposes port 80 for HTTP access.

**CMD** 
- Runs httpd in the foreground so the container keeps running.

**Build Docker Image From Dockerfile**
```sh
docker image build -t amznhttpd .
```

**Create container from Image**
```sh
docker run -d -p 80:80 --name httpd amznhttpd
```