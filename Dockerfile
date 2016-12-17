FROM tutum/apache-php
ENV http_proxy http://proxy2021.scansafe.net:8080

RUN apt-get update && apt-get install -yq git && rm -rf /var/lib/apt/lists/*
RUN rm -fr /app
ADD . /app

