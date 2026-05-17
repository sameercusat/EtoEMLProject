FROM python:3.11-slim-bullseye
COPY . /app
WORKDIR /app
RUN apt update -y && apt install awscli -y
RUN pip install -r requirements.txt
CMD ["python3","application.py"]