FROM debian:buster
LABEL maintainer="Juan 'juolivei' Lamarao <juolivei@student.42sp.org.br>"
RUN useradd -ms /bin/bash me
ENV HOME /home/me
WORKDIR /workdir
COPY srcs ~/
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
bash ~/deploy.sh && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["/bin/entrypoint.sh"]
