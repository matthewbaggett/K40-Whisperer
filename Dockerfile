FROM ubuntu:focal
ENV DEBIAN_FRONTEND="teletype" \
    TERM=xterm-256color \
    DEFAULT_TZ='Europe/London'
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN apt-get update -qq && \
    apt-get install -yqq --no-install-recommends\
        python3 \
        python3-pip \
        python3-tk \
        libusb-1.0.0-dev \
        inkscape \
        && \
    pip3 install -r requirements.txt && \
    apt-get remove -yqq \
        perl \
        python3-pip \
        && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf \
            /var/lib/apt/lists/* \
            /tmp/* \
            /var/tmp/* \
            /var/cache/* \
            /var/log/dpkg* \
            /usr/share/doc \
            /usr/share/doc-base \
            /var/log/apt/term.log
COPY ./ /app
ENV K40_HOME=/data
            
CMD [ "python3", "./k40_whisperer.py" ]
