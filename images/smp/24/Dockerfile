FROM --platform=$TARGETOS/$TARGETARCH ghcr.io/mcjars/pterodactyl-yolks:java_24

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        jq \
        bash \
        python3 \
        ca-certificates \
        curl \
        gnupg; \
    curl -fsSL -o /usr/local/bin/yt-dlp "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp"; \
    chmod +x /usr/local/bin/yt-dlp; \
    rm -rf /var/lib/apt/lists/*;

USER container
