# !/bin/sh
# Open terminal and run below codes line by line

# Create a new keygen with an email
ssh-keygen -t rsa -C ali.seyyidoglu@gmail.com 
# then press ENTER, add passphrase

# Evaluate and add ssh key into id_rsa file, and open the public key file to copy for remote repo
# Github SSH keys: https://github.com/settings/keys
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa && open ~/.ssh/id_rsa.pub

# Test connection over port 443
ssh -T -p 443 git@ssh.github.com

# In a project folder, initiate git and copy a remote repo
git init && git remote add origin git@github.com:aseyyidoglu/atomicro.git && git fetch origin main && git merge origin/main
