#!/bin/bash
cd /root/word-rnn-tensorflow
python3 train.py
python3 sample.py > /root/word-rnn-tensorflow/data/tinyshakespeare/output.txt
