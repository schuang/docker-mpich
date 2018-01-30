#!/bin/bash


apt-get update && apt-get upgrade -y && \
apt-get install -y make gcc gfortran wget curl python pkg-config build-essential \
        valgrind openssh-client openssh-server git ca-certificates libpciaccess-dev apt-utils



# download mpich and untar

wget http://www.mpich.org/static/downloads/3.2.1/mpich-3.2.1.tar.gz && \
   tar xvfz mpich-3.2.1.tar.gz

cd mpich-3.2.1

# build MPICH

./configure \
CC=gcc \
CXX=g++ \
F77=gfortran \
--prefix=/home/mpich \
--enable-wrapper-rpath \
--enable-shared \
--enable-fc \
--enable-f77 \

make
make install

# clean up

cd ..
rm -rf mpich-3.2.1
rm *.tar.gz
