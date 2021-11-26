FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y cmake gdb python python3 vim locales
RUN apt-get install -y curl sudo
RUN locale-gen en_US.UTF-8

ENV LANG=en_US.utf8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

ENV SHELL=/bin/bash 

RUN apt-get install -y cgdb git

# DataLab
RUN apt-get install -y g++-10-multilib-arm-linux-gnueabi

# ArchLab
RUN apt-get install -y flex bison libgetopt-complete-perl

# CacheLab
RUN apt-get install -y valgrind


USER root

# Python3-pip
RUN apt-get update
RUN apt-get install -y python3-dev python3-pip python3-setuptools

# Fuck Extension
RUN pip3 install thefuck

RUN apt-get update
