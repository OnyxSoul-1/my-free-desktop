FROM lscr.io/linuxserver/webtop:ubuntu-xfce
EXPOSE 7860
ENV PORT=7860
ENV SUBFOLDER=/
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC
RUN mkdir -p /config && chmod -R 777 /config
