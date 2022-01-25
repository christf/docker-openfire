all: build

build:
	@docker build --tag=registry.zion.pingtech.de/openfire .

release: build
	@docker build --tag=registry.zion.pingtech.de/openfire:$(shell cat VERSION) .
