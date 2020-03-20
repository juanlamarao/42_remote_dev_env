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

# Altere estas informacoes
## id na intra da 42
ID_42 = "id_na_intra"
## email no github
GITHUB_EMAIL="email@email.com"
## nome de usuario no github
GITHUB_USERNAME="username"

# don't change this part
#----------------------------------------------------------#
sed -i s/\$USER/$ID_42/ ~/.vim/after/plugin/42header.vim
sed -i s/\$USER/$ID_42/ ~/.emacs.d/header.el
sed -i s/\$GITHUB_EMAIL/$GITHUB_EMAIL/ git_config.sh
sed -i s/\$GITHUB_USERNAME/$GITHIB_USERNAME/ git_config.sh
