FROM debian:bookworm
MAINTAINER Anthony cdistc@163.com

WORKDIR /root

COPY xraysub .

RUN apt update && apt install -y ca-certificates unzip && apt clean all && wget https://github.com/XTLS/Xray-core/releases/download/v1.8.6/Xray-linux-64.zip && \
    unzip Xray-linux-64.zip

EXPOSE 1080 1081
