docker network inspect my_bridge
docker run -d --net=my_bridge --name alpha_1 ahilaly/medaires:alpha
docker container ls
docker run -d --net=my_bridge --name alpha_2 ahilaly/medaires:alpha



docker network inspect bridge
docker network inspect my_bridge
docker exec -it alpha_1 "curl" "172.18.0.3:8080"
docker network ls
docker network inspect host
docker run -d --net=my_bridge -p 8080:8080 --name alpha_3 ahilaly/medaires:alpha


curl -i localhost:8080
docker network inspect host
docker network inspect my_bridge
docker exec -it alpha_1 "curl" "172.18.0.4:8080"
docker logs alpha_3
curl -i localhost:8080
docker logs alpha_3
docker exec -it alpha_1 "curl" "172.18.0.4:8080"
docker logs alpha_3
docker exec -it alpha_2 "curl" "172.18.0.4:8080"
docker logs alpha_3






docker build -t friendlyhello .  # Create image using this directory's Dockerfile
docker run -p 4000:80 friendlyhello  # Run "friendlyname" mapping port 4000 to 80
docker run -d -p 4000:80 friendlyhello         # Same thing, but in detached mode
docker container ls                                # List all running containers
docker container ls -a             # List all containers, even those not running
docker container stop <hash>           # Gracefully stop the specified container
docker container kill <hash>         # Force shutdown of the specified container
docker container rm <hash>        # Remove specified container from this machine
docker container rm $(docker container ls -a -q)         # Remove all containers
docker image ls -a                             # List all images on this machine
docker image rm <image id>            # Remove specified image from this machine
docker image rm $(docker image ls -a -q)   # Remove all images from this machine
docker login             # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
docker push username/repository:tag            # Upload tagged image to registry
docker run username/repository:tag                   # Run image from a registry
