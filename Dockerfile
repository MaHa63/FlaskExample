FROM python:3.7-alpine

COPY requirements.txt /

RUN pip install -r /requirements.txt

WORKDIR /app

COPY . /app

EXPOSE 5000

CMD [ "python", "app.py" ]