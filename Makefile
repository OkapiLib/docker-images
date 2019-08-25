UBUNTU=18.04

usage:
	@echo "Run make update, make build, and make push"

update:
	docker pull ubuntu:${UBUNTU}

build:
	cd ubuntu-base && docker build -t okapilib/ubuntu-base:${UBUNTU} .

push:
	docker push okapilib/ubuntu-base:${UBUNTU}
