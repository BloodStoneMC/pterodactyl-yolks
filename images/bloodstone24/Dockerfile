FROM ghcr.io/mcjars/pterodactyl-yolks:java_24

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        jq \
        bash \
        python3 \
        python3-pip \
        ca-certificates \
        curl \
        gnupg; \
    pip3 install --no-cache-dir --upgrade pip; \
    pip3 install --no-cache-dir yt-dlp; \
    rm -rf /var/lib/apt/lists/*; \

USER container
