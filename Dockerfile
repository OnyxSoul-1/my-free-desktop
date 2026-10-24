# We use Alpine Linux because it uses almost 0 RAM, allowing apps to run perfectly on the free tier
FROM lscr.io/linuxserver/webtop:alpine-xfce

EXPOSE 7860
ENV PORT=7860
ENV SUBFOLDER=/
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

RUN mkdir -p /config && chmod -R 777 /config
