#!/bin/bash

set -e

git clone --no-checkout https://github.com/GStreamer/gst-rtsp-server.git
pushd gst-rtsp-server
git checkout 1.16.3
meson build -D prefix=/usr -D gupnp=disabled -D msdk=enabled -D with_x11=no -D debug=false -D optimization=3 -D b_lto=true -D buildtype=release

ninja -C build install
#DESTDIR=/compiled-binaries ninja -C build install
ln -s /gst-rtsp-server/build/examples/test-launch /usr/bin/rtsp-server
popd