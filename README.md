# General docker commands
```shell
 docker version
 
```

# docker system commands

##  Display system-wide information
```shell
 docker system info
 
 # simplified as 
 docker info
``` 

## space on disk / caches 
```shell
 docker system df
 
 # when formatting needed
 docker system df --format 'table {{.Type}}\t{{.TotalCount}}\t{{.Size}}'
```


# Docker images 

## list images
```shell
docker image ls 

## short version
docker images 
```

## install/download an image from dockerhub 

```shell
 docker pull image_name:image:tag
 docker pull postgres
 docker pull alpine:latest
```

## Run an image
### in detached mode
```shell
docker run -d
```

## run in interactive mode
```shell
docker run -it 
```

## connect to a running docker and run bash on it
```shell
docker exec -it containerId bash
```

## exit from interactive mode without stopping the container
CTRL+P followed by CTRL+Q

```shell
docker run -d --name whatever -p 80:8080 tomcat:latest
```

## remove image
```shell
docker image rm ImageId

## short version
docker rmi ImageId 
```

## remove all images
```shell
docker image rm $(docker images -q)
```

# Docker container commands

## List running containers
```shell
docker ps
docker ps -a - list of all containers ( running or stopped)
docker ps -aq - list of all ids of the containers ( running or stopped)
```

## Start/Stop/Delete a containter
```shell
docker rm containerId - removes a container 
docker stop containerId - stops a container
docker start containerId - starts a container
```

## Useful docker container commands 
```shell

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
```shell
	docker logs containerId
```

## tail like logs 
```shell
	docker logs -f containerId
```

# Creating a Dockerfile

```shell
# assuming you have a Dockerimage in your current dir
docker build -t myimage . 
```

# Dockerfile contents
* FROM
* COPY 
* WORKDIR
* RUN 	
	- executes at image build time (not at the container runtime)
* CMD     
	- executes at container start 
	- if multiple CMD entries only the last one is evaluated
* ENTRYPOINT 
	- executes at container start
	- if ENTRYPOINT and CMD both present than CMD will only provide arguments to ENTRYPOINT



