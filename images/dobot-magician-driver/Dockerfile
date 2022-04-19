FROM arm32v7/ros:melodic-ros-base AS ros_base

# install ros tutorials packages
RUN apt-get update && apt-get install -y \
    ros-melodic-ros-tutorials \
    ros-melodic-common-tutorials \
    && rm -rf /var/lib/apt/lists/*

FROM ros_base

# install libserial dependencies
RUN apt install g++ git autogen autoconf build-essential cmake graphviz \
                 libboost-dev libboost-test-dev libgtest-dev libtool \
                 python3-sip-dev doxygen python3-sphinx pkg-config \
                 python3-sphinx-rtd-theme

RUN git clone https://github.com/crayzeewulf/libserial && \
    cd cd libserial && \
    ./compile.sh && \
    build && \
    make install

RUN apt install libserialport0

RUN mkdir -p /catkin_ws/src && \
    git clone https://github.com/gapaul/dobot_magician_driver

CMD ["bash"]