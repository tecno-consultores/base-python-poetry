FROM python:3.11-slim-bookworm
LABEL maintainer="sinfallas@gmail.com"
LABEL build_date="2024-11-23"
USER root
RUN apt-get update -qq && apt-get -y dist-upgrade && apt-get install -y --no-install-recommends curl git build-essential zip unzip wget nano libffi-dev libfreetype6-dev libfribidi-dev libharfbuzz-dev libjpeg-turbo-progs libjpeg62-turbo-dev liblcms2-dev libopenjp2-7-dev libtiff5-dev libwebp-dev libssl-dev freetds-dev freetds-bin unixodbc-dev tdsodbc && apt-get clean && rm -rf /var/lib/{apt,dpkg,cache,log} && apt -y autoremove
ENV POETRY_HOME="/opt/poetry"
RUN curl -sSL https://install.python-poetry.org | python3 -