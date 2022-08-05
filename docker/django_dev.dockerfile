FROM python:3.9.13-alpine3.16
ENV PYTHONUNBUFFERED=1
WORKDIR /app/dev/etpph

# build variables.
ENV DEBIAN_FRONTEND noninteractive
RUN pip install --upgrade pip

# PRECOPY UNTUK BUILD PIP PACKAGE REQUIREMENT
COPY ./requirement/requirement.txt /app/dev/etpph/requirement/requirement.txt
RUN pip install -r requirement/requirement.txt

# clean the install.
#RUN apt-get -y clean