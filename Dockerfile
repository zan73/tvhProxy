FROM libreelecarm/python
MAINTAINER Zenon Skuza <zenon@skuza.net>
EXPOSE 5004
ARG tvhUser=test
ARG tvhPass=test
ARG tunerCount=4
RUN apk --no-cache add git gcc python-dev musl-dev
WORKDIR /tmp
RUN git clone https://github.com/jkaberg/tvhProxy
WORKDIR tvhProxy
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install -r requirements.txt