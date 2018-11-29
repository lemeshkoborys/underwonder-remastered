FROM python:3.6.6

ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /underwonder
COPY Pipfile /underwonder
COPY Pipfile.lock /underwonder
RUN pip install pipenv
RUN pipenv install --dev
COPY . /underwonder
RUN pipenv run ./manage.py collectstatic --no-input

EXPOSE 8000
CMD ["gunicorn", "--bind", ":8000", "underwonder_remastered.wsgi:application"]