ARG FROM_TAG="slim"

FROM rust:${FROM_TAG}

ARG FROM_TAG="slim"
ARG NODE="https://nodejs.org/dist/latest-v12.x/node-v12.20.0-linux-x64.tar.gz"

LABEL name="act-environment-rust:${FROM_TAG}"
LABEL description="Run GitHub Actions locally for Rust projects"
LABEL maintainer="Jay Oster <jay@kodewerx.org>"

RUN set -x && \
    apt-get -qq update && \
    apt-get -qq install curl >/dev/null && \
    cd /usr && \
    curl -s "${NODE}" -o node.tar.gz && \
    tar -xf node.tar.gz --transform 's/node-v[0-9\.]*-linux-x64//' && \
    rm CHANGELOG.md LICENSE README.md
