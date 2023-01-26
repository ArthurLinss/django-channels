# base image  
FROM python:3.9
# setup environment variable  
ENV DockerHOME=/code

# set work directory  
RUN mkdir -p $DockerHOME  


# where your code lives  
WORKDIR $DockerHOME  


# set environment variables  
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1  

# install dependencies  
RUN pip install --upgrade pip  

# copy whole project to your docker home directory. 
COPY . $DockerHOME  
#COPY . .

COPY entrypoint.sh entrypoint.sh

# run this command to install all dependencies  
#RUN pip install -r requirements.txt

RUN pip install --upgrade pip
RUN pip install django-environ
RUN pip install django 
RUN pip install -U channels["daphne"]
RUN pip install channels-redis

# port where the Django app runs  
EXPOSE 8000  
# start server  
#CMD ["python","manage.py","runserver"]  
CMD python manage.py runserver 0.0.0.0:8000


# useful for debugging (docker run -it)
#ENTRYPOINT [ "/bin/bash"]