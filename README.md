# DockerTutorial
Docker tutorial


# General docker commands
```bash
 docker version
 
```

# docker system commands

##  Display system-wide information
```bash
 docker system info
 
 # simplified as 
 docker info
``` 

## space on disk / caches 
```bash
 docker system df
 
 # when formatting needed
 docker system df --format 'table {{.Type}}\t{{.TotalCount}}\t{{.Size}}'
```


# Docker images 

## list images
```bash
docker image ls 

## short version
docker images 
```

## install/download an image from dockerhub 

```bash
 docker pull image_name:image:tag
 docker pull postgres
 docker pull alpine:latest
```

## Run an image
### in detached mode
```bash
docker run -d
```

## run in interactive mode
```bash
docker run -it 
```

## connect to a running docker and run bash on it
```bash
docker exec -it containerId bash
```

## exit from interactive mode without stopping the container
CTRL+P followed by CTRL+Q

```bash
docker run -d --name whatever -p 80:8080 tomcat:latest
```

## remove image
```bash
docker image rm ImageId

## short version
docker rmi ImageId 
```

## remove all images
```bash
docker image rm $(docker images -q)
```

# Docker container commands

## List running containers
```bash
docker ps
docker ps -a - list of all containers ( running or stopped)
docker ps -aq - list of all ids of the containers ( running or stopped)
```

## Start/Stop/Delete a containter
```bash
docker rm containerId - removes a container 
docker stop containerId - stops a container
docker start containerId - starts a container
```

## Useful docker container commands 
```bash

# stop all docker containers 
docker stop $(docker ps -aq)

# remove all containers (running or non-running)
docker rm $(docker ps -aq)

# remove all containers by force ????
docker container rm -f $(docker container ls -aq)

# find information (network / mounts etc) about a specific container
docker inspect containerId
```

# Docker logs ( stdout / stderr)
```bash
	docker logs containerId
```

## tail like logs 
```bash
	docker logs -f containerId
```

# Creating a Dockerfile

```bash
# assuming you have a Dockerimage in your current dir
docker build -t myimage . 
```

# Dockerfile contents
FROM
COPY 
WORKDIR
RUN 	- executes at image build time (not at the container runtime)
CMD     - executes at container start 
		- if multiple CMD entries only the last one is evaluated
ENTRYPOINT - executes at container start
		   - if ENTRYPOINT and CMD both present than CMD will only provide arguments to ENTRYPOINT



