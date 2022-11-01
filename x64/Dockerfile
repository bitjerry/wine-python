FROM amd64/debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive
ENV WINEDLLOVERRIDES 'winemenubuilder.exe,mscoree,mshtml=d'
ENV LANG en_US.UTF-8
ENV WINEPREFIX /root/.wine
ENV WINEARCH win64
ENV WINEDEBUG -all

RUN apt-get update \
    && apt-get install -y --install-recommends ca-certificates gnupg wget xvfb \
    && wget -nv -O- https://dl.winehq.org/wine-builds/winehq.key | APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 apt-key add - \
    && echo "deb https://dl.winehq.org/wine-builds/debian/ $(grep VERSION_CODENAME= /etc/os-release | cut -d= -f2) main" >> /etc/apt/sources.list \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests winehq-stable \
    && rm -rf /var/lib/apt/lists/* \
    && xvfb-run sh -c "wine reg add 'HKLM\Software\Microsoft\Windows NT\CurrentVersion' /v CurrentVersion /d 10.0 /f; wineserver -w" \
    && wget https://www.python.org/ftp/python/3.10.8/python-3.10.8-amd64.exe -O python.exe \
    && xvfb-run sh -c "wine python.exe /quiet TargetDir=C:\\Python Include_doc=0 InstallAllUsers=1 PrependPath=1 Include_launcher=0 Include_tcltk=0 Include_test=0 Include_tools=0 Shortcuts=0 Include_debug=0 Include_dev=0; wineserver -w" \
    && rm python.exe \
    && apt-get autoremove -y --purge ca-certificates gnupg wget \
    && apt-get autoremove -y --purge \
    && apt-get clean -y
