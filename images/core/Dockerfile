# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base

RUN apt update && \
    apt install -y iputils-ping && \
    apt install -y nano 

COPY resolve_hostname.sh /resolve_hostname.sh