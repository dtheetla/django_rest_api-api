# base image  
# FROM python:3.11.4
FROM python:3.11.4-alpine3.18

# setup environment variable  
ENV DockerHOME=/code  

# set work directory  
RUN mkdir -p $DockerHOME  

# where your code lives  
WORKDIR $DockerHOME  

# set environment variables  
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1  

# install dependencies  
RUN pip install --upgrade pip  

# copy whole project to your docker home directory. 
COPY requirements.txt $DockerHOME  

# run this command to install all dependencies  
RUN pip install -r requirements.txt  

# port where the Django app runs  
EXPOSE 9000  

VOLUME $DockerHOME


# start server  
# CMD python manage.py runserver 0.0.0.0:9000
