# docker-rust-wasm

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
