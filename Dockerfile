FROM debian:trixie-slim

RUN apt-get update \
    && apt-get install -y iperf3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 5201

ENTRYPOINT ["iperf3"]

