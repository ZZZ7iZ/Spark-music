FROM nikolaik/python-nodejs:python3.9-nodejs18
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean
COPY . /app
WORKDIR /app
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt

CMD python3 main.py
