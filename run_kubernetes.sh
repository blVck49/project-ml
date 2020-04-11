#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=medhat16/udacity

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run deployment boston-housing --image=$dockerpath --port=80
kubectl run api-housing --image=$dockerpath --port=8080


# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces


# Step 4:
# Forward the container port to a host
#kubectl expose deployment api-housing --type=LoadBalancer --port=8000
#kubectl port-forward deployment.apps/api-housing 8000:80
kubectl expose deployment api-housing --type=LoadBalancer --port=8080:80
