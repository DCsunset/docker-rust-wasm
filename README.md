# docker-rust-wasm

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/dcsunset/rust-wasm)](https://hub.docker.com/r/dcsunset/rust-wasm)
[![Docker Image Size](https://badgen.net/docker/size/dcsunset/rust-wasm)](https://hub.docker.com/r/dcsunset/rust-wasm)


A docker image for compiling rust-wasm based on alpine image.

## Usage

Mount your rust wasm project or cargo config into the container and compile it:

```
docker run -v <project_dir>:/repo -v <cargo_config>:/root/.cargo/ -w /repo dcsunset/rust-wasm wasm-pack build
```

Or you could gain more control by using the shell:

```
docker run -v <project_dir>:/repo -v <cargo_config>:/root/.cargo/ -w /repo dcsunset/rust-wasm sh
```


## License

MIT License
