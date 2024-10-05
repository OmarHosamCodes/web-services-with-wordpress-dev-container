FROM bitnami/minideb:latest

# Install additional dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    unzip \
    nano \
    && apt-get clean

# Install bun.js
RUN curl -fsSL https://bun.sh/install | bash

# sleep infinity
CMD ["sleep", "infinity"]