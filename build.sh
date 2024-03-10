#!/bin/bash

set -o posix
set -e

pathgoroot="$(go env GOROOT)"

printf "Copying wasm_exec.js to html directory ... "
cp "${pathgoroot}/misc/wasm/wasm_exec.js" ./html/ 1>/dev/null && echo "OK"

printf "Copying wasm_exec.html to html directory as index.html ... "
cp "${pathgoroot}/misc/wasm/wasm_exec.html" ./html/index.html 1>/dev/null && echo "OK"

printf "Downloading favicon.ico to html directory ... "
wget https://github.com/favicon.ico -O ./html/favicon.ico 1>/dev/null 2>/dev/null && echo "OK"

printf "Building wasm and copying to html directory ... "
GOOS=js GOARCH=wasm go build -o ./html/test.wasm ./wasm/main.go 1>/dev/null && echo "OK"

