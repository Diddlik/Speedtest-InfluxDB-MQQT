FROM python:alpine
LABEL maintainer="digiwo@gmail.com"
LABEL version="0.1"
LABEL description="Custom image t osend speedtest results to influxdb and mqtt broker"
MAINTAINER Pavel Eremeev <digiwo@gmail.com>

VOLUME /src/
COPY influxspeedtest.py requirements.txt config.ini /src/
ADD influxspeedtest /src/influxspeedtest
WORKDIR /src

RUN pip install -r requirements.txt

CMD ["python", "-u", "/src/influxspeedtest.py"]
