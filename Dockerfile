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
RUN pipenv install --pre
#TODO normal pipenv flow
COPY . /underwonder

EXPOSE 8080
CMD ["pipenv", "run", "python", "manage.py", "runserver", "0.0.0.0:8080"]
