FROM python:3.12-slim

RUN apt update && apt install -y \
    pkg-config \
    default-libmysqlclient-dev \
    gcc \
    libssl-dev \
    libffi-dev

WORKDIR /home/app

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN python manage.py makemigrations
RUN python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000
