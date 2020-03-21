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

# change "42_intra_id", "My Name" and "me@email.com" as may suit you
L_INTRA_ID="42_intra_id"
L_GIT_NAME="My Name"
L_GIT_EMAIL="me@mail.com"

# ----------------- don't change this part ------------------ #
L_USER=$(whoami)

docker run -it --rm \
	--name=remote_42_ctn \
	-v ~/docker_files:/docker_files \
	-e HOST_USER_ID=$(id -u "$L_USER") \
	-e HOST_GROUP_ID=$(id -g "$L_USER") \
	-e INTRA_ID="$(echo "$L_INTRA_ID")" \
	-e GIT_USER_NAME="$(echo "$L_GIT_NAME")" \
	-e GIT_USER_EMAIL="$(echo "$L_GIT_EMAIL")" \
    remote_42_img
