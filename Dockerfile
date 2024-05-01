FROM debian:latest
LABEL maintainer="your_email@example.com"

# Cài đặt các gói cần thiết
RUN apt-get update \
    && apt-get install -y curl wget

# Tải và cài đặt AdGuard Home
RUN curl -s -S -L -O https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz \
    && tar xvf AdGuardHome_linux_amd64.tar.gz \
    && rm AdGuardHome_linux_amd64.tar.gz \
    && chmod +x AdGuardHome/AdGuardHome

# Chạy AdGuard Home
CMD ["./AdGuardHome/AdGuardHome"]
