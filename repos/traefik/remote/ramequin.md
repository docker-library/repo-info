## `traefik:ramequin`

```console
$ docker pull traefik@sha256:b3e39ee5a799567ef3e6d7c95b2e7b4b43cd4f877e2ee1a35e0612780fc0b127
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `traefik:ramequin` - linux; amd64

```console
$ docker pull traefik@sha256:895fcd96315a34e37270fc3f73034c16125251265a84174ad4fdaf7cd0f2966e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54693943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe87da91c413a0b9e154bd2e293cb737e9ce52364d95ef34d72a78673a2b99f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 17:05:04 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:05:08 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.23/traefik_v3.6.23_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:05:08 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:05:08 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:05:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:05:08 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:05:08 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.23 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6676cc51edd56f775334e8a1403dff1d44c78c2e589a244d9468e12269ec62a0`  
		Last Modified: Wed, 08 Jul 2026 17:05:31 GMT  
		Size: 408.7 KB (408742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab218fa505d41046ec6a066019c87943ab756c3dfd552ccdaf9ae1f3befab1c6`  
		Last Modified: Wed, 08 Jul 2026 17:05:33 GMT  
		Size: 50.4 MB (50438443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07074fe01eb59086cba2b1d20521fcf6b9320e3b9a7cff0b9223f9e2849b866b`  
		Last Modified: Wed, 08 Jul 2026 17:05:31 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:6af82161736f5a49efc593ef3cf385367eb99e8c8e662567e21e1d0e272df68e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.9 KB (833939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b99b918a9042f794a30f488981b7d56781f99bd66f29797195021481f8fedb6`

```dockerfile
```

-	Layers:
	-	`sha256:b7784d6280a5691a71560c27170504ff3ed3aa0f29a1c66725060b164bc2ffff`  
		Last Modified: Wed, 08 Jul 2026 17:05:31 GMT  
		Size: 821.9 KB (821930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78f9b210020f841818a37e154427032a6a132016a960d7a1ca02f776bda549bc`  
		Last Modified: Wed, 08 Jul 2026 17:05:31 GMT  
		Size: 12.0 KB (12009 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:ramequin` - linux; arm variant v6

```console
$ docker pull traefik@sha256:25249a705d59b62e9088231c1679310d9b73f2209198a281f5564245667f338e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49956126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12da4ea3951b3812220d15e6483c11a77f875ea4cab6bb90a1fceafead2c093`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 17:04:34 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:04:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.23/traefik_v3.6.23_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:04:38 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:04:38 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:04:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:04:38 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:04:38 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.23 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae31f34cd0bcc89024c476fafceee7e83f567b425cf4707b4aaf259e529ffb4`  
		Last Modified: Wed, 08 Jul 2026 17:04:47 GMT  
		Size: 410.6 KB (410585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e34f1aa036d094a5db26ddce5c96493bbc421357fd71e124fc86d9da4c7a2816`  
		Last Modified: Wed, 08 Jul 2026 17:04:49 GMT  
		Size: 46.0 MB (45991722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cebbf4e2ef66a2eb1db4be3ff976f76900d34e37cf53a5559b7ef09b1c2784e6`  
		Last Modified: Wed, 08 Jul 2026 17:04:47 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:b8a20d0ee42cdf9514125a2648ccdc0763058b3cfbdf5aa7e314f69cbfc9b17c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 KB (11894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8828b92f46b220ffefc3fc03e9cbc030fb37fbec27fd98510964fba65ab30487`

```dockerfile
```

-	Layers:
	-	`sha256:bf51bb8e15786b422c787cb87a4d8a1a267d3bdc4777427bc532e4cd6254a8d7`  
		Last Modified: Wed, 08 Jul 2026 17:04:47 GMT  
		Size: 11.9 KB (11894 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:ramequin` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:277830288f82c6ae7538a47b75f79cf94766842a7f18d9915cd78620f9050e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48920349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12989d5baf5edbfccade6afd294f6e9ba24ecf8f7b6480c87e4c71c847542aac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 20:37:25 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 30 Jun 2026 20:37:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.22/traefik_v3.6.22_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 30 Jun 2026 20:37:27 GMT
COPY entrypoint.sh / # buildkit
# Tue, 30 Jun 2026 20:37:27 GMT
EXPOSE map[80/tcp:{}]
# Tue, 30 Jun 2026 20:37:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Jun 2026 20:37:27 GMT
CMD ["traefik"]
# Tue, 30 Jun 2026 20:37:27 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.22 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864752661f3cda0263640fd8ea05807e6e0d86cc64ac9e3773a0b5f0671007c`  
		Last Modified: Tue, 30 Jun 2026 20:37:53 GMT  
		Size: 412.5 KB (412452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b352fa39822763b52e6a81ee9a9a16651927838c7bcff0e6a20c651598726d`  
		Last Modified: Tue, 30 Jun 2026 20:37:55 GMT  
		Size: 44.3 MB (44324491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f4214fbd79b9ff6c4ad9f39625a791627eba0cea555854e0fde1373ac40620`  
		Last Modified: Tue, 30 Jun 2026 20:37:53 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:f049e17194c5a065581f60bf7a5a6650639681116a1463ff1d26045e3ae9ad3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.5 KB (833490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19331e8d1041e4d2a79d09f1791cbfe7474632de0889055d6ee1548ad6f5d84f`

```dockerfile
```

-	Layers:
	-	`sha256:6aba0d3e9467601ed5701a0a6c84a3459f414bb3da1f9aa4ec7585a7bc3aea48`  
		Last Modified: Tue, 30 Jun 2026 20:37:53 GMT  
		Size: 821.4 KB (821350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5cb64a22cb9aee6c09a4368d256c080a82ee14aa6db99e14fc99cf8a9081e80`  
		Last Modified: Tue, 30 Jun 2026 20:37:53 GMT  
		Size: 12.1 KB (12140 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:ramequin` - linux; ppc64le

```console
$ docker pull traefik@sha256:9832bcd97e77ae2997e3847443674b2d75a41e9a21aaab5fa1638c31d64b0db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47168745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a9e3050ec1d64f4841ffbcab43f516664d913d56b13022c89f9e4e992b9d00`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 20:35:41 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 30 Jun 2026 20:35:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.22/traefik_v3.6.22_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 30 Jun 2026 20:35:46 GMT
COPY entrypoint.sh / # buildkit
# Tue, 30 Jun 2026 20:35:46 GMT
EXPOSE map[80/tcp:{}]
# Tue, 30 Jun 2026 20:35:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Jun 2026 20:35:46 GMT
CMD ["traefik"]
# Tue, 30 Jun 2026 20:35:46 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.22 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ec50ab935b9e560da2388a025bf367f3f81660dc46d3cba85187788d18a6df`  
		Last Modified: Tue, 30 Jun 2026 20:36:38 GMT  
		Size: 413.0 KB (412999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4a317498990ea8bb580eafdae15d13d56e6e613889e157d2349c9e3bc40c46`  
		Last Modified: Tue, 30 Jun 2026 20:36:40 GMT  
		Size: 42.9 MB (42941978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdb11c53fa38fe7723d0565e31c90fc9cb0fe99cb343d7b2d837a71ed8cfa0e`  
		Last Modified: Tue, 30 Jun 2026 20:36:38 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:be1685f0d009aaa27d263604ace0989a2bd885f26c346696fc0c70e7eb7880c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.4 KB (833382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7bd105111ab40977fe5251a57f1b6a14d8ffe2dda9d7bdb0c0a1b6a2522073a`

```dockerfile
```

-	Layers:
	-	`sha256:f42e26d4a5b76d1ec4f1e1e7ad7b29ef624bfd22f8a13676ec000afd2759732e`  
		Last Modified: Tue, 30 Jun 2026 20:36:39 GMT  
		Size: 821.3 KB (821321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d081134cd985ccfca3a9be21fd7abc0f22b347217e80658fa48d6e20c365339b`  
		Last Modified: Tue, 30 Jun 2026 20:36:39 GMT  
		Size: 12.1 KB (12061 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:ramequin` - linux; riscv64

```console
$ docker pull traefik@sha256:b40cdb058cc3da41da45170423554e2d93bdaa5895ff65ae9974ea6ce8b7267f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.9 MB (51868650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06d32571d28699dd9dfe06c221b5e1993e7320fce415e313f04f5cbf518a122`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 22:38:11 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 30 Jun 2026 22:44:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.22/traefik_v3.6.22_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 30 Jun 2026 22:44:11 GMT
COPY entrypoint.sh / # buildkit
# Tue, 30 Jun 2026 22:44:11 GMT
EXPOSE map[80/tcp:{}]
# Tue, 30 Jun 2026 22:44:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Jun 2026 22:44:11 GMT
CMD ["traefik"]
# Tue, 30 Jun 2026 22:44:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.22 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af5c7841e766867cb943ce3b39b7273fc9c7ca36e3753ea1db463aadd353889e`  
		Last Modified: Tue, 30 Jun 2026 22:43:22 GMT  
		Size: 409.4 KB (409433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d242c35ae21005b877e2fe00c5dd46376adbacabaa377b83c070d5b0093e09e2`  
		Last Modified: Tue, 30 Jun 2026 22:49:01 GMT  
		Size: 47.9 MB (47884490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8af388dff2de6e5d7a845638645fc3f97bef9065aa6e0976b766deab0f44a8c`  
		Last Modified: Tue, 30 Jun 2026 22:48:54 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:595c463aea0858184161f7022979ae3bdf18e0f6b144db606cde61325d96b725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.4 KB (833377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30c06f59949a5b782e9aa3337a78bf27401490b5b5dbb7b31894b5eaf783550`

```dockerfile
```

-	Layers:
	-	`sha256:14abd3add953bcb11f1b077b8bd97b658681b4e0b4e38dd0158c4842b08c96f1`  
		Last Modified: Tue, 30 Jun 2026 22:48:54 GMT  
		Size: 821.3 KB (821317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bf413a4af6842aeca6c172f9290440a8ba116d6a2d88d49f8f76880ca1de1b0`  
		Last Modified: Tue, 30 Jun 2026 22:48:53 GMT  
		Size: 12.1 KB (12060 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:ramequin` - linux; s390x

```console
$ docker pull traefik@sha256:01e467849d70c3b7ae7fe7f82c4578b3a0ab2e29c7d8f6232763a12599cb4b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.9 MB (51850532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcaad582ccaae879fa560ac1e8bc5a19d8f1f8263d54300c87a7df0f59f59848`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 20:35:59 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 30 Jun 2026 20:36:05 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.22/traefik_v3.6.22_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 30 Jun 2026 20:36:06 GMT
COPY entrypoint.sh / # buildkit
# Tue, 30 Jun 2026 20:36:06 GMT
EXPOSE map[80/tcp:{}]
# Tue, 30 Jun 2026 20:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Jun 2026 20:36:06 GMT
CMD ["traefik"]
# Tue, 30 Jun 2026 20:36:06 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.22 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3452b242867f74fd31e3ff3ebfe2be7befbfc8fcffa2591ce0b59553fe58aac2`  
		Last Modified: Tue, 30 Jun 2026 20:37:09 GMT  
		Size: 410.3 KB (410272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412a80a20ec6890913d928ae06ea496ed2391017410fa45fd1bd5ef389406217`  
		Last Modified: Tue, 30 Jun 2026 20:37:12 GMT  
		Size: 47.7 MB (47730571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2407ab6de74e526efbdb9fe5215e8e6479cfd9e772f3f94ab56386604827d53`  
		Last Modified: Tue, 30 Jun 2026 20:37:10 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:8586682d1e968487cca8d604c2255812fe8afbeba98f88d84a881aa75e9e417b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.3 KB (833287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f69edc78b6bc5d97cc5b85ae8544f73252e98c048acd1013da3cc289427b30`

```dockerfile
```

-	Layers:
	-	`sha256:d29ba053be617e44d920a6d714b02909a7be0fdc9beba9985bcff1aad6da16b7`  
		Last Modified: Tue, 30 Jun 2026 20:37:10 GMT  
		Size: 821.3 KB (821279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08e19a7687725e22a1686a2dabfa7135a3e3303274d235f9d0f2a3d5dfe888fc`  
		Last Modified: Tue, 30 Jun 2026 20:37:11 GMT  
		Size: 12.0 KB (12008 bytes)  
		MIME: application/vnd.in-toto+json
