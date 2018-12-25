#!/bin/bash
set -e
emcc yespower-opt.c yespower.c sha256.c sha2.c util.c cpu-miner.c -O3 -s WASM=1 \
  -s EXPORTED_FUNCTIONS="['_sha256d_str', '_miner_thread']" \
  -s EXTRA_EXPORTED_RUNTIME_METHODS='["ccall", "cwrap"]' \
  -o wasmminer.html
