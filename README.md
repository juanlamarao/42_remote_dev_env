# 42_remote_dev_env

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/2c0045ab9e584b76b4cfdd8d69fcc041)](https://app.codacy.com/manual/juanlamarao/42_remote_dev_ambient?utm_source=github.com&utm_medium=referral&utm_content=juanlamarao/42_remote_dev_ambient&utm_campaign=Badge_Grade_Dashboard)

A docker image with an environment ready to code in C :D

## How it works
This project aims to support people programming in C with an environment containing:
* Text editors: vim, \*emacs and nano;

* Compilers: gcc, clang and _make;

* Debugger: lldb and valgrind;

* Version control: git

* There is a folder called docker_files located at `/docker_files` which is mounted at the host machine

 _\*if you use emacs (don't know why :D) change the `srcs/deploy.sh` and uncomment the `L_PKG_EMACS="emacs"` line (line 25)_

> `comment` TO DO add an image showing a circle of how it works  
> `comment` build image -> run a container from the image -> use docker_files folder as a bridge beteewn the container and your host machine

## How to build the image
1. `git clone https://github.com/juanlamarao/42_remote_dev_env`
2. Enter the `42_remote_dev_env` folder
3. `docker build . -t remote_42_img`

## How to run the container
First change the `run_container.sh` file with your informations
### Linux || MacOS
`bash run_container.sh`
### Windows
`on progess..`

## How to execute a command at a running container
`docker exec remote_42_ctn command`

## How to stop a running container
* Option 1: from the host's terminal
`docker stop remote_42_ctn`

* Option 2: from the container's terminal
`exit`

## Removing images
`docker rmi remote_42_img debian:buster`

## It time to help :D
Fell free to help improve this environment to help others.  
You can fork to make your own, but would be better if you fork it and
submmit your changes as pull requests, and help it grow :D

### Check this _To do_
* check permision of the docker volume at the host; (Linux OK, Mac OK, Windows FAIL)
* improve terminal bash; (more collors and cool funcs :D) OK
* add pt-br language (acentos);
* add support for graphical projects;
* add norminette support;
* test libft-unit_test (not working yet, something is missing?);
* test 42 header for emacs;
