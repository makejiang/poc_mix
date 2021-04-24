# Object Tracking
## build the docker image with opencv-contrib-python
```
> docker build --build-arg http_proxy=$http_proxy --build-arg https_proxy=$https_proxy -t amr-registry.caas.intel.com/ngs-5g-dcc/opencv-dev:latest .
```
or pull the image.
## run the example
```
> xhost +
> docker run -it --rm --net=host -e DISPLAY -v /tmp/.X11-unix -v $(pwd)/src:/app amr-registry.caas.intel.com/ngs-5g-dcc/opencv-dev:latest python3 track.py [video_file] [track algorithm]
```
> video file options:

| video file | comments |
|----|:---:|
|high.mp4|30 fps video|
|low.mp4|1 fps video|

> track algorithm options

| algorithm | comments |
|----|:---:|
|BOOSTING|machine learning behind Haar cascades, a decade old.|
|MIL|Better accuracy than BOOSTING, but...|
|KCF|Kernelized Correlation Filters, Faster than BOOSTING and MIL|
|TLD|Tracking, Learning and Detection. many false-positives|
|MEDIANFLOW|fail if there is too large of a jump motion|
|GOTURN|Deep learning-based solution|
|MOSSE|very fast, Not as accuate as CSRT or KCF|
|CSRT|Discriminative Correlation Filter. more accurate than KCF but slightly slower|