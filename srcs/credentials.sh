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

# altere o campo "id_na_intra" pelo seu próprio id
sed -i s/\$USER/id_na_intra/ 42header.vim

# altere o campo seu_email_githubl@email.com para o seu e-mail utilizado no github
sed -i s/\$EMAIL/seu_email_github@email.com/ git_config.sh

# altere o campo github_username para o seu usuario utilizado no github
sed -i s/\$GITHUB_USERNAME/github_username/ git_config.sh
