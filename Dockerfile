FROM python:3.6.6

ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /underwonder
COPY requirements.txt /underwonder
RUN pip install -r requirements.txt
COPY . /underwonder

EXPOSE 8000
CMD ["gunicorn", "--bind", ":8000", "underwonder_remastered.wsgi:application"]
