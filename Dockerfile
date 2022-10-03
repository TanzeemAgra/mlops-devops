FROM python:3.10-slim-buster
WORKDIR /webapp
COPY ./webapp ./
RUN mkdir -p ./firstApp
COPY ./firstApp/. ./firstApp/.

COPY ./requirements.txt ./
#RUN pip install -upgarde pip --no-cache-dir
RUN apt-get update && apt-get install -y python3-pip
RUN pip install -r /webapp/requirements.txt
#EXPOSE $PORT
CMD ["python", "manage.py","runserver", "0.0.0.0:8000"]

#CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT webapp:webapp