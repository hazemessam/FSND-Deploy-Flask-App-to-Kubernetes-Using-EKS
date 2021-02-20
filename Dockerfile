FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ENV JWT_SECRET='myjwtsecret' LOG_LEVEL='DEBUG'

ENTRYPOINT [ "gunicorn", "-b", ":80", "main:APP" ]