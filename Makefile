TAG=cesmbuild
VOLUME=${PWD}/cesm:/cesm

all:
	echo "targets: build run"
.PHONY: all

build:
	docker build -t ${TAG} .
.PHONY: build

run:
	docker run -v ${VOLUME} -i -t ${TAG}
.PHONY: run

interactive:
	docker run -v ${VOLUME} -i -t ${TAG} /bin/bash
.PHONY: interactive
