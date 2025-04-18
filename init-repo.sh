#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Initializing Cafe Management System Git Repository${NC}"
echo "----------------------------------------"

# Initialize Git repository
echo -e "${GREEN}Initializing Git repository...${NC}"
git init

# Add all files to Git
echo -e "${GREEN}Adding files to Git...${NC}"
git add .

# Commit the changes
echo -e "${GREEN}Committing changes...${NC}"
git commit -m "Initial commit: Cafe Management System with Docker and CI/CD"

# Set the remote repository
echo -e "${GREEN}Setting remote repository...${NC}"
git remote add origin https://github.com/Minahilasif12/SCD-MID.git

# Push to the main branch
echo -e "${GREEN}Pushing to main branch...${NC}"
git branch -M main
git push -u origin main

echo "----------------------------------------"
echo -e "${GREEN}Repository successfully initialized and pushed to GitHub!${NC}"
echo -e "Next steps:"
echo -e "1. Set up GitHub Secrets for CI/CD (see SETUP.md)"
echo -e "2. Run 'docker-compose up' to start the application locally"
echo "----------------------------------------" 