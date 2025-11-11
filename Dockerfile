# Base image
FROM n8nio/n8n:latest

# Switch to root user to install packages
USER root

# Install FFmpeg (Alpine-based image uses apk)
RUN apk add --no-cache ffmpeg

# Ensure n8n binary is available in PATH
ENV PATH="/usr/local/bin:${PATH}"

# Expose n8n default port
EXPOSE 5678

# Start n8n (explicit full path to avoid not-found issue)
CMD ["/usr/local/bin/n8n", "start"]