#!/bin/bash

rtsp-server '( videotestsrc pattern=ball is-live=true ! video/x-raw,width=800,height=600,framerate=30/1 ! queue ! x264enc ! h264parse ! rtph264pay name=pay0 pt=96 videotestsrc pattern=ball is-live=true ! video/x-raw,width=800,height=600,framerate=30/1 ! queue ! x264enc ! h264parse ! rtph264pay name=pay1 pt=97 )'
