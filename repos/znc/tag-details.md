<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.8`](#znc18)
-	[`znc:1.8-slim`](#znc18-slim)
-	[`znc:1.8.2`](#znc182)
-	[`znc:1.8.2-slim`](#znc182-slim)
-	[`znc:latest`](#znclatest)
-	[`znc:slim`](#zncslim)

## `znc:1.8`

```console
$ docker pull znc@sha256:b5df3e3dfbe86ba98c4078f28d532d9b7ce761f50a5f1f04c864601e165f852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.8` - linux; amd64

```console
$ docker pull znc@sha256:91a3784e46f1a4376ebf74b6dbfb2c45cf8fa030fcf400de5f4cf33fb713a8e3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164440628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6ab9586a38d110a20e4d13e7ba6762883e099833040798face404ff63453c4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:22:10 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 21:22:10 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 21:22:10 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 21:22:10 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 21:26:08 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 21:26:09 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 21:26:09 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 21:26:09 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 21:26:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 21:26:25 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 21:26:26 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5d8b6b37f44d57259bb006f9b65889c6ea03ea64b4b515a3118d3a41bc8aa5`  
		Last Modified: Mon, 09 Jan 2023 21:26:46 GMT  
		Size: 46.6 MB (46571031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db57db500d6df1351587e84950e21dc0dc36ebf2be1bcfaa4704180210b8b068`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cbdb197592e1d29922f57158268e6c93a82af8f492030b50259afbec70fa3`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c730f7de5ad88fff639b156f341691c1bfb870e296b0d57108be1cb1363994`  
		Last Modified: Mon, 09 Jan 2023 21:27:12 GMT  
		Size: 114.5 MB (114497683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1d1928d6116a0055b2604036d51ac756085b340888e26618455820ab2bb2fc`  
		Last Modified: Mon, 09 Jan 2023 21:26:55 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8` - linux; arm variant v6

```console
$ docker pull znc@sha256:f700adcde2b928456befce0d9cc9eacd0acdb0579d5a389b617f392d0a8c7863
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144017540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f0ab304d370c8be847a9a7cb3d43bb5a463a32f47b3c245ca92475bfc017eb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:22:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 23:22:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 23:22:22 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 23:22:22 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 23:27:00 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 23:27:01 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 23:27:01 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 23:27:01 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 23:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 23:27:31 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 23:27:33 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3f91b0964a9ecd7b3252106af24ce78174591b653ae34b049771710e2a444`  
		Last Modified: Mon, 09 Jan 2023 23:28:07 GMT  
		Size: 44.8 MB (44773958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6414480af1c8110aa48969eb4af5ac641cb954eb34c42b1c3a6f58d3417205fd`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b13a569be5b264220b1168f7b0f7ab2db99a9f2f4451a295a4f3eaa7dabf0b`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325307e26980edc8907ce526d263760ad748a3f15a2d64470820d5c1907c031`  
		Last Modified: Mon, 09 Jan 2023 23:28:40 GMT  
		Size: 96.1 MB (96135081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f1b4c34e2fbebdcc63ba4a4f792759aa768699f69a10a66c47338a5e5769b4`  
		Last Modified: Mon, 09 Jan 2023 23:28:21 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:2bafc5670c009fb52e81137ebe821c6de22f323b5ffabd00d57d0df75652a4e1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153288386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2883d6bba9b909562a000168ca651a52fcdc38d8b2032bc9d919af8d35c96fb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:16:16 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 19:16:16 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 19:16:17 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 19:16:17 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 19:19:39 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 19:19:40 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 19:19:40 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 19:19:40 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 19:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 19:20:00 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 19:20:02 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a7bf78ba8488ffcb8e702347e8d353e09c6f5b2752202e35038fcfc6a072d`  
		Last Modified: Mon, 09 Jan 2023 19:20:21 GMT  
		Size: 46.2 MB (46152657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036cf60fd34df0dac5ae84e25a8425f8f867c8688e3525fca09e7fa1fd802951`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f67a6235f0e6a1e32fd72b1a91ec221405124b966ed6753e49e48b1d5143b3`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 778.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd618dea82f77805f92146a81ea6e08c22e2181084de2057a3e43a578bede45d`  
		Last Modified: Mon, 09 Jan 2023 19:20:44 GMT  
		Size: 103.9 MB (103875208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40caa18f15a27918a796ec3072c3a935653cb4d23ec067e05794dfc33e9f3d3`  
		Last Modified: Mon, 09 Jan 2023 19:20:31 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.8-slim`

```console
$ docker pull znc@sha256:220ea47600be3d73db75ace1ed7fddcdf200b2adf26195c5759d16e3433ecc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.8-slim` - linux; amd64

```console
$ docker pull znc@sha256:0bf60c073b319d5cc592bf59b77650f51b8dd8c0eb72a2e76b75ee80b5a06fca
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49942612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d140c5a315f3aa2af96be5d7bf2ef780da53a55518f5759bb83c04d88f42e3`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:22:10 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 21:22:10 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 21:22:10 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 21:22:10 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 21:26:08 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 21:26:09 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 21:26:09 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 21:26:09 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 21:26:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5d8b6b37f44d57259bb006f9b65889c6ea03ea64b4b515a3118d3a41bc8aa5`  
		Last Modified: Mon, 09 Jan 2023 21:26:46 GMT  
		Size: 46.6 MB (46571031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db57db500d6df1351587e84950e21dc0dc36ebf2be1bcfaa4704180210b8b068`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cbdb197592e1d29922f57158268e6c93a82af8f492030b50259afbec70fa3`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:3b0a4565787d94afcdf9ce80503dc4c2475361f3dd30c1a1a600e5a698c6285d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47882128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7379abf3632ed64787d694fbfdaf718dc9b6d52db3e43b47607fb9d80c0484`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:22:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 23:22:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 23:22:22 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 23:22:22 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 23:27:00 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 23:27:01 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 23:27:01 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 23:27:01 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 23:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3f91b0964a9ecd7b3252106af24ce78174591b653ae34b049771710e2a444`  
		Last Modified: Mon, 09 Jan 2023 23:28:07 GMT  
		Size: 44.8 MB (44773958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6414480af1c8110aa48969eb4af5ac641cb954eb34c42b1c3a6f58d3417205fd`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b13a569be5b264220b1168f7b0f7ab2db99a9f2f4451a295a4f3eaa7dabf0b`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:415a89b0777d8316ca723de45208f48bf3317ad2c1d466b90d18c8eeda2becd7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49412848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d43ae36d65c17bd479af78052f10e80faf1e6a8f920d4031d549d03dcbac76`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:16:16 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 19:16:16 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 19:16:17 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 19:16:17 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 19:19:39 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 19:19:40 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 19:19:40 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 19:19:40 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 19:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a7bf78ba8488ffcb8e702347e8d353e09c6f5b2752202e35038fcfc6a072d`  
		Last Modified: Mon, 09 Jan 2023 19:20:21 GMT  
		Size: 46.2 MB (46152657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036cf60fd34df0dac5ae84e25a8425f8f867c8688e3525fca09e7fa1fd802951`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f67a6235f0e6a1e32fd72b1a91ec221405124b966ed6753e49e48b1d5143b3`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 778.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.8.2`

```console
$ docker pull znc@sha256:b5df3e3dfbe86ba98c4078f28d532d9b7ce761f50a5f1f04c864601e165f852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.8.2` - linux; amd64

```console
$ docker pull znc@sha256:91a3784e46f1a4376ebf74b6dbfb2c45cf8fa030fcf400de5f4cf33fb713a8e3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164440628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6ab9586a38d110a20e4d13e7ba6762883e099833040798face404ff63453c4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:22:10 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 21:22:10 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 21:22:10 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 21:22:10 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 21:26:08 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 21:26:09 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 21:26:09 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 21:26:09 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 21:26:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 21:26:25 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 21:26:26 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5d8b6b37f44d57259bb006f9b65889c6ea03ea64b4b515a3118d3a41bc8aa5`  
		Last Modified: Mon, 09 Jan 2023 21:26:46 GMT  
		Size: 46.6 MB (46571031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db57db500d6df1351587e84950e21dc0dc36ebf2be1bcfaa4704180210b8b068`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cbdb197592e1d29922f57158268e6c93a82af8f492030b50259afbec70fa3`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c730f7de5ad88fff639b156f341691c1bfb870e296b0d57108be1cb1363994`  
		Last Modified: Mon, 09 Jan 2023 21:27:12 GMT  
		Size: 114.5 MB (114497683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1d1928d6116a0055b2604036d51ac756085b340888e26618455820ab2bb2fc`  
		Last Modified: Mon, 09 Jan 2023 21:26:55 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8.2` - linux; arm variant v6

```console
$ docker pull znc@sha256:f700adcde2b928456befce0d9cc9eacd0acdb0579d5a389b617f392d0a8c7863
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144017540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f0ab304d370c8be847a9a7cb3d43bb5a463a32f47b3c245ca92475bfc017eb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:22:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 23:22:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 23:22:22 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 23:22:22 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 23:27:00 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 23:27:01 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 23:27:01 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 23:27:01 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 23:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 23:27:31 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 23:27:33 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3f91b0964a9ecd7b3252106af24ce78174591b653ae34b049771710e2a444`  
		Last Modified: Mon, 09 Jan 2023 23:28:07 GMT  
		Size: 44.8 MB (44773958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6414480af1c8110aa48969eb4af5ac641cb954eb34c42b1c3a6f58d3417205fd`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b13a569be5b264220b1168f7b0f7ab2db99a9f2f4451a295a4f3eaa7dabf0b`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325307e26980edc8907ce526d263760ad748a3f15a2d64470820d5c1907c031`  
		Last Modified: Mon, 09 Jan 2023 23:28:40 GMT  
		Size: 96.1 MB (96135081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f1b4c34e2fbebdcc63ba4a4f792759aa768699f69a10a66c47338a5e5769b4`  
		Last Modified: Mon, 09 Jan 2023 23:28:21 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8.2` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:2bafc5670c009fb52e81137ebe821c6de22f323b5ffabd00d57d0df75652a4e1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153288386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2883d6bba9b909562a000168ca651a52fcdc38d8b2032bc9d919af8d35c96fb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:16:16 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 19:16:16 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 19:16:17 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 19:16:17 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 19:19:39 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 19:19:40 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 19:19:40 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 19:19:40 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 19:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 19:20:00 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 19:20:02 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a7bf78ba8488ffcb8e702347e8d353e09c6f5b2752202e35038fcfc6a072d`  
		Last Modified: Mon, 09 Jan 2023 19:20:21 GMT  
		Size: 46.2 MB (46152657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036cf60fd34df0dac5ae84e25a8425f8f867c8688e3525fca09e7fa1fd802951`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f67a6235f0e6a1e32fd72b1a91ec221405124b966ed6753e49e48b1d5143b3`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 778.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd618dea82f77805f92146a81ea6e08c22e2181084de2057a3e43a578bede45d`  
		Last Modified: Mon, 09 Jan 2023 19:20:44 GMT  
		Size: 103.9 MB (103875208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40caa18f15a27918a796ec3072c3a935653cb4d23ec067e05794dfc33e9f3d3`  
		Last Modified: Mon, 09 Jan 2023 19:20:31 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.8.2-slim`

```console
$ docker pull znc@sha256:220ea47600be3d73db75ace1ed7fddcdf200b2adf26195c5759d16e3433ecc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.8.2-slim` - linux; amd64

```console
$ docker pull znc@sha256:0bf60c073b319d5cc592bf59b77650f51b8dd8c0eb72a2e76b75ee80b5a06fca
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49942612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d140c5a315f3aa2af96be5d7bf2ef780da53a55518f5759bb83c04d88f42e3`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:22:10 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 21:22:10 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 21:22:10 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 21:22:10 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 21:26:08 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 21:26:09 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 21:26:09 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 21:26:09 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 21:26:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5d8b6b37f44d57259bb006f9b65889c6ea03ea64b4b515a3118d3a41bc8aa5`  
		Last Modified: Mon, 09 Jan 2023 21:26:46 GMT  
		Size: 46.6 MB (46571031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db57db500d6df1351587e84950e21dc0dc36ebf2be1bcfaa4704180210b8b068`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cbdb197592e1d29922f57158268e6c93a82af8f492030b50259afbec70fa3`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8.2-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:3b0a4565787d94afcdf9ce80503dc4c2475361f3dd30c1a1a600e5a698c6285d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47882128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7379abf3632ed64787d694fbfdaf718dc9b6d52db3e43b47607fb9d80c0484`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:22:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 23:22:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 23:22:22 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 23:22:22 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 23:27:00 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 23:27:01 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 23:27:01 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 23:27:01 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 23:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3f91b0964a9ecd7b3252106af24ce78174591b653ae34b049771710e2a444`  
		Last Modified: Mon, 09 Jan 2023 23:28:07 GMT  
		Size: 44.8 MB (44773958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6414480af1c8110aa48969eb4af5ac641cb954eb34c42b1c3a6f58d3417205fd`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b13a569be5b264220b1168f7b0f7ab2db99a9f2f4451a295a4f3eaa7dabf0b`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.8.2-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:415a89b0777d8316ca723de45208f48bf3317ad2c1d466b90d18c8eeda2becd7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49412848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d43ae36d65c17bd479af78052f10e80faf1e6a8f920d4031d549d03dcbac76`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:16:16 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 19:16:16 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 19:16:17 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 19:16:17 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 19:19:39 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 19:19:40 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 19:19:40 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 19:19:40 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 19:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a7bf78ba8488ffcb8e702347e8d353e09c6f5b2752202e35038fcfc6a072d`  
		Last Modified: Mon, 09 Jan 2023 19:20:21 GMT  
		Size: 46.2 MB (46152657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036cf60fd34df0dac5ae84e25a8425f8f867c8688e3525fca09e7fa1fd802951`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f67a6235f0e6a1e32fd72b1a91ec221405124b966ed6753e49e48b1d5143b3`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 778.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:b5df3e3dfbe86ba98c4078f28d532d9b7ce761f50a5f1f04c864601e165f852a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:91a3784e46f1a4376ebf74b6dbfb2c45cf8fa030fcf400de5f4cf33fb713a8e3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164440628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6ab9586a38d110a20e4d13e7ba6762883e099833040798face404ff63453c4`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:22:10 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 21:22:10 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 21:22:10 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 21:22:10 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 21:26:08 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 21:26:09 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 21:26:09 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 21:26:09 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 21:26:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 21:26:25 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 21:26:26 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5d8b6b37f44d57259bb006f9b65889c6ea03ea64b4b515a3118d3a41bc8aa5`  
		Last Modified: Mon, 09 Jan 2023 21:26:46 GMT  
		Size: 46.6 MB (46571031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db57db500d6df1351587e84950e21dc0dc36ebf2be1bcfaa4704180210b8b068`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cbdb197592e1d29922f57158268e6c93a82af8f492030b50259afbec70fa3`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c730f7de5ad88fff639b156f341691c1bfb870e296b0d57108be1cb1363994`  
		Last Modified: Mon, 09 Jan 2023 21:27:12 GMT  
		Size: 114.5 MB (114497683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1d1928d6116a0055b2604036d51ac756085b340888e26618455820ab2bb2fc`  
		Last Modified: Mon, 09 Jan 2023 21:26:55 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:f700adcde2b928456befce0d9cc9eacd0acdb0579d5a389b617f392d0a8c7863
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144017540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f0ab304d370c8be847a9a7cb3d43bb5a463a32f47b3c245ca92475bfc017eb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:22:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 23:22:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 23:22:22 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 23:22:22 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 23:27:00 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 23:27:01 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 23:27:01 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 23:27:01 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 23:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 23:27:31 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 23:27:33 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3f91b0964a9ecd7b3252106af24ce78174591b653ae34b049771710e2a444`  
		Last Modified: Mon, 09 Jan 2023 23:28:07 GMT  
		Size: 44.8 MB (44773958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6414480af1c8110aa48969eb4af5ac641cb954eb34c42b1c3a6f58d3417205fd`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b13a569be5b264220b1168f7b0f7ab2db99a9f2f4451a295a4f3eaa7dabf0b`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325307e26980edc8907ce526d263760ad748a3f15a2d64470820d5c1907c031`  
		Last Modified: Mon, 09 Jan 2023 23:28:40 GMT  
		Size: 96.1 MB (96135081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f1b4c34e2fbebdcc63ba4a4f792759aa768699f69a10a66c47338a5e5769b4`  
		Last Modified: Mon, 09 Jan 2023 23:28:21 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:2bafc5670c009fb52e81137ebe821c6de22f323b5ffabd00d57d0df75652a4e1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153288386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2883d6bba9b909562a000168ca651a52fcdc38d8b2032bc9d919af8d35c96fb`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:16:16 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 19:16:16 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 19:16:17 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 19:16:17 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 19:19:39 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 19:19:40 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 19:19:40 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 19:19:40 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 19:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Jan 2023 19:20:00 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         openssl-dev         perl         python3
# Mon, 09 Jan 2023 19:20:02 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a7bf78ba8488ffcb8e702347e8d353e09c6f5b2752202e35038fcfc6a072d`  
		Last Modified: Mon, 09 Jan 2023 19:20:21 GMT  
		Size: 46.2 MB (46152657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036cf60fd34df0dac5ae84e25a8425f8f867c8688e3525fca09e7fa1fd802951`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f67a6235f0e6a1e32fd72b1a91ec221405124b966ed6753e49e48b1d5143b3`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 778.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd618dea82f77805f92146a81ea6e08c22e2181084de2057a3e43a578bede45d`  
		Last Modified: Mon, 09 Jan 2023 19:20:44 GMT  
		Size: 103.9 MB (103875208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40caa18f15a27918a796ec3072c3a935653cb4d23ec067e05794dfc33e9f3d3`  
		Last Modified: Mon, 09 Jan 2023 19:20:31 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:220ea47600be3d73db75ace1ed7fddcdf200b2adf26195c5759d16e3433ecc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:0bf60c073b319d5cc592bf59b77650f51b8dd8c0eb72a2e76b75ee80b5a06fca
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49942612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d140c5a315f3aa2af96be5d7bf2ef780da53a55518f5759bb83c04d88f42e3`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:22:10 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 21:22:10 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 21:22:10 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 21:22:10 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 21:26:08 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 21:26:09 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 21:26:09 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 21:26:09 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 21:26:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5d8b6b37f44d57259bb006f9b65889c6ea03ea64b4b515a3118d3a41bc8aa5`  
		Last Modified: Mon, 09 Jan 2023 21:26:46 GMT  
		Size: 46.6 MB (46571031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db57db500d6df1351587e84950e21dc0dc36ebf2be1bcfaa4704180210b8b068`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291cbdb197592e1d29922f57158268e6c93a82af8f492030b50259afbec70fa3`  
		Last Modified: Mon, 09 Jan 2023 21:26:38 GMT  
		Size: 781.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:3b0a4565787d94afcdf9ce80503dc4c2475361f3dd30c1a1a600e5a698c6285d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47882128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7379abf3632ed64787d694fbfdaf718dc9b6d52db3e43b47607fb9d80c0484`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:22:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 23:22:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 23:22:22 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 23:22:22 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 23:27:00 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 23:27:01 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 23:27:01 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 23:27:01 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 23:27:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e3f91b0964a9ecd7b3252106af24ce78174591b653ae34b049771710e2a444`  
		Last Modified: Mon, 09 Jan 2023 23:28:07 GMT  
		Size: 44.8 MB (44773958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6414480af1c8110aa48969eb4af5ac641cb954eb34c42b1c3a6f58d3417205fd`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b13a569be5b264220b1168f7b0f7ab2db99a9f2f4451a295a4f3eaa7dabf0b`  
		Last Modified: Mon, 09 Jan 2023 23:27:58 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:415a89b0777d8316ca723de45208f48bf3317ad2c1d466b90d18c8eeda2becd7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49412848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d43ae36d65c17bd479af78052f10e80faf1e6a8f920d4031d549d03dcbac76`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:16:16 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Mon, 09 Jan 2023 19:16:16 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES
# Mon, 09 Jan 2023 19:16:17 GMT
ARG MAKEFLAGS=
# Mon, 09 Jan 2023 19:16:17 GMT
ENV ZNC_VERSION=1.8.2
# Mon, 09 Jan 2023 19:19:39 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         icu-data-full         openssl         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         openssl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 09 Jan 2023 19:19:40 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 09 Jan 2023 19:19:40 GMT
COPY dir:4684da7bbf1d77862fa1a1b074543f975eb608cc0b6b1951ff5c5b58959d0faa in /startup-sequence/ 
# Mon, 09 Jan 2023 19:19:40 GMT
VOLUME [/znc-data]
# Mon, 09 Jan 2023 19:19:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b1a7bf78ba8488ffcb8e702347e8d353e09c6f5b2752202e35038fcfc6a072d`  
		Last Modified: Mon, 09 Jan 2023 19:20:21 GMT  
		Size: 46.2 MB (46152657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036cf60fd34df0dac5ae84e25a8425f8f867c8688e3525fca09e7fa1fd802951`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f67a6235f0e6a1e32fd72b1a91ec221405124b966ed6753e49e48b1d5143b3`  
		Last Modified: Mon, 09 Jan 2023 19:20:15 GMT  
		Size: 778.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
