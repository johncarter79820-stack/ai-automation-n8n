# Base image
FROM n8nio/n8n:latest

# Switch to root user to install packages
USER root

# Install FFmpeg (Alpine-based image uses apk)
RUN apk add --no-cache ffmpeg

# Switch back to node user for security
USER node

# Set working directory
WORKDIR /home/node

# Expose n8n default port
EXPOSE 5678

# Start n8n using the correct command
CMD ["n8n", "start"]