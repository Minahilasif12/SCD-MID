# Setup Guide

Follow these steps to set up and deploy the Cafe Management System.

## 1. Initialize and Push to GitHub Repository

```bash
# Navigate to the project directory
cd SCD-MID

# Initialize Git repository
git init

# Add all files to Git
git add .

# Commit the changes
git commit -m "Initial commit: Cafe Management System with Docker and CI/CD"

# Set the remote repository
git remote add origin https://github.com/Minahilasif12/SCD-MID.git

# Push to the main branch
git branch -M main
git push -u origin main
```

## 2. Set up GitHub Secrets

To enable Docker Hub image pushing in GitHub Actions, add these secrets in your GitHub repository settings:

1. Go to your GitHub repository
2. Click Settings > Secrets and variables > Actions
3. Add new repository secrets:
   - `DOCKERHUB_USERNAME`: Your Docker Hub username
   - `DOCKERHUB_TOKEN`: Your Docker Hub access token (Create a token in Docker Hub Account Settings > Security)

## 3. Local Development

To run the system locally:

```bash
# Build and start services using docker-compose
docker-compose up --build
```

This will start all microservices and MongoDB. Access the services through the API Gateway at http://localhost:3000.

## 4. Production Deployment

To deploy to a production environment:

```bash
# Set your Docker Hub username
export DOCKERHUB_USERNAME=your_dockerhub_username

# Run the deployment script
./deploy.sh
```

The script will:
- Pull the latest Docker images
- Create the necessary environment files
- Start all services

Access the application at http://localhost:3000 after deployment. 