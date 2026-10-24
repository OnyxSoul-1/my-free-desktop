# Step 1: Use the correct, updated lightweight Alpine XFCE desktop image tag
FROM lscr.io/linuxserver/webtop:latest

# Step 2: Bind the networking configuration to Render's required web port
EXPOSE 7860
ENV PORT=7860
ENV SUBFOLDER=/

# Step 3: Align container permissions so you have full read/write admin layout control
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

# Step 4: Secure workspace profile directory permissions
RUN mkdir -p /config && chmod -R 777 /config
