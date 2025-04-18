# Commands to Push to GitHub (Windows PowerShell)

Follow these steps to push the Cafe Management System repository to GitHub using PowerShell:

## Navigate to the project directory
```powershell
cd SCD-MID
```

## Initialize Git repository 
```powershell
git init
```

## Add all files to Git
```powershell
git add .
```

## Commit the changes
```powershell
git commit -m "Initial commit: Cafe Management System with Docker and CI/CD"
```

## Set the remote repository
```powershell
git remote add origin https://github.com/Minahilasif12/SCD-MID.git
```

## Push to the main branch
```powershell
git branch -M main
git push -u origin main
```

## Verify the push
```powershell
git status
```

## Set up GitHub Secrets
After pushing to GitHub, set up repository secrets for CI/CD:
1. Go to GitHub repository -> Settings -> Secrets and variables -> Actions
2. Add new repository secrets:
   - `DOCKERHUB_USERNAME`: Your Docker Hub username
   - `DOCKERHUB_TOKEN`: Your Docker Hub access token

## Test the CI/CD workflow
After setting up secrets, you can make a small change and push it to trigger the CI/CD workflow:

```powershell
# Make a small change
echo "# Additional information" >> README.md

# Commit and push
git add README.md
git commit -m "Update README to trigger CI/CD"
git push
```

You can then check the Actions tab in your GitHub repository to monitor the workflow. 