FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y python3.4
RUN apt-get install -y python3-pip
RUN apt-get install -y texlive imagemagick
RUN apt-get install -y texlive-latex-extra
RUN mkdir /app
COPY . /app
WORKDIR /app

RUN pip3 install -U -r requirements.txt

EXPOSE 8000
CMD ["gunicorn",  "-b", "0.0.0.0:8000", "-w", "4", "-t", "360", "--log-level", "DEBUG", "run:app"]
