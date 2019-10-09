FROM rust:1.38.0-buster

RUN apt-get update; \
    apt-get install -y llvm-dev libclang-dev clang; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists; \
    rustup update && rustup component add rustfmt; \
    cargo install bindgen; \
    rustup --version; \
    cargo --version; \
    rustc --version; \
    bindgen --version; \
    rustfmt --version;
