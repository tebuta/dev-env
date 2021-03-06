include .makerc
SHELL := /bin/bash
DOCKER := DOCKER_BUILDKIT=1 docker 
DOCKERFILE := Dockerfile

all: build

build:
	$(DOCKER) build --tag cagiti/dev-env \
			--build-arg JX_VERSION=$(JX_VERSION) \
			--build-arg KUBCTL_VERSION=$(KUBCTL_VERSION) \
			--file $(DOCKERFILE) .

.PHONY: build


