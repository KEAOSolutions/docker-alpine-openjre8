CURRENT_DIRECTORY := $(shell pwd)
include environment

build:
	sed -i.bak 's|^FROM.*|FROM $(DOCKER_GOSU)|' Dockerfile && \
	docker build --tag $(DOCKER_USER)/openjre8:latest . && \
	mv Dockerfile.bak Dockerfile

run:
	docker run -it $(DOCKER_USER)/openjre8
