#!/bin/bash

python -m venv venv
. ./venv/bin/activate

pip install -r ./requirements.txt
python manage.py migrate
python manage.py loaddata sample_data.json
python manage.py runserver