#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
TARGET_PATH="${1}"

cp -r ${SCRIPT_PATH}/minimal-flask-template ${TARGET_PATH} || exit 1
cd ${TARGET_PATH}

# Ignore sensitive / unnecessary files
mv .gitignore.temp .gitignore

# Make venv and manage dependencies
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install flask
pip freeze > requirements.txt

# Initialize repository
git init
git add .
git commit -m "Initial commit"
