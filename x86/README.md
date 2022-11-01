<p align="center"><img src="https://cdn.jsdelivr.net/gh/bitjerry/wine-python/img/logo.png" alt="screenshots"></p>

[![Star](https://img.shields.io/github/stars/bitjerry/wine-python?logo=github&style=flat-square)](https://github.com/bitjerry/wine-python)
[![Forks](https://img.shields.io/github/forks/bitjerry/wine-python?logo=github&style=flat-square)](https://github.com/bitjerry/wine-python)
[![Docker pull](https://img.shields.io/docker/pulls/idiotdocker/winepy?logo=docker&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Image size](https://img.shields.io/docker/image-size/idiotdocker/winepy?logo=docker&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Version](https://img.shields.io/docker/v/idiotdocker/winepy?logo=docker&sort=semver&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
![Docker](https://img.shields.io/github/license/bitjerry/wine-python?style=flat-square)

### winepy

Docker is easy to deploy in any environment, such as the Paas  
Wine Some programs must be executed under Windows  
Python is a very easy to use and popular programming language

For `Python 3.10.8 32bit for Windows` only, minimum image for python runtime!!!  

Does not include the full Windows environment

---

### Source Repository

> https://github.com/bitjerry/wine-python

---

### Usage

Use like you would any other base image:

```
FROM idiotdocker/winepy:latest
RUN ...
ENTRYPOINT ["..."]
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
