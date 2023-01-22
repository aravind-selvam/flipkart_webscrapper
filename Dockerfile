FROM python:3.9-slim-buster

WORKDIR /app

COPY . /app

RUN python --version

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["python","app.py"]
