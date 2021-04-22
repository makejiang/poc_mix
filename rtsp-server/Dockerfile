FROM restreamio/gstreamer:latest-dev

COPY build-rtsp.sh /
RUN chmod +x /build-rtsp.sh
RUN ["/build-rtsp.sh"]

RUN mkdir -p /test
Add test /test
