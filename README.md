# Wine-Python

[![Build](https://img.shields.io/github/workflow/status/bitjerry/wine-python/Publish%20Wine-Python)](https://github.com/bitjerry/wine-python)
[![Docker pull](https://img.shields.io/docker/pulls/idiotdocker/winepy?style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Image size](https://img.shields.io/docker/image-size/idiotdocker/winepy?style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Version](https://img.shields.io/docker/v/idiotdocker/winepy)](https://hub.docker.com/r/idiotdocker/winepy)
![Docker](https://img.shields.io/github/license/bitjerry/wine-python?style=flat-square)

Docker is easy to deploy in any environment, such as the Paas  
Wine Some programs must be executed under Windows  
Python is a very easy to use and popular programming language

For `Python 3.10.8 32&64 bit for Windows` only

Does not include the full Windows environment

If you have more requirements, please modify the `Dockerfile`

Read in other languages: English | [简体中文](./README.zh_cn.md)

---

### Started

#### Run Python
- x86
```shell
wine python ...
```
- x64
```shell
wine py -3.10-64 ...
```

#### Install requirements by pip  
- x86
```shell
xvfb-run sh -c "\
  wine pip install -r requirements.txt; \
  wineserver -w"
```
- x64
```shell
xvfb-run sh -c "\
  wine py -3.10-64 -m pip install -r requirements.txt; \
  wineserver -w"
```

### Copyright

---
MIT © [bitjerry](./LICENSE)