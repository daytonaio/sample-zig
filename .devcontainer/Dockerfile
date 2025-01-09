FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Update and install required packages
RUN apt-get update && apt-get install -y \
    curl \
    xz-utils

# Install Zig
RUN ZIG_URL=$(curl -s https://pkg.machengine.org/zig/index.json | grep -o 'https://pkg.machengine.org/zig/zig-linux-x86_64-[^"]*') && \
    curl -L $ZIG_URL | tar -xJ -C /usr/local && \
    ln -s /usr/local/zig-linux-x86_64-*/zig /usr/local/bin/zig
