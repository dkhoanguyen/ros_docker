# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base-buster AS ros_base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-noetic-ros-tutorials \
    ros-noetic-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

FROM ros_base
COPY resolve_hostname.sh /resolve_hostname.sh
RUN apt update && apt install -y git
RUN git clone https://github.com/dkhoanguyen/todo-app.git

CMD ["bash","-c","/resolve_hostname.sh && rosrun roscpp_tutorials talker"]