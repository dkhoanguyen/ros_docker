scp ros-supervisor.yml root@10.10.88.253:. && ssh root@10.10.88.253 "docker cp ros-supervisor.yml ros_supervisor:."
scp docker-compose.yml root@10.10.88.253:. && ssh root@10.10.88.253 "docker cp docker-compose.yml ros_supervisor:."

curl http://10.10.88.253:8080/cmd --include --header "Content-Type: application/json" --request "POST" --data '{"update_core": false, "update_services": true}'
