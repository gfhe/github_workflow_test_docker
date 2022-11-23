FROM deepnote/python:3.9
RUN pip install protobuf==3.20.* dl_translate nltk Flask emoji ltp gunicorn greenlet eventlet gevent --no-cache-dir
COPY init.py /init.py
RUN python /init.py && rm /init.py
