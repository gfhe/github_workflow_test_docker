FROM continuumio/anaconda3
RUN conda install -y pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 cudatoolkit=11.3 -c pytorch -c conda-forge
RUN pip install protobuf==3.20.* dl_translate nltk Flask emoji ltp gunicorn greenlet eventlet gevent --no-cache-dir
COPY init.py /init.py
RUN python /init.py && rm /init.py
