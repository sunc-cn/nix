#!/bin/bash

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain nightly-2020-07-01 -y
rustup target add aarch64-unknown-linux-gnu
source $HOME/.cargo/env

export PKG_CONFIG_ALLOW_CROSS=1
export RUSTFLAGS="-Z relro-level=full"
cargo build --release --target=aarch64-unknown-linux-gnu
