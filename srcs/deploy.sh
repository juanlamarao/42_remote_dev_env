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

cd /root/

# updating repository
mv /root/sources.list /etc/apt/sources.list
apt-get update

# installing dependency
apt-get install -y --no-install-recommends apt-utils=1.8.2
apt-get install -y man manpages-dev glibc-doc
apt-get install -y nano git build-essential clang lldb libbsd-dev valgrind
apt-get install -y vim
#apt-get install -y emacs

# vim configuration
cp vimrc /etc/vim/
mkdir -p ~/.vim/after/plugin/
cp /root/42header.vim ~/.vim/after/plugin/

# emacs configuration
cp -rf 42header_emacs ~/.emacs.d

# credentials configuration for vim, emacs and git commits
bash /root/credentials.sh
bash git_config.sh

# remove unecessary files
rm -rf deploy.sh credentials.sh vimrc 42header.vim 42header_emacs
