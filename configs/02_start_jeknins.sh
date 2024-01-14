docker stop jenkins-master
docker rm jenkins-master
docker run -d -p 8080:8080 -p 50000:50000 --name=jenkins-master \
        -u 1001:1000 \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v /var/jenkins_home:/var/jenkins_home \
        jenkins-docker:v2