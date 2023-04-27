# !/bin/sh
# This script helps you to configure SSH access on a single machine.
# Following command helps you to check whether you already have a configuration in place or not: ssh -T git@github.com

echo Enter your email:
read $EMAIL

# Create SSH key
ssh-keygen -t ed25519 -C $EMAIL

# View SSH directory
ls -al ~/.ssh

# Configure SSH
touch ~/.ssh/config
open ~/.ssh/config
cat > ~/.ssh/config << EOF
Host github.com
AddKeysToAgent yes
IdentityFile ~/.ssh/id_ed25519
EOF

# Test GitHub SSH Access
echo Attempts to ssh to GitHub
ssh -T git@github.com
