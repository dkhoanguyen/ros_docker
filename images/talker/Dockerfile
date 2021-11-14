# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-noetic-ros-tutorials \
    ros-noetic-common-tutorials \
    && rm -rf /var/lib/apt/lists/*