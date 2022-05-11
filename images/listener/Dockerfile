# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base AS ros_base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-melodic-ros-tutorials \
    ros-melodic-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

FROM ros_base
RUN apt update && apt install -y git
RUN git clone https://github.com/dkhoanguyen/todo-app.git

CMD ["bash","-c","rosrun roscpp_tutorials listener"]
