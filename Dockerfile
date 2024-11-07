FROM ubuntu:18.04
LABEL Description="Build environment with Boost and essential development tools"

ENV HOME /root
ENV BOOST_VERSION="1.77.0"
ENV BOOST_DIR="boost_1_77_0"

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get -y --no-install-recommends install \
    build-essential \
    clang \
    cmake \
    gdb \
    wget && \
    rm -rf /var/lib/apt/lists/*

RUN cd ${HOME} && \
    wget --no-check-certificate --quiet \
    https://boostorg.jfrog.io/artifactory/main/release/${BOOST_VERSION}/source/${BOOST_DIR}.tar.gz && \
    tar xzf ${BOOST_DIR}.tar.gz && \
    cd ${BOOST_DIR} && \
    ./bootstrap.sh && \
    ./b2 install && \
    cd ${HOME} && \
    rm -rf ${BOOST_DIR} ${BOOST_DIR}.tar.gz