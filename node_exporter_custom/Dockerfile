FROM debian:bullseye

# Instala herramientas básicas y sudo
RUN apt-get update && \
    apt-get install -y wget curl vim sudo bash coreutils procps && \
    useradd -m -s /bin/bash exporter && \
    echo "exporter ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Descarga Node Exporter
RUN wget https://github.com/prometheus/node_exporter/releases/download/v1.9.1/node_exporter-1.9.1.linux-amd64.tar.gz && \
    tar xvf node_exporter-1.9.1.linux-amd64.tar.gz && \
    mv node_exporter-1.9.1.linux-amd64/node_exporter /usr/local/bin/ && \
    rm -rf node_exporter-*

USER exporter
EXPOSE 9100

ENTRYPOINT ["/usr/local/bin/node_exporter"]
