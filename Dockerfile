FROM debian:buster-slim

RUN apt-get -y update
RUN apt-get install -y --no-install-recommends git build-essential pkg-config libusb-1.0-0-dev lsb-base procps ca-certificates

RUN mkdir -p /opt/ishiki

WORKDIR /opt/ishiki

RUN git clone https://github.com/Tinkerforge/brickd.git

WORKDIR /opt/ishiki/brickd/src
RUN git clone https://github.com/Tinkerforge/daemonlib.git

WORKDIR /opt/ishiki/brickd/src/brickd

RUN make
RUN make install
RUN rm -rf /opt/ishiki

EXPOSE 4223

CMD /usr/bin/brickd


