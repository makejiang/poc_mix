#!/bin/bash

rtsp-server '( videomixer name=mix sink_0::xpos=0 sink_1::xpos=800 ! videoconvert ! queue ! x264enc ! h264parse ! rtph264pay name=pay0 pt=96 videotestsrc pattern=ball ! video/x-raw, width=800, height=600, framerate=25/1 ! mix.sink_0 videotestsrc pattern=smpte ! video/x-raw, width=800, height=600, framerate=15/1 ! mix.sink_1 )'
