FROM balenalib/rpi-raspbian

MAINTAINER Vithar Me <vithar@vithar.me>

RUN apt-get update && apt-get upgrade -y && apt-get install -y --fix-missing \
    libatlas-base-dev
RUN apt-get install python3-pip
RUN pip3 install tensorflow
RUN apt-get install -y git
RUN cd ~  && \
    git clone https://github.com/hunkim/word-rnn-tensorflow
COPY start.sh /root/.
RUN chmod +x /root/start.sh
CMD ["/root/start.sh"]
