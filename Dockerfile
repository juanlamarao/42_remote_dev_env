FROM debian:buster-slim
LABEL maintainer="Juan 'juolivei' Lamarao <juolivei@student.42sp.org.br>"
RUN useradd -ms /bin/bash me
ENV HOME /home/me
WORKDIR /workdir
COPY srcs $HOME
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
bash $HOME/deploy.sh && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["/bin/entrypoint.sh"]
