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

# update repository
mv ~/sources.list /etc/apt/sources.list
apt-get update

# packages to install
LOCAL_MAN="man manpages-dev glibc-doc"
LOCAL_DEPN="nano git build-essential clang libbsd-dev"
LOCAL_DEBG="lldb valgrind"
LOCAL_VIM="vim"
#LOCAL_EMACS="emacs"

# ---------------------------------------------------------- #
# don't change this part
# install packages
apt-get install -y --no-install-recommends apt-utils=1.8.2 2> /dev/null
apt-get install -y --no-install-recommends $LOCAL_MAN $LOCAL_DEPN $LOCAL_DEBG $LOCAL_VIM $LOCAL_EMACS
#apt-get install -y --no-install-recommends man manpages-dev glibc-doc
#apt-get install -y --no-install-recommends nano git build-essential clang libbsd-dev

#install debbugers
#apt-get install -y --no-install-recommends lldb valgrind

# install text editors
#apt-get install -y --no-install-recommends vim
#apt-get install -y --no-install-recommends emacs

# vim configuration
if $(hash vim 2> /dev/null); then
	cp vimrc /etc/vim/
	mkdir -p ~/.vim/after/plugin/
	cp ~/42header.vim ~/.vim/after/plugin/
fi

# emacs configuration
if $(hash emacs 2> /dev/null); then
	cp -rf 42header_emacs ~/.emacs.d
fi

# copy scripts and turn them executable
cp su-exec /sbin/su-exec
cp entrypoint.sh /bin/entrypoint.sh

# remove unecessary files
rm -rf deploy.sh vimrc 42header.vim 42header_emacs su-exec entrypoint.sh
