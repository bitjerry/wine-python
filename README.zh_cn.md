<p align="center"><img src="https://cdn.jsdelivr.net/gh/bitjerry/wine-python@main/img/logo.png" alt="screenshots"></p>

[![Star](https://img.shields.io/github/stars/bitjerry/wine-python?logo=github&style=flat-square)](https://github.com/bitjerry/wine-python)
[![Forks](https://img.shields.io/github/forks/bitjerry/wine-python?logo=github&style=flat-square)](https://github.com/bitjerry/wine-python)
[![Docker pull](https://img.shields.io/docker/pulls/idiotdocker/winepy?logo=docker&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Image size](https://img.shields.io/docker/image-size/idiotdocker/winepy?logo=docker&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Version](https://img.shields.io/docker/v/idiotdocker/winepy?logo=docker&sort=semver&style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
![Docker](https://img.shields.io/github/license/bitjerry/wine-python?style=flat-square)  

### winepy

Docker 便于将程序快速部署到任何环境中, 包括 Paas 平台  
Wine 某些程序必须在 Windows 环境下执行  
Python 毫无疑问, 最简单的编程语言  

仅用于 `Python 3.10.8 for Windows`, 最小镜像python运行环境!!!  
不包含完整 Windows 环境  
如有更多需求请自行修改 Dockerfile

使用其他语言阅读：[English](./README.md) | 简体中文

---

### 执行Python脚本
```shell
RUN wine python ...
```

### 使用pip安装依赖
```shell
RUN wine pip install --no-cache-dir -r requirements.txt
```

### 许可

---
MIT © [bitjerry](./LICENSE)
