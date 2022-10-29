FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV WINEPREFIX /root/wine
ENV WINEARCH win64
ENV WINEDEBUG -all

ARG PYTHON_VERSION=3.10.8

#Install Tool
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        wget \
        xvfb \
        gnupg

#Intall Wine
COPY wine-init.sh /

RUN wget -nv -O- https://dl.winehq.org/wine-builds/winehq.key | APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 apt-key add - \
    && echo "deb https://dl.winehq.org/wine-builds/ubuntu/ $(grep VERSION_CODENAME= /etc/os-release | cut -d= -f2) main" >> /etc/apt/sources.list \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --install-recommends winehq-stable \
    && rm -rf /var/lib/apt/lists/* \
    && xvfb-run sh wine-init.sh

#Install python for Windows
RUN wget https://www.python.org/ftp/python/${PYTHON_VERSION}/python-${PYTHON_VERSION}-amd64.exe -O python.exe \
    && xvfb-run sh -c "\
        wine python.exe /quiet TargetDir=C:\\Python \
        Include_doc=0 InstallAllUsers=1 PrependPath=1; \
        wineserver -w" \
    && rm python.exe \
    && wget https://www.python.org/ftp/python/${PYTHON_VERSION}/python-${PYTHON_VERSION}.exe -O python.exe \
    && xvfb-run sh -c "\
        wine python.exe /quiet TargetDir=C:\\PythonX86 \
        Include_doc=0 InstallAllUsers=1 PrependPath=1; \
        wineserver -w" \
    && rm python.exe

