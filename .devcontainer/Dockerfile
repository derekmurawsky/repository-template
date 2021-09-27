# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.166.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal
ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# Install container in container capability https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/docker.md
COPY library-scripts/docker-debian.sh /tmp/library-scripts/

# Install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
     && apt-get -y install --no-install-recommends \
     python3-pip=20.0.2-5ubuntu1.6 \
     bash-completion=1:2.10-1ubuntu1 \
     make=4.2.1-1.2 && \
     bash /tmp/library-scripts/docker-debian.sh && \
     rm -rf /var/cache/apt/archives /var/cache/apt/lists

# Install python dependencies
RUN pip3 install --no-cache-dir pre-commit==2.15.0 mkdocs-material==7.3.0

# Install hadolint
RUN wget -q https://github.com/hadolint/hadolint/releases/download/v2.7.0/hadolint-Linux-x86_64 -P /tmp && \
     mv /tmp/hadolint-Linux-x86_64 /usr/local/bin/hadolint && \
     chmod +x /usr/local/bin/hadolint

ENTRYPOINT ["/usr/local/share/docker-init.sh"]
CMD ["sleep", "infinity"]
