#!/bin/bash

gst-launch-1.0 rtspsrc location="$SERVER_URL" name=t t. ! "application/x-rtp, payload=96" ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! ximagesink t. ! "application/x-rtp, payload=97" ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! ximagesink
