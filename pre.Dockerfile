FROM python:3.7-alpine

LABEL repository="https://github.com/awact/cloudfront-action"
LABEL homepage="https://github.com/awact/cloudfront-action"
LABEL maintainer="Shun Kakinoki @shunkakinoki"

ENV WORKDIR /app/
RUN mkdir ${WORKDIR}
WORKDIR ${WORKDIR}

COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock
COPY entrypoint.sh /entrypoint.sh

RUN pip install --upgrade pip && pip install pipenv

RUN pipenv install --system --ignore-pipfile --deploy
