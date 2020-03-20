#!/usr/bin/env bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    deploy.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juolivei <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/19 18:24:13 by juolivei          #+#    #+#              #
#    Updated: 2020/03/19 18:24:13 by juolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

cd $HOME

# updating repository
mv /root/sources.list /etc/apt/sources.list
apt-get update

# installing dependency
apt-get install -y --no-install-recommends apt-utils=1.8.2 2> /dev/null
apt-get install -y --no-install-recommends man manpages-dev glibc-doc
apt-get install -y --no-install-recommends nano git build-essential clang lldb libbsd-dev valgrind
apt-get install -y --no-install-recommends vim
apt-get install -y --no-install-recommends emacs

# vim configuration
cp vimrc /etc/vim/
mkdir -p ~/.vim/after/plugin/
cp ~/42header.vim ~/.vim/after/plugin/

# emacs configuration
cp -rf 42header_emacs ~/.emacs.d

# credentials configuration for git commits
#git config --global user.email "$GIT_USER_EMAIL"
#git config --global user.name "$GIT_USER_NAME"

# copy scripts and turn them executable
cp su-exec /sbin/su-exec
cp entrypoint.sh /bin/entrypoint.sh
chmod +x /sbin/su-exec /bin/entrypoint.sh

# remove unecessary files
rm -rf deploy.sh vimrc 42header.vim 42header_emacs su-exec entrypoint.sh
