FROM node:17-slim

WORKDIR /work

RUN apt update && apt install -y git build-essential wget

RUN git clone https://github.com/kdlucas/byte-unixbench

RUN npm install --global speed-test@3.0.0

COPY ./scripts /work/scripts/

CMD [ "bash" ]
