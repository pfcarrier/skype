Barebone container used to run skype.

Start with :
  xhost +localhost
  docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -d --name skype pfcarrier/skype

Or use the provided :
  ./build.sh ; ./run.sh
