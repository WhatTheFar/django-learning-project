FROM python:3.6
ENV PYTHONUNBUFFERED 1

RUN apt-get update

# Location of source code
ENV PROJECT_ROOT /opt/app
RUN mkdir -p $PROJECT_ROOT
WORKDIR $PROJECT_ROOT

COPY ./src $PROJECT_ROOT

# Copying requirements
COPY ./src/requirements.txt .
RUN pip install -r requirements.txt