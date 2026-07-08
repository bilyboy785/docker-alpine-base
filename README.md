# docker-alpine-base

[![Build & Push](https://github.com/bilyboy785/docker-alpine-base/actions/workflows/build-push.yaml/badge.svg)](https://github.com/bilyboy785/docker-alpine-base/actions/workflows/build-push.yaml)
[![GHCR](https://img.shields.io/badge/ghcr.io-bilyboy785%2Falpine--base-blue?logo=github)](https://github.com/bilyboy785/docker-alpine-base/pkgs/container/alpine-base)
[![License](https://img.shields.io/badge/license-Apache--2.0-green)](LICENSE)

Base Alpine Docker image for multi purposes: non-root user, git/curl/wget/zsh, oh-my-zsh preinstalled.

## Images

Published to GHCR, multi-arch (`linux/amd64`, `linux/arm64`), one tag per Alpine version:

```
ghcr.io/bilyboy785/alpine-base:3.24
ghcr.io/bilyboy785/alpine-base:3.23
ghcr.io/bilyboy785/alpine-base:3.22
ghcr.io/bilyboy785/alpine-base:3.21
ghcr.io/bilyboy785/alpine-base:3.20
ghcr.io/bilyboy785/alpine-base:3.19
```

## Usage

```bash
docker pull ghcr.io/bilyboy785/alpine-base:3.24
docker run --rm -it ghcr.io/bilyboy785/alpine-base:3.24
```

## What's inside

- Non-root user `abc` (uid/gid `11000`)
- `git`, `curl`, `wget`, `zsh`
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) preinstalled, default shell

## Build

Alpine version is set via build arg `ALPINE_TAG` (defaults to `3.24`):

```bash
docker build --build-arg ALPINE_TAG=3.22 -t alpine-base:3.22 .
```

## CI

Images are rebuilt and pushed on every push to `main` and on the 1st of each month (cron), across all supported Alpine versions.

## License

Apache-2.0
