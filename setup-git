#!/bin/sh

# Create SSH key
ssh-keygen -t ed25519 -C "YOUR_EMAIL"

# View SSH directory
ls -al ~/.ssh

# Configure SSH
open ~/.ssh/config
touch ~/.ssh/config
cat > ~/.ssh/config << EOF
Host github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_ed25519
EOF

# Test GitHub SSH Access
echo Attempts to ssh to GitHub
ssh -T git@github.com

# Connect to remote respository and fetch
git remote add origin git@github.com:USERNAME/REPOSITORY.git
git fetch origin master
echo yes

# Overwrite your local files
git fetch --all
git reset --hard origin/master

# Check current branches
git branch -r # for remote
git branch  # for local
