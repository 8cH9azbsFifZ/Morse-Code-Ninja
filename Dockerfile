FROM python:3

RUN apt update
RUN apt -y install lame ffmpeg ebook2cw
RUN pip3 install --upgrade pip

ADD requirements.txt .
RUN pip3 install -r requirements.txt 

RUN mkdir -p /opt/morse-code-ninja
WORKDIR /opt/morse-code-ninja
RUN mkdir mp3

ADD . .
