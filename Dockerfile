FROM i386/debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV WINEPREFIX /root/.wine
ENV WINEARCH win32
ENV WINEDEBUG -all

ARG PYTHON_VERSION=3.10.8

RUN apt-get update \
    && apt-get install -y --install-recommends ca-certificates gnupg wget xvfb \
    && wget -nv -O- https://dl.winehq.org/wine-builds/winehq.key | APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 apt-key add - \
    && echo "deb https://dl.winehq.org/wine-builds/debian/ $(grep VERSION_CODENAME= /etc/os-release | cut -d= -f2) main" >> /etc/apt/sources.list \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests winehq-stable \
    && rm -rf /var/lib/apt/lists/* \
    && xvfb-run sh -c "\
        set -e; \
        export WINEDLLOVERRIDES="winemenubuilder.exe,mscoree,mshtml="; \
        wine reg add 'HKLM\Software\Microsoft\Windows NT\CurrentVersion' /v CurrentVersion /d 10.0 /f; \
        wine reg add 'HKCU\Software\Wine\DllOverrides' /v winemenubuilder.exe /t REG_SZ /d '' /f; \
        wine reg add 'HKCU\Software\Wine\DllOverrides' /v mscoree /t REG_SZ /d '' /f; \
        wine reg add 'HKCU\Software\Wine\DllOverrides' /v mshtml /t REG_SZ /d '' /f; \
        wineserver -w" \
    && wget https://www.python.org/ftp/python/${PYTHON_VERSION}/python-${PYTHON_VERSION}.exe -O python.exe \
    && xvfb-run sh -c "\
        wine python.exe /quiet TargetDir=C:\\Python \
        Include_doc=0 InstallAllUsers=1 PrependPath=1; \
        wineserver -w" \
    && rm python.exe \
    && apt-get autoremove -y --purge ca-certificates gnupg wget \
    && apt-get autoremove -y --purge \
    && apt-get clean -y
