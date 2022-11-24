FROM python:3.9
RUN pip install torch==1.10.0+cu111 torchvision==0.11.0+cu111 torchaudio==0.10.0 -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install protobuf==3.20.* dl_translate nltk Flask emoji ltp gunicorn greenlet eventlet gevent --no-cache-dir
COPY init.py /init.py
RUN python /init.py && rm /init.py
