docker stop dind
docker rm dind
docker run --privileged --name dind -d docker:stable-dind
chmod 777 /var/run/docker.sock