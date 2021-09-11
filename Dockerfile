FROM python:slim-buster
RUN apt-get update && apt-get install git ffmpeg -y
COPY . .
RUN pip3 install -U pip && pip3 install -r requirements.txt
CMD python3 -m bot
