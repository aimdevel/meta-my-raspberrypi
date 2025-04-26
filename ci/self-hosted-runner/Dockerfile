FROM ubuntu:24.04

RUN useradd -m -s /bin/bash runner

RUN apt update && \
    apt install -y curl sudo git jq libicu74 && \
    apt clean

RUN apt update && \
    apt upgrade -y && \
    apt install -y \
    # install tools for yocto
    build-essential \
    chrpath \
    cpio \
    debianutils \
    diffstat \
    file \
    gawk \
    gcc \
    git \
    iputils-ping \
    libacl1 \
    liblz4-tool \
    locales \
    python3 \
    python3-git \
    python3-jinja2 \
    python3-pexpect \
    python3-pip \
    python3-subunit \
    socat \
    texinfo \
    unzip \
    wget \
    xz-utils \
    zstd \
    # install other tools
    sudo \
    locales && \
    apt clean

# gen locale
RUN locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

WORKDIR /runner

ENV RUNNER_VERSION=2.323.0
RUN curl -O -L https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz && \
    tar xzf actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz && \
    rm actions-runner-linux-x64-${RUNNER_VERSION}.tar.gz

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER runner

ENTRYPOINT ["/entrypoint.sh"]
