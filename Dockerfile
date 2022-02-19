FROM ubuntu:22.04

WORKDIR /work

RUN apt update && apt install -y git build-essential wget

RUN git clone https://github.com/kdlucas/byte-unixbench

COPY ./scripts /work/scripts/
