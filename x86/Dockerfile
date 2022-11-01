FROM i386/alpine:latest

ENV DEBIAN_FRONTEND noninteractive
ENV WINEDLLOVERRIDES 'winemenubuilder.exe,mscoree,mshtml=d'
ENV LANG en_US.UTF-8
ENV WINEPREFIX /root/.wine
ENV WINEARCH win32
ENV WINEDEBUG -all

RUN apk add --update --no-cache wine wget xvfb-run &&\
    xvfb-run sh -c "wine reg add 'HKLM\Software\Microsoft\Windows NT\CurrentVersion' /v CurrentVersion /d 10.0 /f; wineserver -w" &&\
    wget https://www.python.org/ftp/python/3.10.8/python-3.10.8.exe -O python.exe &&\
    xvfb-run sh -c "wine python.exe /quiet TargetDir=C:\\Python Include_doc=0 InstallAllUsers=1 PrependPath=1 Include_launcher=0 Include_tcltk=0 Include_test=0 Include_tools=0 Shortcuts=0 Include_debug=0 Include_dev=0; wineserver -w" &&\
    rm python.exe &&\
    apk del wget
