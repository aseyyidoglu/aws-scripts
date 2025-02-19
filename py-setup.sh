# !/bin/sh
echo "This shell script creates a bootstrapped Python project work directory on your desktop."
echo "What is the name of the Python project?:"
read PROJECT_PATH

DIRECTORY="$HOME/Desktop/$PROJECT_PATH"

echo ">>> Setting up a new Python project at: $DIRECTORY"

if [ -d "$DIRECTORY" ]; then
  echo "Directory already exists: $DIRECTORY"
  echo "Try another project name..."
else
  sleep 2

  echo ">>> Creating project folder at: $DIRECTORY"
  mkdir "$DIRECTORY"
  cd "$DIRECTORY"
  
  echo ">>> Creating virtual environment. Folder name: venv"
  python3 -m venv venv
  
  echo ">>> Activating virtual environment... Command: source venv/bin/activate"
  source venv/bin/activate
  
  echo ">>> Creating project files: README.md, analysis.ipnb, app.py"
  touch README.md
  touch analysis.ipynb
  touch app.py

  echo ">>> Writing README content into README.md file..."
  echo 'This script is developed as an open source software for the community. You are welcome to use, modify and distribute it freely.

Author: Ali Osman Seyyidoglu  
Version: 1.0.0  
Last modified: 2025-02-19

# Frequently Used Commands

- source venv/bin/activate  
- deactivate  
- pip list  
- pip install --upgrade pip  
- python3 -m venv venv  
- pip freeze > requirements.txt  
- pip install requirements.txt  
' >> README.md
  
  echo ">>> Installing python-dotenv via pip package manager..."
  pip install python-dotenv || true

  echo ">>> Creating dot-env file. Use this file to store sensitive key-value pairs such as credentials."
  echo "Learn more about dot-env at: https://pypi.org/project/python-dotenv/#getting-started"
  touch .env
  echo ">>> Workplace is ready in: $DIRECTORY"
  echo ">>> Before starting, activate virtual environment by using: source env/bin/activate"
  echo ">>> Setup completed."
fi
