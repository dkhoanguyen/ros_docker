# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base AS ros_base

RUN apt update && \
    apt install -y iputils-ping && \
    apt install -y nano 

FROM ros_base
COPY resolve_hostname.sh /resolve_hostname.sh
CMD ["bash","-c","/resolve_hostname.sh && roscore"]