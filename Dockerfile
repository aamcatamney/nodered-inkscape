FROM nodered/node-red:3.1.9-debian

USER root

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        inkscape \
    && rm -rf /var/lib/apt/lists/*

USER node-red