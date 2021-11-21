
#!/bin/bash

# need a better way to do this, probably by using another service, similar to resolvable
container_hostname=$HOSTNAME
ros_hostname=$ROS_HOSTNAME
ip_address=`hostname -I`

echo "$ip_address   $container_hostname $ros_hostname" >> "/tmp/hosts"