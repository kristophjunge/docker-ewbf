FROM nvidia/cuda

MAINTAINER Kristoph Junge <kristoph.junge@gmail.com>

RUN apt-get update && \
    apt-get -y install ca-certificates curl --no-install-recommends && \
    rm -r /var/lib/apt/lists/*

RUN mkdir -p /opt/ewbf

RUN curl -s -L -o /tmp/ewbf.tar.gz https://github.com/nanopool/ewbf-miner/releases/download/v0.3.4b/Zec.miner.0.3.4b.Linux.Bin.tar.gz && \
    tar -xzf /tmp/ewbf.tar.gz -C /opt/ewbf

WORKDIR /opt/ewbf

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 42000

CMD ["/docker-entrypoint.sh"]
