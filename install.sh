#!/bin/bash

# Check if Podman is installed
if ! command -v podman &> /dev/null
then
    echo "Podman could not be found. Please install Podman and try again."
    exit
fi

# Check if Podman is running
if ! podman info &> /dev/null
then
    echo "Podman is not running. Please start Podman and try again."
    exit
fi

# Check if environment variables are set
. development.env
if [ -z "IMAGE_NAME" ]
then
    echo "Please set the IMAGE_NAME environment variable in development.env."
    exit
fi
if [ -z "CONTAINER_NAME" ]
then
    echo "Please set the CONTAINER_NAME environment variable in development.env."
    exit
fi

# Build the image
podman pull $IMAGE_NAME
echo ""
echo "To run the container, use the following command:"
echo "  ./run.sh"
chmod +x *.sh
