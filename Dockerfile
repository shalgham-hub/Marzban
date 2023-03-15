FROM python:3.10-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN apt-get update \
    && apt-get install -y curl unzip gcc python3-dev \
    && rm -rf /var/lib/apt/lists/*

COPY install_xray.sh /install_xray.sh

RUN chmod u+x /install_xray.sh && /install_xray.sh

COPY . /code

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

RUN apt-get remove -y curl unzip gcc python3-dev

CMD ["bash", "-c", "alembic upgrade head; python main.py"]