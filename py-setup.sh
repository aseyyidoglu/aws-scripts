# !/bin/sh

# Get project name and module list from user
echo Enter project name:
read PROJECT
echo Enter list of python libraries to install:
read MODULE_STRING

# Setup project directory
mkdir $PROJECT
cd $PROJECT

# Install virtual environment
python3 -m venv env
source env/bin/activate

# Install modules into virtual environment
pip3 install $MODULE_STRING
pip freeze > requirements.txt

# Create an entrypoint application file: app.py
touch app.py

# Import modules
IFS=' '
read -ra MODULE_ARRAY <<< "$MODULE_STRING"
 
for value in "${MODULE_ARRAY[@]}";
do
  echo -e "import $value" >> app.py
done

echo '
# write your code here

print("Application is ready")' >> app.py

# Completion
open app.py
echo "Project is ready. Application file: app.py"
