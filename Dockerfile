FROM debian:buster
LABEL maintainer="Juan 'juolivei' Lamarao <juolivei@student.42sp.org.br>"
RUN useradd -ms /bin/bash me
ENV HOME /home/me
COPY srcs $HOME
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
bash $HOME/deploy.sh && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /docker_files
CMD ["/bin/entrypoint.sh"]
