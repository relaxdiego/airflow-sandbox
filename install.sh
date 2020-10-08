#!/bin/bash
set -euo pipefail

# Check if pyenv virtualenv airflow-sandbox is already installed
# and install if not
if ! pyenv virtualenvs | grep airflow-sandbox; then
    pyenv virtualenv 3.7.7 airflow-sandbox
fi

pip install apache-airflow
airflow initdb
