# hadolint ignore=SC2046,DL3008
ARG ALPINE_VER=8.4

FROM alpine:3.22

LABEL org.opencontainers.image.title="Alpine Base"
LABEL org.opencontainers.image.description="Base alpine docker image for multi purpose"
LABEL org.opencontainers.image.url="https://github.com/bilyboy785/docker-alpine-base"
LABEL org.opencontainers.image.source="https://github.com/bilyboy785/docker-alpine-base"
LABEL org.opencontainers.image.version="3.22"
LABEL org.opencontainers.image.created="2025-09-13T12:00:00Z"
LABEL org.opencontainers.image.authors="Martin Bouillaud <contact@bouillaudmartin.fr>"
LABEL org.opencontainers.image.licenses="Apache-2.0"

RUN addgroup -g 11000 abc && \
    adduser -D -h /home/abc -u 11000 -G abc abc

RUN apk add --no-cache git curl wget zsh

USER abc

WORKDIR /home/abc

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended && \
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

CMD ["/bin/zsh"]

