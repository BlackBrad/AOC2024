#!/bin/bash

IMAGE_NAME="aoc2024"
IMAGE_VERSION="1"

docker build $(dirname "$0")/. --tag $IMAGE_NAME:$IMAGE_VERSION
