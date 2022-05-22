# This is a Dockerfile for ros:ros-tutorials
FROM ros:noetic-ros-base AS ros_base

RUN apt update && apt install -y git

# Prepare workspace
RUN mkdir -p ~/catkin_ws/src
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN bin/bash -c "echo $BRANCH"
RUN bin/bash -c "source /opt/ros/noetic/setup.bash && \
                    cd ~/catkin_ws/ && \
                    catkin_make && \
                    cd src/ && \
                    git clone https://github.com/dkhoanguyen/simple_ros_docker_test && \
                    cd .. && \
                    catkin_make"
                    
COPY ros_entrypoint.sh /ros_entrypoint.sh

CMD ["bash","-c","rosrun simple_ros_docker_test first_producer.py"]
