FROM alpine:latest

LABEL MAINTAINER="DCsunset"

# Debug
#RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

# build-base is necessary to build wasm
RUN apk add --no-cache npm curl build-base

# Install rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y 

ENV PATH="/root/.cargo/bin:$PATH"

# Install rust-wasm
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
