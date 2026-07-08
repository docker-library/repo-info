## `traefik:ramequin`

```console
$ docker pull traefik@sha256:2d0e69c827581179f928704e7e7be68d906133b37e31d0e3e3f79745d0867e21
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
$ docker pull traefik@sha256:5bb4874e6ed29907a6d7a3bff6704c7e31fd5c5d7cf557ef7ff24296ec76f150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49555066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a1d834ed38003b48708d2154afef424b6593ff597a44e834a573ce39f2b8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 17:46:42 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:46:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.23/traefik_v3.6.23_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:46:45 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:46:45 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:46:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:46:45 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:46:45 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.23 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408d11fc5eb6ff135871b4c8e03d4744db1bef2af263808fa78bde9e9792e60b`  
		Last Modified: Wed, 08 Jul 2026 17:47:10 GMT  
		Size: 412.5 KB (412453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac896646e2d723ed095f6b91fd2200291885962fd16025906d8f11891c2ffd0`  
		Last Modified: Wed, 08 Jul 2026 17:47:11 GMT  
		Size: 45.0 MB (44959208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da5e629777cc9721b12836ddc589c74708352178c90d3e1a86ad821510a8e24`  
		Last Modified: Wed, 08 Jul 2026 17:47:10 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:19f79c70efebb931fe56d18bc48670cd7c16f97a1347ba15e2847427622f2db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.5 KB (833488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9213c66da04c61d0c511d0bc046733c48e9aedba7f2b9d459cce7ad7cc32157e`

```dockerfile
```

-	Layers:
	-	`sha256:733fa495f724703b561a2ca62410c50dd499511dbd715e385d00f80f603f276a`  
		Last Modified: Wed, 08 Jul 2026 17:47:10 GMT  
		Size: 821.3 KB (821348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23118ee183bad49656cd4606b19f1e5c9829d3b8edf8ac8f8cdb73880b5d23b1`  
		Last Modified: Wed, 08 Jul 2026 17:47:10 GMT  
		Size: 12.1 KB (12140 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:ramequin` - linux; ppc64le

```console
$ docker pull traefik@sha256:1b6774f0ef4062fd7051409ea6bff0ecce12c4d72cb5f132870486926e098223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47783611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8344b42f5fbd83fe4cf581fa04c98de41effaa2fcaf347d2254fa57eb1d09e73`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 20:35:41 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:24:30 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.23/traefik_v3.6.23_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:24:31 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:24:31 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:24:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:24:31 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:24:31 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.23 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:2f456e810a58885a281984426ae1677c573d8ec5311b17c07988794a81e358ac`  
		Last Modified: Wed, 08 Jul 2026 17:25:25 GMT  
		Size: 43.6 MB (43556842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb38e7785baad2f007718055034345f8cb651f535bf71753ea6c1fc8be59dbe1`  
		Last Modified: Wed, 08 Jul 2026 17:25:23 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:2ca05de68d8e12e45f4b4d6b8020c5286f513f59e2b47e4bd67f789f8a575879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.4 KB (833379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63f7d04a4325d412e376946fee7226ff936871b86db5b68adf79bb0b55bccb8`

```dockerfile
```

-	Layers:
	-	`sha256:9a4f6adeee2ec2b753af8adc1fdd72c4fff035726cd45ae44de51ce25da96759`  
		Last Modified: Wed, 08 Jul 2026 17:25:23 GMT  
		Size: 821.3 KB (821319 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9677e3caf18ffb88d5d01e728d565adbd24cb4ba454e61aa286eeaa81c69643c`  
		Last Modified: Wed, 08 Jul 2026 17:25:23 GMT  
		Size: 12.1 KB (12060 bytes)  
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
$ docker pull traefik@sha256:935b9bf63c01e417340bedd5f007c6d033a0dad37c90f2df66f72c7bb88248fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52477482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c63c8f8c04f11e345779e1c4a73f0a7f8c43b9926c078ab2d58b4141e6b2f1b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 20:35:59 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:20:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.6.23/traefik_v3.6.23_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:20:27 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:20:27 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:20:27 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:20:27 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.6.23 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:1247c180f59b16f77b18635858756c514e450363431d5ce2614c8453644935e8`  
		Last Modified: Wed, 08 Jul 2026 17:21:34 GMT  
		Size: 48.4 MB (48357521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf2a5421338354c2284ec3c31e7d86c2afced05fd3802c9f2490a7278618c28`  
		Last Modified: Wed, 08 Jul 2026 17:21:32 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:ramequin` - unknown; unknown

```console
$ docker pull traefik@sha256:1a92e6f126220c40b391c55a4a0e18fc0854cacea1760645291052ac6e307e54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **833.3 KB (833285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80ae89e604d39a54b3e897c99c2ffcd1b852c3caef2942ec8a9cc3833d0944f2`

```dockerfile
```

-	Layers:
	-	`sha256:0b52ee3e36052288d8a6d885b802702cf27eb3602370315e839f28e26bcc656b`  
		Last Modified: Wed, 08 Jul 2026 17:21:33 GMT  
		Size: 821.3 KB (821277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28c6540e4c29a20583fbe7763b510d70573119cd47f518278f49430874a74795`  
		Last Modified: Wed, 08 Jul 2026 17:21:33 GMT  
		Size: 12.0 KB (12008 bytes)  
		MIME: application/vnd.in-toto+json
