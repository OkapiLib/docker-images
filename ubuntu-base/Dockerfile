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
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install jinja2 pygments

WORKDIR /
