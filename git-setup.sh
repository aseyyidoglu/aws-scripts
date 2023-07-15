# !/bin/sh
# Create a local copy of a git remote repository
# Directly copy and paste URL of a repository

# Get GitHub repository URL
echo Enter GitHub repository URL:
read REPO_URL
ACCOUNT_NAME=$(basename $(dirname $REPO_URL))
REPOSITORY_NAME=$(basename $REPO_URL)

# Create a copy of current repository in remote's main branch
mkdir $REPOSITORY_NAME
cd $REPOSITORY_NAME
git init
git remote add origin git@github.com:$ACCOUNT_NAME/$REPOSITORY_NAME.git
git fetch origin main
git merge origin/main

echo "Repository is ready."
