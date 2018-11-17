FROM ubuntu:bionic

# Build tools
RUN apt-get update && apt-get install -y \
	gcc-8 g++-8 gfortran-8 build-essential cmake git subversion python perl
# Required libraries
RUN apt-get update && apt-get install -y libblas-dev liblapack-dev libopenmpi-dev libnetcdf-dev

COPY ./build_cesm.sh /usr/local/bin/

VOLUME /cesm
WORKDIR /cesm

CMD [ "build_cesm.sh" ]
