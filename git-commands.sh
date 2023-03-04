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
