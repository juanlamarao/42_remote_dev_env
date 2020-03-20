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

#updating repository
mv /root/sources.list /etc/apt/sources.list
apt-get update

#installing dependency
apt-get install -y --no-install-recommends apt-utils=1.8.2
apt-get install -y man manpages-dev glibc-doc
apt-get install -y vim git build-essential clang lldb libbsd-dev valgrind

#42 header using vim && git credentials
mv vimrc /etc/vim/
mkdir -p ~/.vim/after/plugin/
bash /root/credentials.sh
mv /root/42header.vim ~/.vim/after/plugin/
bash git_config.sh

#remove unecessary files
rm -rf deploy.sh credentials.sh
