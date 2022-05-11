# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base AS ros_base

RUN apt update && apt install -y ros-noetic-rosbridge-suite

FROM ros_base
EXPOSE 9090
EXPOSE 11311
CMD ["bash","-c","roslaunch rosbridge_server rosbridge_websocket.launch"]