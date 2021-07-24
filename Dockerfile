FROM python:3.9

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /code

# Install python dependencies in /.venv
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# install dependencies
RUN pip3 install --upgrade pip

COPY . /code
