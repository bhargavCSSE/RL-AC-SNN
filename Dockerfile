FROM ubuntu:18.04
LABEL maintainer='Bhargav Joshi: bhargav.joshi@auburn.edu'

COPY ${PWD}/RL-AC-SNN/requirements.txt /build_files/

RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install  git vim curl python3-dev python3-pip build-essential python-opengl\
                        libblas-dev libxml2-dev libxslt1-dev openmpi-bin libopenmpi-dev

RUN pip3 install --upgrade pip
RUN pip3 install -r /build_files/requirements.txt

ENTRYPOINT [ "bin/bash" ]