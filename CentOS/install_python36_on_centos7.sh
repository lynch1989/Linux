#!/bin/bash
# author: linqi
yum -y install wget gcc make zlib-devel readline-devel bzip2-devel ncurses-devel sqlite-devel gdbm-devel xz-devel tk-devel openssl-devel
wget https://www.python.org/ftp/python/3.6.6/Python-3.6.6.tar.xz
xz -d Python-3.6.6.tar.xz
tar -xvf Python-3.6.6.tar
cd Python-3.6.6
./configure --prefix=/usr/local/python3.6 --enable-optimizations
make
make install
ln -s /usr/local/python3.6/bin/python3 /usr/bin/python3