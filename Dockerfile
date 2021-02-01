FROM python:stretch

COPY . /app
WORKDIR ./app

RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8000", "main:APP"]
