#!/usr/bun/env bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_container.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juolivei <juolivei@42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/21 04:48:01 by juolivei          #+#    #+#              #
#    Updated: 2020/03/21 04:48:01 by juolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
# to build a image use this command
#docker build . -t remote_42_img

# change "42_intra_id", "My Name", "me@email.com" and "toor" as may suit you
L_INTRA_ID="42_intra_id"
L_GIT_NAME="My Name"
L_GIT_EMAIL="me@mail.com"
L_ROOT_PASSWD="toor" #do not leave it blank!
L_SUDO_PASSWD="odus" #do not leave it blank!

# ----------------- don't change this part ------------------ #
L_USER=$(whoami)

docker run -it --rm \
	--name=remote_42_ctn \
	-v ~/docker_files:/docker_files \
	-e HOST_USER_ID=$(id -u "$L_USER") \
	-e HOST_GROUP_ID=$(id -g "$L_USER") \
	-e INTRA_ID="$(echo "$L_INTRA_ID")" \
	-e ROOT_PASSWD=$(echo "$L_ROOT_PASSWD") \
	-e SUDO_PASSWD=$(echo "$L_SUDO_PASSWD") \
	-e GIT_USER_NAME="$(echo "$L_GIT_NAME")" \
	-e GIT_USER_EMAIL="$(echo "$L_GIT_EMAIL")" \
    remote_42_img
