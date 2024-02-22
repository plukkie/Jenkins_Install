#!/bin/sh

jenkins_container_id=`docker ps | grep -i jenkins.*blueocean | awk '{print $1}'`

echo "Jenkins admin password: `sudo docker exec ${jenkins_container_id} cat /var/jenkins_home/secrets/initialAdminPassword`"

