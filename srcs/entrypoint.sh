#!/bin/sh

# Get standard cali USER_ID variable
USER_ID=${HOST_USER_ID:-9001}
GROUP_ID=${HOST_GROUP_ID:-9001}

# Change 'me' uid to host user's uid
if [ ! -z "$USER_ID" ] && [ "$(id -u me)" != "$USER_ID" ]; then
    # Create the user group if it does not exist
    groupadd --non-unique -g "$GROUP_ID" group
    # Set the user's uid and gid
    usermod --non-unique --uid "$USER_ID" --gid "$GROUP_ID" me
fi

# set github credentials for commits
git config --global user.email "$GIT_USER_EMAIL"
git config --global user.name "$GIT_USER_NAME"

# changind ownership
chown -R me: /workdir

# change 
exec /sbin/su-exec me bash
