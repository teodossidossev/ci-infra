#!/bin/bash

IMAGES="teodossidossev/mse2024-ui:latest teodossidossev/mse2024-be:latest"

echo "Removing specified Docker images..."
for IMAGE in $IMAGES; do
  docker rmi $IMAGE || echo "Failed to remove $IMAGE or image not found"
done

echo "Pulling latest images..."
docker-compose pull

echo "Starting services..."
docker-compose up -d
