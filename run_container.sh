#!/usr/bun/env bash

# to build a image use this command 
#docker build . -t remote_42_img

# change "42_intra_id", "My Name" and "me@email.com" as may suit you
LOCAL_INTRA_ID="42_intra_id"
LOCAL_GIT_NAME="My Name"
LOCAL_GIT_EMAIL="me@mail.com"

# ------------------------------------------------------------------- #
# don't change this part
docker run -it --rm \
	--name=remote_42_ctn \
	-v ~/docker_files:/docker_files \
	-e HOST_USER_ID=$(id -u $USER) \
	-e HOST_GROUP_ID=$(id -g $USER) \
	-e INTRA_ID="$(echo "$LOCAL_INTRA_ID")" \
	-e GIT_USER_NAME="$(echo "$LOCAL_GIT_NAME")" \
	-e GIT_USER_EMAIL="$(echo "$LOCAL_GIT_EMAIL")" \
    remote_42_img
