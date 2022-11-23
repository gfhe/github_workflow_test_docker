FROM deepnote/python:3.9
RUN pip install dl_translate nltk Flask emoji ltp --no-cache-dir
COPY init.py
RUN python init.py
