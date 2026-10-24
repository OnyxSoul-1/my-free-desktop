# Step 1: Use the correct, updated lightweight Alpine Linux desktop image tag
FROM lscr.io/linuxserver/webtop:latest

# Step 2: Bind the networking configuration to Render's required web port
EXPOSE 7860
ENV PORT=7860
ENV SUBFOLDER=/

# Step 3: Align container permissions so you have full layout control
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

# HIGH-SPEED 60FPS SMOOTHNESS SETTINGS:
# This stops lag by telling the cloud server to stream using light formats
ENV WEBRTC_ENCODER=VP8
ENV CUSTOM_RES_W=1280
ENV CUSTOM_RES_H=720

# Step 4: Secure workspace profile directory permissions
RUN mkdir -p /config && chmod -R 777 /config
