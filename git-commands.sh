# Reference: https://confluence.atlassian.com/bitbucketserver/basic-git-commands-776639767.html

# Configuration
git config --global user.name "Sam Smith"
git config --global user.email sam@example.com

# Make a copy of remote
git clone /path/to/repository
git clone username@host:/path/to/repository

# Connect to remote respository and fetch
git remote add origin git@github.com:USERNAME/REPOSITORY.git
git fetch origin REMOTE_BRANCH
git merge origin/main

# List remote repositories
git remote -v

# Overwrite your local files
git fetch --all
git reset --hard origin/master

# Check current branches
git branch -r # for remote
git branch  # for local
