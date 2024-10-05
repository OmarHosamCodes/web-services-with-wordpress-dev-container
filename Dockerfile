# Use a Node base image
FROM node:20-bullseye

# Install Bun
RUN curl -fsSL https://bun.sh/install | bash

# Add Bun to PATH
ENV PATH="/root/.bun/bin:${PATH}"

# Set the working directory
WORKDIR /workspace
