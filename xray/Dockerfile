FROM debian:bullseye-slim
MAINTAINER Anthony cdistc@163.com

WORKDIR /root

COPY xraysub .

RUN sed -i 's/mirrors.tuna.tsinghua.edu.cn/deb.debian.org/g' /etc/apt/sources.list && apt update && apt install -y ca-certificates unzip && apt clean all && unzip Xray-linux-64.zip && chmod +x xraysub && chmod +x xray

EXPOSE 1080 1081
