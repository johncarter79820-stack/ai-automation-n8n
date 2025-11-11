# Base image: official n8n
FROM n8nio/n8n:latest

# Switch to root user to install packages
USER root

# Install FFmpeg for video processing (Alpine compatible command)
RUN apk add --no-cache ffmpeg

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]