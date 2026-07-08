## `traefik:latest`

```console
$ docker pull traefik@sha256:6608e0f4b12983a2e9874f5dac86105bd449b59067b6806350a030216aebf393
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

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:c84e8fdba3f4d1c0e71e6e3b4bf956ba1c4a72c9e2ee091e571ef3851bfa9e2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54493081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91c2b237b8be588df24c8c09bfc0433b4a87f0bfd6913d6a08ce63714f8e1ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 17:05:03 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:05:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.7/traefik_v3.7.7_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:05:06 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:05:06 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:05:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:05:06 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:05:06 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.7 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f412e092cc77ea44fc3b62dfd55b8af6b3d5de6d749c2ba2abeb004a544957c4`  
		Last Modified: Wed, 08 Jul 2026 17:05:28 GMT  
		Size: 408.8 KB (408765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:561b60a7a332623c3ff1a1a287afc3bb9c15fa4e4c466727488fb5c764c4fdfa`  
		Last Modified: Wed, 08 Jul 2026 17:05:30 GMT  
		Size: 50.2 MB (50237555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790b9a0631257aefc74484f59f3032b9cf1fb58a6a98a4c78433cf6fc1543efc`  
		Last Modified: Wed, 08 Jul 2026 17:05:28 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:ddc38729436644a939de8e57f6cdb736ecc19f49121def6771cd0b859acb444f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.4 KB (837358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dde08ac2c2de023394846566f4a084ba37ead9e89f5ad57f15ff41fa66d8cfd`

```dockerfile
```

-	Layers:
	-	`sha256:2bf7668ee91e35ccc3033fb1b2e17149ff0030e6ccd712403e1aadc0f839caa8`  
		Last Modified: Wed, 08 Jul 2026 17:05:28 GMT  
		Size: 824.5 KB (824480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2777e68898f3b1f5458dec06230f18778b05359197285cff4f6297060b5a407`  
		Last Modified: Wed, 08 Jul 2026 17:05:28 GMT  
		Size: 12.9 KB (12878 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:45b12a7935e7b6b68fe8f3820c240ce66ef1d49f7d0d86d708f9d351125709f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49735424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae152c38d2475d9390705e1095125a4b3c0c9aba6e85e69927cfeaf795128751`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 17:04:32 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:04:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.7/traefik_v3.7.7_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:04:35 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:04:35 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:04:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:04:35 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:04:35 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.7 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b68f9315104547d39458fee080045420f29e07cba4d14561dc263a193626823`  
		Last Modified: Wed, 08 Jul 2026 17:04:44 GMT  
		Size: 410.6 KB (410554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1fa68837bef96469f4848cb4aef26dc76ebf5e81fa88444d3845c317a8d7ac`  
		Last Modified: Wed, 08 Jul 2026 17:04:45 GMT  
		Size: 45.8 MB (45771051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5f91440d8c3cce5b85e35bac5278400830df9ed235f6f15db5715485e2310b`  
		Last Modified: Wed, 08 Jul 2026 17:04:36 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:651825e935002c13e06a65b11b5654c689e7517b6dca07bd628598f30aa85950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e444552e07d72d9e83829904e0c1b331e7331485360d77836949e62f9b96dbb`

```dockerfile
```

-	Layers:
	-	`sha256:c5670c47bc77f8cce9825a596757905de793d8da0004a116ee908bb20d84b6b2`  
		Last Modified: Wed, 08 Jul 2026 17:04:44 GMT  
		Size: 12.8 KB (12789 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:fec476ca420b02096bd8162eff368f4b625bb4a206bf28e996d6a2e9a581ea80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49353003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a70d0942f1d5a965104df95daf516bcc73c1a4b7e73c3c71e725ad35f535054`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 08 Jul 2026 17:46:37 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:46:39 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.7/traefik_v3.7.7_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:46:39 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:46:39 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:46:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:46:39 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:46:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.7 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f71270680253369369b52346732f935c7ab17c288d28a6a6a4650e464815f8`  
		Last Modified: Wed, 08 Jul 2026 17:47:03 GMT  
		Size: 412.5 KB (412458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b073a4bbd4258c786a0dbc69e80d6a2127aef6012b204dac7ac15307f252d8`  
		Last Modified: Wed, 08 Jul 2026 17:47:05 GMT  
		Size: 44.8 MB (44757138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74e3eee0fe54d95416050285de23833ab9e36bc48b80e12496942ed7d57ef97`  
		Last Modified: Wed, 08 Jul 2026 17:47:03 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:4efc339f173bd4d0adf089ec98269caa7b6a8b96586b4f384e53bf08e14afdd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.0 KB (836980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9672743ff6cee8bb86a06b92c69a0c1beb87c761391b667da3d340959ed7907e`

```dockerfile
```

-	Layers:
	-	`sha256:2a453bf85a95dce72e132a41d84d62c975cda86aef633768072c7467b164c147`  
		Last Modified: Wed, 08 Jul 2026 17:47:03 GMT  
		Size: 823.9 KB (823934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eb21ebc95417d16b36076d368ae94e28774f0e6f8d530912290fb88a70beb5c`  
		Last Modified: Wed, 08 Jul 2026 17:47:03 GMT  
		Size: 13.0 KB (13046 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:e9f6c30f6219e983dbf7ba3540bd047a53a5ad05302386fb90653086b5928e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47590551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a3571104d5a1f59473695d27eeb0d575cc6f22f77607f87f41912eb17f1afce`
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
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.7/traefik_v3.7.7_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:24:31 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:24:31 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:24:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:24:31 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:24:31 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.7 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:740fcee3158755e2fcd5b2f18d07e6995a0c2d5781e7a87a8067f18ffce71bf2`  
		Last Modified: Wed, 08 Jul 2026 17:25:25 GMT  
		Size: 43.4 MB (43363782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1bad69ef66f3d933c063d1a6fcb31fde38b377f0caaa15480a0fd568a0418e`  
		Last Modified: Wed, 08 Jul 2026 17:25:23 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:7f601767a76f12ae049ca53627c4abe2df9ca28c905ca47c52d3678909ba2e79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **836.8 KB (836836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e093defd0b3a48fe1576a2fab575f21e9ebc0dd6edb547698425a545e41861e`

```dockerfile
```

-	Layers:
	-	`sha256:bd7c404226030637d9616d64560c9d7f68ac3cde941449ee5e1258a2ddc3c7a3`  
		Last Modified: Wed, 08 Jul 2026 17:25:23 GMT  
		Size: 823.9 KB (823887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8939fd208da02da0a588c1c2ca2f6fdc419537af07972f29d31cbf1124710e53`  
		Last Modified: Wed, 08 Jul 2026 17:25:23 GMT  
		Size: 12.9 KB (12949 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:49cd7c6f309ae2ab7c694ddc0125656e15c1ed149ba7c91e009009311a360dcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51660739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6897422b66ec0be0e21f8c3f232262ae46836ab0235dc224a7fa5852a4aa5c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 22:38:11 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 30 Jun 2026 22:38:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.6/traefik_v3.7.6_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 30 Jun 2026 22:38:23 GMT
COPY entrypoint.sh / # buildkit
# Tue, 30 Jun 2026 22:38:23 GMT
EXPOSE map[80/tcp:{}]
# Tue, 30 Jun 2026 22:38:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 30 Jun 2026 22:38:23 GMT
CMD ["traefik"]
# Tue, 30 Jun 2026 22:38:23 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.6 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:4c0330d1a47971d77bfa3b1a4e0d97505ca60083682c42435f4d9aab1bc50081`  
		Last Modified: Tue, 30 Jun 2026 22:43:30 GMT  
		Size: 47.7 MB (47676579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bd3f1c90bcc6c11a1d6a0bc035e83843c4c3738050ae1f7b389ee652a302a4`  
		Last Modified: Tue, 30 Jun 2026 22:43:22 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:10743484e53fab8611b3889d6079028ec152c00e20ead8dc36f5d5e687cd33d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **836.8 KB (836834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19201aa6e98dab2b0c91a3fe6627bf7ad59414a0c35b19d0b13986c56bb87d13`

```dockerfile
```

-	Layers:
	-	`sha256:f870286d783b3ec28d103bf24898995f5655a9d14a38dad782f61b1365279a3a`  
		Last Modified: Tue, 30 Jun 2026 22:43:22 GMT  
		Size: 823.9 KB (823885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5708c9e8e54c2be918c487a3b8d0dfc873a462d5f0cb6baabddfd182897afc4c`  
		Last Modified: Tue, 30 Jun 2026 22:43:22 GMT  
		Size: 12.9 KB (12949 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:20b443c85eb50e2dbb71289a23953183b1179f5c114eb433827ad161f95204f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52247105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:786bc55135b75cf14dfe6520a767df2ded8cfd40d2c9e1887b136fab301e8d79`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 20:35:57 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 08 Jul 2026 17:20:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.7/traefik_v3.7.7_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 08 Jul 2026 17:20:22 GMT
COPY entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 17:20:22 GMT
EXPOSE map[80/tcp:{}]
# Wed, 08 Jul 2026 17:20:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 17:20:22 GMT
CMD ["traefik"]
# Wed, 08 Jul 2026 17:20:22 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.7 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69747e4145e2e6f7be11767bf8f1bbd031265055a048e79ab496a493235ce7a`  
		Last Modified: Tue, 30 Jun 2026 20:37:07 GMT  
		Size: 410.3 KB (410276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239bb743f98cdfb8167811795e72767aa6960d17561930642b120122603fca27`  
		Last Modified: Wed, 08 Jul 2026 17:21:33 GMT  
		Size: 48.1 MB (48127142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92c725bf28fd8b57aa298aebf8da7ff796a1345c97ed68ddaf95226ad93edfb0`  
		Last Modified: Wed, 08 Jul 2026 17:21:31 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:91bf37ba96000cbd5de0569abdd9dadf0011d9dc73e435db9b45b9ba67812667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **836.7 KB (836706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e08ebc38b80162153c9da345463e8bbeb60c09aeca131c63852969fd5eb67b7`

```dockerfile
```

-	Layers:
	-	`sha256:d0d043237ba0e1a70cead1fd21707b21512e933167bfcacca1ae582bf59274e6`  
		Last Modified: Wed, 08 Jul 2026 17:21:31 GMT  
		Size: 823.8 KB (823829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01c43fb42c3a5262a57f193c638e553131acca8f8a1e10d467e6fed646247a9f`  
		Last Modified: Wed, 08 Jul 2026 17:21:31 GMT  
		Size: 12.9 KB (12877 bytes)  
		MIME: application/vnd.in-toto+json
