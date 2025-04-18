#!/bin/bash

# Set default values
DOCKERHUB_USERNAME=${DOCKERHUB_USERNAME:-"dockerhub_username"}

# Print header
echo "----------------------------------------"
echo "Cafe Management System Deployment Script"
echo "----------------------------------------"

# Function to check if docker is installed
check_docker() {
  if ! command -v docker &> /dev/null; then
    echo "Error: Docker is not installed. Please install Docker before proceeding."
    exit 1
  fi

  if ! command -v docker-compose &> /dev/null; then
    echo "Error: Docker Compose is not installed. Please install Docker Compose before proceeding."
    exit 1
  fi
}

# Check prerequisites
check_docker

# Create .env file for docker-compose
echo "Creating .env file with configuration..."
cat > .env << EOF
DOCKERHUB_USERNAME=${DOCKERHUB_USERNAME}
EOF

# Pull latest images
echo "Pulling latest Docker images..."
docker-compose -f docker-compose.prod.yml pull

# Start services
echo "Starting services..."
docker-compose -f docker-compose.prod.yml up -d

# Check service status
echo "Checking service status..."
docker-compose -f docker-compose.prod.yml ps

echo "----------------------------------------"
echo "Deployment completed successfully!"
echo "Cafe Management System is now running at http://localhost:3000"
echo "----------------------------------------" 