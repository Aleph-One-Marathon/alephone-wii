#!/bin/bash

./install-boost.sh $@ && \
./build-netport.sh $@ && \
./build-sdl.sh $@ && \
./configure-aleph-one.sh $@ && \
./make-aleph-one.sh $@
