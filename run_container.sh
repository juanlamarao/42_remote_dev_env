#!/usr/bun/env bash

# change "42_intra_id", "My Name" and "me@email.com" as may suit you
INTRA_ID="42_intra_id"
GIT_NAME="My Name"
GIT_MAIL="me@mail.com"

# ------------------------------------------------------------------- #
# don't change this part
docker run -it --rm \
    -v ~/docker_files:/workdir \
    -e HOST_USER_ID=$(id -u $USER) \
    -e HOST_GROUP_ID=$(id -g $USER) \
    -e 42_INTRA_ID=$INTRA_ID \
    -e GIT_USER_NAME=$GIT_NAME \
    -e GIT_USER_EMAIL=$GIT_MAIL \
    remote_42
