FROM amd64/alpine:latest

ENV WINEDLLOVERRIDES 'winemenubuilder.exe,mscoree,mshtml=d'
ENV LANG en_US.UTF-8
ENV WINEARCH win64
ENV WINEDEBUG -all
ENV WINEPREFIX /root/.wine
ENV WINEPATH C:/python;C:/python/Scripts

WORKDIR ${WINEPREFIX}/drive_c/python

RUN apk add --update --no-cache wine

RUN wget -nc -O python.zip https://www.python.org/ftp/python/3.10.8/python-3.10.8-embed-amd64.zip &&\
    unzip python.zip &&\
    echo "import site" >>$(find . -type f -name "*._pth") &&\
    rm python.zip
    
RUN wget -nc https://bootstrap.pypa.io/get-pip.py &&\
    wine64 python get-pip.py &&\
	wineserver -w &&\
    rm get-pip.py

RUN ln -s /usr/bin/wine64 /usr/bin/wine
