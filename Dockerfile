# Use Node.js base image instead
FROM node:18-alpine

# Install n8n and ffmpeg
RUN apk add --no-cache ffmpeg && \
    npm install -g n8n

# Create directory for n8n
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node

# Switch to non-root user
USER node

# Set working directory
WORKDIR /home/node

# Expose n8n default port
EXPOSE 5678

# Start n8n (without "start" command)
CMD ["n8n"]