FROM bde2020/spark-master:2.3.2-hadoop2.7

COPY requirements.txt /app/
RUN cd /app \
      && apt-get update \
      && apt-get install -y --force-yes --no-install-recommends apt-utils  python3-numpy \
      && pip3 install -r requirements.txt 
