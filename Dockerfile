FROM ubuntu:focal
ENV DEBIAN_FRONTEND="teletype" \
    TERM=xterm-256color \
    DEFAULT_TZ='Europe/London'
WORKDIR /app
COPY . /app
RUN apt-get update -qq && \
    apt-get install -yqq \
        python3 \
        python3-pip \
        python3-tk \
        && \
    pip3 install -r requirements.txt && \
    apt-get remove -yqq \
        perl \
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
            
CMD [ "python3", "./k40_whisperer.py" ]
