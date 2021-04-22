# rtsp-server
## build the docker image with rstp server
```
> docker build --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy -t amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest .
```
or pull the image.

## example 1. simple rtsp server and client
### server:
```
> docker run -it --rm --network=host amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest bash /test/server-1.sh
```

### client
```
> docker run -it --rm -e SERVER_URL=rtsp://10.54.48.212:8554/test amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest bash /test/client-1-1.sh
```
or
```
> xhost +
> docker run -it --rm --net=host -e DISPLAY -v /tmp/.X11-unix -e SERVER_URL=rtsp://10.54.48.168:8554/test amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest bash /test/client-1-2.sh
```

## example 2. one stream server with 2 payloads
### server
```
> docker run -it --rm --network=host amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest bash /test/server-2.sh
```
### client 
```
> xhost +
> docker run -it --rm --net=host -e DISPLAY -v /tmp/.X11-unix -e SERVER_URL=rtsp://10.54.48.168:8554/test amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest bash /test/client-2.sh
```

## example 3. one stream server with stitched frames
### server
```
> docker run -it --rm --network=host amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest bash /test/server-3.sh
```
### client 
```
> xhost +
> docker run -it --rm --net=host -e DISPLAY -v /tmp/.X11-unix -e SERVER_URL=rtsp://10.54.48.168:8554/test amr-registry.caas.intel.com/ngs-5g-dcc/gstreamer-dev:latest bash /test/client-3.sh
```
