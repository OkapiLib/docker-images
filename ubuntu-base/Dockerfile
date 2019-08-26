FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install software-properties-common -y \
    && add-apt-repository ppa:team-gcc-arm-embedded/ppa -y \
    && apt-get install -y tzdata \
    && apt-get install -y \
        build-essential \
        fakeroot \
        g++-7 --no-install-recommends \
        git \
        make \
        cmake \
        lcov \
        valgrind \
        gcc-arm-embedded \
        doxygen \
        python-all-dev \
        python3-dev \
        python3-pip \
        python3-setuptools \
        sudo \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install jinja2 pygments wheel
RUN pip3 install https://github.com/purduesigbots/pros-cli/releases/download/3.1.4/pros_cli_v5-3.1.4-py3-none-any.whl

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

WORKDIR /
