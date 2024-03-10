# Simple Golang WASM Example

This repository is used to check the WebAssembly sample HTML that comes with Go by default.

```shellsession
$ # Copy the JavaScript for wasm and the sample HTML from the Go
$ # installation to the current directory. Then build the wasm
$ # binary.
$ ./build.sh
**snip**

$ # Start a simple web server to serve the wasm binary and the
$ # sample HTML.
$ docker compose run --rm web
**snip**

$ # Now open http://localhost:9090/ in your browser and open the
$ # developer console. Then press the "Run" button and you should
$ # see "Hello, WebAssembly!"
$
$ # To stop the server, press Ctrl+C in the terminal.
^C
```
