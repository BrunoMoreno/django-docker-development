FROM python:3.7.2-slim

MAINTAINER Bruno Queiroz <brunowlinux@gmail.com>

RUN apt-get update 
RUN apt-get install build-essential -qq -y 

EXPOSE 8000

RUN mkdir /app 
WORKDIR /app

ADD . /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD /app/manage.py runserver 0.0.0.0:8000

