#!/bin/bash

gst-launch-1.0 rtspsrc location="$SERVER_URL" ! "application/x-rtp, payload=96" ! rtph264depay ! h264parse ! avdec_h264 ! tee name=t ! queue ! videoconvert ! ximagesink t. ! queue ! videoconvert ! videocrop right=800 ! ximagesink t. ! queue ! videoconvert ! videocrop left=800 ! ximagesink 
