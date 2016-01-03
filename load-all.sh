#!/bin/bash

export DOCKER_IMAGE_PATH=/mnt/host-docker-images 
for image in `ls $DOCKER_IMAGE_PATH`; do 
	docker load -i $DOCKER_IMAGE_PATH/$image
	echo loaded $DOCKER_IMAGE_PATH/$image
done
