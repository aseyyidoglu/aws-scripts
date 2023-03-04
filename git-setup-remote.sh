# !/bin/sh

# Select repository
echo Enter repository name:
read REPOSITORY_NAME

# Create a copy of current repository in remote's main branch
mkdir $REPOSITORY_NAME
cd $REPOSITORY_NAME
git init
git remote add origin git@github.com:aseyyidoglu/$REPOSITORY_NAME.git
git fetch origin main
git merge origin/main
