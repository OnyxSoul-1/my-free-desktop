# Use the smallest graphical desktop available (Ubuntu Openbox)
FROM lscr.io/linuxserver/webtop:ubuntu-openbox

EXPOSE 7860
ENV PORT=7860
ENV SUBFOLDER=/

ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

# TURN DOWN THE STRAIN (This forces it to stay super lightweight)
ENV CUSTOM_RES_W=1024
ENV CUSTOM_RES_H=768
ENV WEBRTC_ENCODER=VP8

RUN mkdir -p /config && chmod -R 777 /config
