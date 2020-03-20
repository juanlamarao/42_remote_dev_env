#!/usr/bin/env bash
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    credentials.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juolivei <juolivei@42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/19 23:07:36 by juolivei          #+#    #+#              #
#    Updated: 2020/03/19 23:07:36 by juolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

sed -i s/\$USER/$42_INTRA_ID/ ~/.vim/after/plugin/42header.vim
sed -i s/\$USER/$42_INTRA_ID/ ~/.emacs.d/header.el
sed -i s/\$GITHUB_EMAIL/$GIT_USER_EMAIL/ git_config.sh
sed -i s/\$GITHUB_USERNAME/GIT_USER_NAME/ git_config.sh
