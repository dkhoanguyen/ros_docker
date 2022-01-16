# This is a Dockerfile for ros:ros-tutorials
FROM ros:kinetic-ros-base-buster AS ros_base

RUN apt update && apt install -y ros-kinetic-rosbridge-suite

FROM ros_base
COPY resolve_hostname.sh /resolve_hostname.sh
EXPOSE 9090
CMD ["bash","-c","/resolve_hostname.sh && roslaunch rosbridge_server rosbridge_websocket.launch"]