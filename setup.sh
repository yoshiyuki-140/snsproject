#!/bin/bash

python3 -m venv venv
. ./venv/bin/activate

pip install -r ./requirements.txt
python3 manage.py migrate
python3 manage.py loaddata sample_data.json
python3 manage.py runserver
