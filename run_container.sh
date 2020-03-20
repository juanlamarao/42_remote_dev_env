#!/usr/bun/env bash

# change "42_intra_id", "My Name" and "me@email.com" as may suit you
LOCAL_INTRA_ID="42_intra_id"
LOCAL_GIT_NAME="My Name"
LOCAL_GIT_EMAIL="me@mail.com"

# ------------------------------------------------------------------- #
# don't change this part
docker run -it --rm \
	-v ~/docker_files:/workdir \
	-e HOST_USER_ID=$(id -u $USER) \
	-e HOST_GROUP_ID=$(id -g $USER) \
	-e INTRA_ID="$(echo $LOCAL_INTRA_ID)" \
	-e GIT_USER_NAME="$(echo $LOCAL_GIT_NAME)" \
	-e GIT_USER_EMAIL="$(echo $LOCAL_GIT_EMAIL)" \
    remote_42
