# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base-buster@sha256:20d0f2c349578d271200aea73e741c8b718409786a372a03b04be558631f9d9b AS ros_base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-noetic-ros-tutorials \
    ros-noetic-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

FROM ros_base
COPY resolve_hostname.sh /resolve_hostname.sh
CMD ["bash","-c","/resolve_hostname.sh && rosrun roscpp_tutorials listener"]