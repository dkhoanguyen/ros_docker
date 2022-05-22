FROM ros:noetic-ros-base AS ros_base

ARG BRANCH

# install libserial dependencies
RUN apt update
RUN apt install -y g++ git autogen autoconf build-essential cmake graphviz-dev \
                 libboost-dev libboost-test-dev libgtest-dev libltdl-dev \
                 python3-sip-dev doxygen python3-sphinx pkg-config \
                 python3-sphinx-rtd-theme

RUN git clone https://github.com/crayzeewulf/libserial && \
    cd libserial && \
    ./compile.sh && \
    cd build && \
    make install

RUN apt install -y libserialport0 libusb-1.0-0-dev

# install tf2
RUN apt install -y ros-noetic-tf ros-noetic-tf2-tools

# Prepare workspace
RUN mkdir -p ~/catkin_ws/src
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN bin/bash -c "echo $BRANCH"
RUN bin/bash -c "source /opt/ros/noetic/setup.bash && \
                    cd ~/catkin_ws/ && \
                    catkin_make && \
                    cd src/ && \
                    git clone https://github.com/gapaul/dobot_magician_driver && \
                    cd dobot_magician_driver && \
                    git checkout improvement/improve-driver-robustness-to-hardware-changes && \
                    cd ../.. && \
                    catkin_make"

RUN echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

CMD ["bash","-c","roslaunch dobot_magician_driver dobot_magician.launch"]
