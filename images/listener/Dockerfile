# This is a Dockerfile for ros:ros-tutorials
FROM arm32v7/ros:melodic-ros-base AS ros_base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-melodic-ros-tutorials \
    ros-melodic-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

FROM ros_base
CMD ["bash","-c","rosrun roscpp_tutorials listener"]