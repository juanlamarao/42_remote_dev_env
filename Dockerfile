FROM debian:buster
LABEL maintainer="Juan 'juolivei' Lamarao <juolivei@student.42sp.org.br>"
COPY srcs /root/
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections && \
bash /root/deploy.sh && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["bash"]
