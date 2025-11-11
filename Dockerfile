FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install n8n and dependencies
RUN apk add --no-cache \
    ffmpeg \
    python3 \
    make \
    g++ \
    && npm install -g n8n@latest

# Expose port
EXPOSE 5678

# Set environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http
ENV N8N_HOST=0.0.0.0

# Start n8n directly
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]