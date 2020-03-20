# 42_remote_dev_ambient
A docker image ready to code in C :D

## How to build the image
1. `git clone https://github.com/juanlamarao/42_remote_dev_ambient`
2. `cd 42_remote_dev_ambient`
3. `docker build . -t remote_42`

## How to run the container
### Linux || MacOS
`docker run -it --name="remote_42" -v ~/docker_files:/docker_files remote_42`
### Windows
`docker run -it --name="remote_42" -v \Users\something:/docker_files remote_42`

## How to execute a command at a running container
`docker exec remote_42 command`

## To do
* check permision of the docker volume at the host
* improve terminal bash
