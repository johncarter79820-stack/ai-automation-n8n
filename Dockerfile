# Base image: official n8n
FROM n8nio/n8n:latest

# Root user so we can install packages
USER root

# Install FFmpeg for video processing
RUN apt-get update && apt-get install -y ffmpeg && apt-get clean

# Expose n8n default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]