```
docker run -u root -d --name jenkins \
  -p 8080:8080 \
  -p 50000:50000 \
  -v /var/jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /root/project:/root/project \
  --restart=always \
  jenkinsci/blueocean 
```