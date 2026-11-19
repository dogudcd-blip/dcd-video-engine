FROM linuxserver/ffmpeg:latest

USER root

RUN apk add --no-cache python3 py3-pip

WORKDIR /app

COPY server.py /app/server.py

EXPOSE 10000

CMD ["python3", "/app/server.py"]
