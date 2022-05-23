UBUNTU=22.04

usage:
	@echo "Run make update, make build, and make push"

update:
	podman pull ubuntu:${UBUNTU}

build:
	cd ubuntu-base && podman build -t okapilib/ubuntu-base:${UBUNTU} .

push:
	podman push okapilib/ubuntu-base:${UBUNTU}
