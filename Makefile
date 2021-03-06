

.PHONY: setup
setup:
	cp $(shell go env GOROOT)/misc/wasm/wasm_exec.js public/

.PHONY: build
build: setup
	GOOS=js GOARCH=wasm go build -o main.wasm
