FROM    python:3.6

ENV     PYTHONBUFFERED 1

RUN     mkdir /celery
WORKDIR /celery

ADD     requirements.txt /celery/

RUN     pip install -r /celery/requirements.txt

ADD     . /celery/
