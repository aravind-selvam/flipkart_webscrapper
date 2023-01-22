#!/bin/bash

echo [$(date)] : "STARTING INITIAL SETUP"
export _VERSION_=3.8

echo [$(date)] : "PROJECT DIRECTORY NAME"
read project_name
export project_name_=$project_name

echo [$(date)] : "CREATING PROJECT STRUCTURE"
mkdir ${project_name_}

echo [$(date)] : "CREATING UTILITY LAYER"
mkdir ${project_name_}/utils
touch ${project_name_}/utils/__init__.py ${project_name_}/utils/utils.py

echo [$(date)] : "CREATING LOGGING LAYER"
mkdir ${project_name_}/logging
touch ${project_name_}/logging/__init__.py ${project_name_}/logging/logging.py

echo [$(date)] : "CREATING DATA ACCESS LAYER"
mkdir ${project_name_}/data_access
touch ${project_name_}/data_access/__init__.py ${project_name_}/data_access/data_access.py

echo [$(date)] : "CREATING EXCEPTION LAYER"
mkdir ${project_name_}/exception
touch ${project_name_}/exception/__init__.py ${project_name_}/exception/exception.py

echo [$(date)] : "CREATING ENTITY LAYER"
mkdir ${project_name_}/entity
touch ${project_name_}/entity/__init__.py ${project_name_}/entity/entity.py

echo [$(date)] : "CREATING TESTING LAYER"
mkdir ${project_name_}/tests
touch ${project_name_}/tests/__init__.py ${project_name_}/tests/tests.py

echo [$(date)] : "CREATING CONDA ENVIRONMENT"
conda create --prefix venv python=${_VERSION_} -y
source activate venv/

echo [$(date)] : "CREATE REQUIREMENTS TEXT FILE"
touch requirements.txt

echo [$(date)]: "CREATING DOCKER FILE"
touch dockerfile

echo [$(date)]: "CREATE lOG FOLDER"
mkdir logs

echo [$(date)]: "CREATING ADDITIONAL FILES"
mkdir config
touch config/config.yaml
touch app.py


echo [$(date)] : "END"