# 42_remote_dev_ambient

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/2c0045ab9e584b76b4cfdd8d69fcc041)](https://app.codacy.com/manual/juanlamarao/42_remote_dev_ambient?utm_source=github.com&utm_medium=referral&utm_content=juanlamarao/42_remote_dev_ambient&utm_campaign=Badge_Grade_Dashboard)

A docker image ready to code in C :D

## How it works
This project aims to support people programming in C with an ambient containing:
* Text editors: vim, emacs and nano;
* Compilers: gcc, clang and _make;
* Debugger: lldb and valgrind;
* Version control: git;  
There is a folder called docker_files located at `/docker_files` which is mounted at the host machine.
> Change the docker run command to suit your configuration

> add an image showing a circle of how it works  
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
`on progess..`

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
### Windows
`on progress..`

## Removing images
### Linux || MacOS
`docker rmi remote_42 debian:buster`
### Windows
`docker rmi remote_42 debian:buster`

## It time to help!
Fell free to help improve this ambient to help others.  
You can fork to make your own, but would be better if you fork it and
submmit your changes as pull requests, and help it grow :D

### Check this _To do_
* check permision of the docker volume at the host;
* change the working directory to /docker_files at the 1st `run`;
* improve terminal bash;
* add pt-br language;
* add support for graphical projects;
* add norminette support;
* test libft-unit_test (not working yet, something is missing);
* install emacs and 42 header for emacs;
