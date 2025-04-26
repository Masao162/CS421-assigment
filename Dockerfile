FROM python:3.12-slim

RUN apt update && apt install -y \
    pkg-config \
    default-libmysqlclient-dev \
    gcc \
    libssl-dev \
    libffi-dev

WORKDIR /home/app

COPY . .

RUN python3 -m venv env
RUN . ./env/bin/activate && pip install --upgrade pip && pip install -r requirements.txt
RUN . ./env/bin/activate && python manage.py makemigrations
RUN . ./env/bin/activate && python manage.py migrate

CMD ./env/bin/python manage.py runserver 0.0.0.0:8000

EXPOSE 8000