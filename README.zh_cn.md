# Wine-Python

[![Build](https://img.shields.io/github/workflow/status/bitjerry/wine-python/Publish%20Wine-Python)](https://github.com/bitjerry/wine-python)
[![Docker pull](https://img.shields.io/docker/pulls/idiotdocker/winepy?style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Image size](https://img.shields.io/docker/image-size/idiotdocker/winepy?style=flat-square)](https://hub.docker.com/r/idiotdocker/winepy)
[![Version](https://img.shields.io/docker/v/idiotdocker/winepy)](https://hub.docker.com/r/idiotdocker/winepy)
![Docker](https://img.shields.io/github/license/bitjerry/wine-python?style=flat-square)

Docker 便于将程序快速部署到任何环境中, 包括 Paas 平台  
Wine 某些程序必须在 Windows 环境下执行  
Python 毫无疑问, 最简单的编程语言  

仅用于 `Python 3.10.8 32&64 bit for Windows`  
不包含完整 Windows 环境  
如有更多需求请自行修改 Dockerfile

使用其他语言阅读：[English](./README.md) | 简体中文

---


## 使用

#### 执行Python脚本
- x86
```shell
wine python ...
```
- x64
```shell
wine py -3.10-64 ...
```

#### 使用pip安装依赖
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

### 许可

---
MIT © [bitjerry](./LICENSE)