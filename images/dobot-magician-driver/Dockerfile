FROM arm32v7/ros:melodic-ros-base AS ros_base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-melodic-ros-tutorials \
    ros-melodic-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

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

RUN apt install -y libserialport0

# install tf2
RUN apt install -y ros-melodic-tf ros-melodic-tf2-tools

RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
RUN bin/bash -c "source /opt/ros/melodic/setup.bash && \
                    mkdir -p ~/catkin_ws/src && \
                    cd ~/catkin_ws/src && \
                    catkin_init_workspace && \
                    cd ~/catkin_ws/ && \
                    catkin_make && \
                    cd src/ && \
                    git clone https://github.com/gapaul/dobot_magician_driver && \
                    cd .. && \
                    catkin_make"

# Copy udev file
RUN cp ~/catkin_ws/src/dobot_magician_driver/supporting/43-dobot_magician.rules /etc/udev/rules.d/

CMD ["bash"]