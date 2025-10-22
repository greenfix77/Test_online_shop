FROM my-registry/python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt /code/

RUN pip install setuptools==65.5.0  
RUN pip install -r requirements.txt

COPY . /code/
