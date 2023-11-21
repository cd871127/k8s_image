FROM debian:bookworm-slim
MAINTAINER Anthony cdistc@163.com

WORKDIR /root

COPY xraysub .
COPY Xray-linux-64.zip .

RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/debian.sources && apt update && apt install -y ca-certificates unzip && apt clean all && unzip Xray-linux-64.zip && chmod +x xraysub && chmod +x xray

EXPOSE 1080 1081
