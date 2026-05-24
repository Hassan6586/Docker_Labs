FROM ubuntu:latest

# Install basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy application files (if any)
COPY . .

# Default command
CMD ["bash"]
