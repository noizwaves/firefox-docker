FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y libxext-dev libxrender-dev libxtst-dev firefox && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
CMD firefox
