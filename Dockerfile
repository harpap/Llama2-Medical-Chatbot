# syntax=docker/dockerfile:1

FROM python:3.8

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

#copies the application from local path to container path
COPY ./ ./

ENTRYPOINT  chainlit run model.py

# command to run this: 
# sudo docker build -t med_chatbot:v1.0.0 .
# sudo docker run -p 8000:8000 --rm med_chatbot:v1.0.0