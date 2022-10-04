FROM nvcr.io/nvidia/tensorflow:22.02-tf2-py3

ENV DEBIAN_FRONTEND=noninteractive 
ENV TZ=Europe/Prague

RUN apt update
RUN apt install -y python3-notebook
RUN apt install -y python3-pip

RUN pip3 install jupyterhub

WORKDIR /home/schatzm
ENV HOME /home/schatzm

COPY . /home/schatzm
RUN useradd -m -u 1000 schatzm
RUN chown -R 1000:1000 /home/schatzm

ENTRYPOINT []

