<p align="center"><img src="https://cdn.jsdelivr.net/gh/bitjerry/wine-python/img/logo.png" alt="screenshots"></p>

[![Star](https://img.shields.io/github/stars/bitjerry/wine-python?logo=github&style=flat-square)](https://github.com/bitjerry/wine-python)
[![Forks](https://img.shields.io/github/forks/bitjerry/wine-python?logo=github&style=flat-square)](https://github.com/bitjerry/wine-python)
[![Docker pull](https://img.shields.io/docker/pulls/idiotdocker/winepy-embed?logo=docker&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy-embed)
[![Image size](https://img.shields.io/docker/image-size/idiotdocker/winepy-embed?logo=docker&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy-embed)
[![Version](https://img.shields.io/docker/v/idiotdocker/winepy-embed?logo=docker&sort=semver&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy-embed)
![Docker](https://img.shields.io/github/license/bitjerry/wine-python?style=flat-square)

### winepy-embed

Docker is easy to deploy in any environment, such as the Paas  
Wine Some programs must be executed under Windows  
Python is a very easy to use and popular programming language

Python 3.10.8 32bit embed and pip  
Does not include the full Windows environment  
If you have more requirements, please modify the `Dockerfile`

Read in other languages: English | [简体中文](https://github.com/bitjerry/wine-python/blob/main/README.zh_cn.md)

---

### Source Repository

> https://github.com/bitjerry/wine-python

---

### Usage

Use like you would any other base image:

```
FROM idiotdocker/winepy-embed:latest
```

### Run Python
```shell
RUN wine python ...
```

### Install requirements by pip
```shell
RUN wine pip install --no-cache-dir -r requirements.txt
```

### Copyright

---
MIT © [bitjerry](https://github.com/bitjerry/wine-python/blob/main/LICENSE)
