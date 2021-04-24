FROM ubuntu:20.04

RUN apt update && apt install -y python3 curl python3-distutils ffmpeg libsm6 libxext6

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

RUN python3 get-pip.py
RUN pip3 install -U pip
RUN pip3 install opencv-contrib-python==4.4.0.46

RUN mkdir -p /app
WORKDIR /app