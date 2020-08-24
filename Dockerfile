FROM python:3.7-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY poetry.lock pyproject.toml ./

RUN pip install poetry

RUN poetry config virtualenvs.create false \
  && poetry install