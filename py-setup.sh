# !/bin/sh
# This script starts a new python project on your local machine.
# You need to:
# - provide a project name
# - provide list of libraries to install as a space-separated string: e.g. "requests numpy matplotlib"
# - have python3, pip and venv globally installed

# Get project name and module list from user
echo Enter project name:
read PROJECT
echo Enter list of python libraries to install 'space separated':
read MODULE_STRING

# Setup project directory
mkdir $PROJECT
cd $PROJECT

# Setup virtual environment
python3 -m venv env
source env/bin/activate

# Install modules into virtual environment: env folder
pip3 install $MODULE_STRING
pip freeze > requirements.txt

# Create application file: app.py
touch app.py

# Write import lines in app.py
IFS=' '
read -ra MODULE_ARRAY <<< "$MODULE_STRING"
 
for value in "${MODULE_ARRAY[@]}";
do
  echo -e "import $value" >> app.py
done

echo '
# write your code here

print("Application is ready")' >> app.py

# Complete script operations
open app.py
echo "Project is ready. Application file: app.py"
