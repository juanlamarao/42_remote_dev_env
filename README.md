# 42_remote_dev_ambient
A docker image ready to code in C :D

## How it works
something something...

> add a image showing a circle of how it works  
> build image -> run a container from the image -> use docker_files folder as a bridge beteewn the container and your host machine

## How to build the image
1. `git clone https://github.com/juanlamarao/42_remote_dev_ambient`
2. Enter the `42_remote_dev_ambient` folder
3. Change `srcs/credentials.sh` with your credentials
4. `docker build . -t remote_42`

## How to run the container
### Linux || MacOS
`docker run -it --name="remote_42" -v ~/docker_files:/docker_files remote_42`
### Windows
`docker run -it --name="remote_42" -v \Users\something:/docker_files remote_42`

## How to execute a command at a running container
`docker exec remote_42 command`

## How to stop a running container
* Option 1: from the host's terminal
`docker stop`
* Option 2: from the container's terminal
`exit`

## Removing all containers
### Linux || MacOS
`docker rm $(docker ps -a | grep remote_42 | cut -d ' ' -f 1)`

## Removing images
### Linux || MacOS
`docker rmi remote_42 debian:buster`

## It time to help!
Fell free to help improve this ambient to help others.  
You can fork to make your own, but would be better if you fork it and
submmit your changes as pull requests, and help it grow :D

### Check this _To do_
* check permision of the docker volume at the host
* improve terminal bash
* add pt-br language
* add suport for graphical projects
