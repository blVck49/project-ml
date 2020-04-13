#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=medhat16/predections
docker login

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag predections $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
