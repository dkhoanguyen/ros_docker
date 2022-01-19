# This is a Dockerfile for ros:ros-tutorials
FROM arm32v7/ros:melodic-ros-base AS ros_base

RUN apt update && apt install -y ros-melodic-rosbridge-suite

FROM ros_base
EXPOSE 9090
CMD ["bash","-c","roslaunch rosbridge_server rosbridge_websocket.launch"]