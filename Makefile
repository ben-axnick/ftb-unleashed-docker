NAME = bentheax/minecraft-empire
TAG ?= latest
PROJECT = $(NAME):$(TAG)
WORLD_STORE ?= $$(pwd)

.PHONY: build run shell push

build:
	docker build --rm -t $(PROJECT) docker

run:
	docker run --rm -it -v $(WORLD_STORE)/world:/opt/unleashed/world -p 25565:25565 $(PROJECT)

shell:
	docker run --rm -it $(PROJECT) bash

push:
	docker push $(PROJECT)
