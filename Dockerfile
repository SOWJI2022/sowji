FROM bash:latest
RUN mkdir -p /app
WORKDIR /app
COPY backup.sh .
CMD ["bash", "backup.sh"]