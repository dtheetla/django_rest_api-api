#!/bin/sh
docker run -it -v .:/code py-rest-template-api python manage.py runserver 0.0.0.0:9000