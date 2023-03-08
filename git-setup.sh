# !/bin/sh

# Select account name
echo Enter GitHub account name:
read ACCOUNT_NAME

# Select repository
echo Enter repository name:
read REPOSITORY_NAME

# Create a copy of current repository in remote's main branch
mkdir $REPOSITORY_NAME
cd $REPOSITORY_NAME
git init
git remote add origin git@github.com:$ACCOUNT_NAME/$REPOSITORY_NAME.git
git fetch origin main
git merge origin/main
