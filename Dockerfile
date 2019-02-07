FROM balenalib/rpi-raspbian

MAINTAINER Vithar Me <vithar@vithar.me>

RUN apt-get update && apt-get upgrade -y && apt-get install -y --fix-missing \
    libatlas-base-dev \
    python3-pip \
    git \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*
RUN pip3 install tensorflow
RUN cd ~  && \
    git clone https://github.com/hunkim/word-rnn-tensorflow
COPY start.sh /root/.
RUN chmod +x /root/start.sh
CMD ["/root/start.sh"]
