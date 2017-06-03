FROM python:2.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

ENTRYPOINT ["./entrypoint.sh"]

RUN chmod +x /code/entrypoint.sh

CMD ["./entrypoint.sh", "uwsgi"]
