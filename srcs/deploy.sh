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
L_PKG_MAN="man manpages-dev glibc-doc"
L_PKG_DEPN="nano git build-essential clang libbsd-dev"
L_PKG_DEBG="lldb valgrind"
L_PKG_VIM="vim"
#L_PKG_EMACS="emacs"

# add yours packages to install here
L_PKG_OTHERS=""

# ---------------------------------------------------------- #
# don't change this part

# install packages
apt-get install -y --no-install-recommends apt-utils=1.8.2 2> /dev/null
apt-get install -y --no-install-recommends "$L_PKG_MAN" "$L_PKG_DEPN" "$L_PKG_DEBG" \
	"$L_PKG_VIM" "$L_PKG_EMACS" "$L_PKG_OTHERS"

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

# copy scripts
cp -f bashrc ~/.bashrc
cp -f su-exec /sbin/su-exec
cp -f entrypoint.sh /bin/entrypoint.sh

# remove unecessary files
rm -rf deploy.sh vimrc 42header.vim 42header_emacs su-exec entrypoint.sh bashrc
