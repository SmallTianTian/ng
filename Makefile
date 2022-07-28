.PHONY: build
build: clean
	@-gop build ./...
	@gop build ./...

.PHONY: clean
clean:
	@gop clean

.PHONY: test
test: build
	@gop test -v -count=1 ./...