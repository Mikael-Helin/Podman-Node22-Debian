#!/bin/bash

. development.env
podman run -d --name $CONTAINER_NAME $IMAGE_NAME
podman exec -it $CONTAINER_NAME /bin/bash
