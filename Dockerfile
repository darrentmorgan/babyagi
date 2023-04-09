FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

WORKDIR /app

COPY . /app
COPY .env /app

RUN pip3 install -r requirements.txt

EXPOSE 9000

CMD ["python3", "babyagi.py"]