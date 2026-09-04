## `traefik:latest`

```console
$ docker pull traefik@sha256:f86a2cab1b5c649070c49f883c743dd32d8485a56e3368c5f93b9e91f1e91259
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
$ docker pull traefik@sha256:96780238b1bbda5a9bb997f4307ce69e798ad1cf6eb7f2dcc0a440823467d199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55198450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d3f28abf1469b03faff610614e7c3699bf001b8c4e8b2079d059673d2f1bef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 19:14:27 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 04 Sep 2026 19:14:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 04 Sep 2026 19:14:29 GMT
COPY entrypoint.sh / # buildkit
# Fri, 04 Sep 2026 19:14:29 GMT
EXPOSE map[80/tcp:{}]
# Fri, 04 Sep 2026 19:14:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Sep 2026 19:14:29 GMT
CMD ["traefik"]
# Fri, 04 Sep 2026 19:14:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2c07c2457261f12b89e98e4ca828f7f8d83d38ed9bb96c94a03eb347ff5b39`  
		Last Modified: Fri, 04 Sep 2026 19:14:54 GMT  
		Size: 408.1 KB (408097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c2e17c3837502b04279ede188e0df5c33f16a582dcc3f563c66be0e9e93f96`  
		Last Modified: Fri, 04 Sep 2026 19:14:56 GMT  
		Size: 50.9 MB (50943593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5904896ac7557f158b6bc65b5a9a4cc20fcd84d7f1d3680509f9c2701495f7`  
		Last Modified: Fri, 04 Sep 2026 19:14:54 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:5dd3615c21a75205a1b446b68cdcee090e71664a08115c5fa442a5f90026ee36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **841.6 KB (841572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08fa199d1ab346f946156a398ac42f61ef022049ca366a99c6877f9711cfbbea`

```dockerfile
```

-	Layers:
	-	`sha256:4a93e422d9fa62933ec8388fa26371e427f2fc7ec3edf403c4b81153cd09dd8b`  
		Last Modified: Fri, 04 Sep 2026 19:14:54 GMT  
		Size: 828.7 KB (828683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44f91c1f36a7ef684b986b54dae40f203e0e6bc73762385be7aac946e65e02a7`  
		Last Modified: Fri, 04 Sep 2026 19:14:54 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:470f122a08000b023b88ef69d2f9088b5416345bf284c7064a7e1509fcaea224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50476654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c9aebdaacab450598b09a5980d20c29f4ba616597c70813db42c4af3bd5016`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 19:13:51 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 04 Sep 2026 19:13:55 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 04 Sep 2026 19:13:55 GMT
COPY entrypoint.sh / # buildkit
# Fri, 04 Sep 2026 19:13:55 GMT
EXPOSE map[80/tcp:{}]
# Fri, 04 Sep 2026 19:13:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Sep 2026 19:13:55 GMT
CMD ["traefik"]
# Fri, 04 Sep 2026 19:13:55 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef27c389f74e6e2b142c082f10ff84a2972fb60ccddf06cfa07e33b96f1bbd6`  
		Last Modified: Fri, 04 Sep 2026 19:14:03 GMT  
		Size: 410.0 KB (409957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d73a09791fd41b30d499a1ca34781209c9d198c904b0497a960d44e35a070e`  
		Last Modified: Fri, 04 Sep 2026 19:14:04 GMT  
		Size: 46.5 MB (46512877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4a7e216bfc8947a3109e6164c12ecd27a9b362a6e6622b236dc3aba6571640`  
		Last Modified: Fri, 04 Sep 2026 19:14:03 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:d2466d010f079abcbad9557014f825ad6fd07175ba822e701ae63f03371eeef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a113e23567ee5fd1b8318ce289d97c4a2a35c03c668e6ecbadd9393708b3a53`

```dockerfile
```

-	Layers:
	-	`sha256:fedc91645b84bab73c7886c3c1f19fb6d83acf88559fb8f9e07bb089e832580a`  
		Last Modified: Fri, 04 Sep 2026 19:14:03 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:444bb54c1f7ebe5fac94d1c40f02b48c08dc005a92fc65ca29c1c75991d16baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50001851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8931bb3e2602443324bd3bac4192af9652d6251482d17adda804113e109e588f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 19:14:54 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 04 Sep 2026 19:14:57 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 04 Sep 2026 19:14:57 GMT
COPY entrypoint.sh / # buildkit
# Fri, 04 Sep 2026 19:14:57 GMT
EXPOSE map[80/tcp:{}]
# Fri, 04 Sep 2026 19:14:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Sep 2026 19:14:57 GMT
CMD ["traefik"]
# Fri, 04 Sep 2026 19:14:57 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec47f76d8c690187fd3b34b4e78dca602e1dea62a6fa098201d451493a19a117`  
		Last Modified: Fri, 04 Sep 2026 19:15:21 GMT  
		Size: 411.7 KB (411720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9709a188527f73773793cad55679510287c7d63fd4a77c47bf01823e2c16ad`  
		Last Modified: Fri, 04 Sep 2026 19:15:23 GMT  
		Size: 45.4 MB (45406724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c42e700721c064d4a773766101bcaf4fdb6a878d263da1f8a89fdc8e00c787`  
		Last Modified: Fri, 04 Sep 2026 19:15:21 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:0d72faaea526fa4d0fabc814d7e7c5ca44de73be0ad3db107256c9e51c2732bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **841.2 KB (841192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478d8cd793eca2fffe8912a0263f7faf65e5df083c06a46f8e33204e7ae5fdb9`

```dockerfile
```

-	Layers:
	-	`sha256:06d1913372dbdcfb94faa8641cc1ce3e96121f5180448c370618feb7a442dfd4`  
		Last Modified: Fri, 04 Sep 2026 19:15:21 GMT  
		Size: 828.1 KB (828137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a29ee21de81b3ad46bc411910d4b0a6c76ec71045d07dc0dbbb49f9fbce5a762`  
		Last Modified: Fri, 04 Sep 2026 19:15:21 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:3601787ad2c045e816240ca311e6604b5d9ee6011d9027f338005e7eb7932a1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48302141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b14e8e990d362b149f4618ec2abce87b46aec622e00dea230c5aa5933d139bef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 19:13:24 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
COPY entrypoint.sh / # buildkit
# Fri, 04 Sep 2026 19:13:29 GMT
EXPOSE map[80/tcp:{}]
# Fri, 04 Sep 2026 19:13:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Sep 2026 19:13:29 GMT
CMD ["traefik"]
# Fri, 04 Sep 2026 19:13:29 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d946c85d47826efd785d80ec05c0258144405516782adfefaa381302afe57a`  
		Last Modified: Fri, 04 Sep 2026 19:14:20 GMT  
		Size: 412.3 KB (412293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81818692eb16439fd302d49dc5e97591857c169f70e9f135389c5985eaaad76f`  
		Last Modified: Fri, 04 Sep 2026 19:14:22 GMT  
		Size: 44.1 MB (44076079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7d02d1d73de9847d2592d9cf597d88ee6d162c27d4f9f99df7b00891f0d5512`  
		Last Modified: Fri, 04 Sep 2026 19:14:20 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:ba1d6516c55bfc0e8367f6b7c099cf4af5cba9bf00187d1f233710f32974db9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **841.0 KB (841049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a41677e7b572a4a0609a6bbf49593275667b3645046b96c3478b6b5d5eabbc2`

```dockerfile
```

-	Layers:
	-	`sha256:a4fcb86796040142b1eac0655bb8edd8ac5d74368c911d8b06f962c52c04ac67`  
		Last Modified: Fri, 04 Sep 2026 19:14:20 GMT  
		Size: 828.1 KB (828090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a6969e16d5f1e97eb7a34603ab5566bd1586f7f59360d649ec3f569c180b547`  
		Last Modified: Fri, 04 Sep 2026 19:14:20 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:606f3d7f26c82b6c95b2dda20cfb26e5797c3c32b4102a65825450c4d28064a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52778966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70bab59dfbe133c6708548fe8c8a7b102be8da1215a8f21273d321173a93951b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 19:13:35 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 04 Sep 2026 19:13:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 04 Sep 2026 19:13:47 GMT
COPY entrypoint.sh / # buildkit
# Fri, 04 Sep 2026 19:13:47 GMT
EXPOSE map[80/tcp:{}]
# Fri, 04 Sep 2026 19:13:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Sep 2026 19:13:47 GMT
CMD ["traefik"]
# Fri, 04 Sep 2026 19:13:47 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a49b9c39cfe60ff0a0077e4d6ca16a22802d9f4fea11661078e3fcb1c6f28f`  
		Last Modified: Fri, 04 Sep 2026 19:19:11 GMT  
		Size: 408.7 KB (408653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de141bde72d5a31c579907b570af41683656b0e87a51835d51e4db12dccdc3df`  
		Last Modified: Fri, 04 Sep 2026 19:19:27 GMT  
		Size: 48.8 MB (48795585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e1424f5df780b7d8d7181f88de5b4f07cfaabbb06eb588c389f15505ee330b`  
		Last Modified: Fri, 04 Sep 2026 19:19:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:f6483f5a126def5a4b5320deb687972c07c5514a5d80b618496abb240724fe2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **841.0 KB (841044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235b7cea2b8b6ac4c71b248a159b756c7c5ff3a21aa8f72f08636a9741aa77f1`

```dockerfile
```

-	Layers:
	-	`sha256:ffebfd28c7533f3ff9a8febbeeddae2331209e5eb36ac4a6c44b637e97b55649`  
		Last Modified: Fri, 04 Sep 2026 19:19:11 GMT  
		Size: 828.1 KB (828086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba10f3a968eae645f6ca0b8b52d73fc21a3ca5098c5b5f110e057cc2536834c7`  
		Last Modified: Fri, 04 Sep 2026 19:19:11 GMT  
		Size: 13.0 KB (12958 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:826915f72affec8bf02771f8e2e1207777fa9578db6705e63c2fcf4a9ab7f89c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53211142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:931b247ffe05d5ae49a26cd65e350a9518736ecf888c7b7b4273541ced22527c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Wed, 26 Aug 2026 17:36:17 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.13/traefik_v3.7.13_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
COPY entrypoint.sh / # buildkit
# Fri, 04 Sep 2026 19:13:14 GMT
EXPOSE map[80/tcp:{}]
# Fri, 04 Sep 2026 19:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Sep 2026 19:13:14 GMT
CMD ["traefik"]
# Fri, 04 Sep 2026 19:13:14 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.13 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45432bdd4d87b2daf5cd223c84e7af59ca49314cf320c4e892f4eca02d170ece`  
		Last Modified: Wed, 26 Aug 2026 17:37:47 GMT  
		Size: 409.5 KB (409506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b6f99d7b2ea08e35486a51bd8a22bfcc03ae2b0c71dfa5945bc58d8b2b6a70`  
		Last Modified: Fri, 04 Sep 2026 19:14:04 GMT  
		Size: 49.1 MB (49091949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5923fd89ae4cdc72ee269620bfad2d18f8bd9ad9ad41bbfa5df4976d79468191`  
		Last Modified: Fri, 04 Sep 2026 19:14:03 GMT  
		Size: 367.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:c79fc791bdddd0956033d3f108dff3a4de8f6f724090eb8f73696db46c1e5ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **840.9 KB (840919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c7b4a55c7a0228d511556640eda3f4b37c83e75d7c5b11bf2ef016d294b08f`

```dockerfile
```

-	Layers:
	-	`sha256:61a1f69fa9d351a11fb865ad25506b43edb210ca07db850fdc6b97ae4ba22451`  
		Last Modified: Fri, 04 Sep 2026 19:14:03 GMT  
		Size: 828.0 KB (828030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0846ef95cceb23e0f1b77bf29323477089b9b172e98a4c1a3ed41db72425f49`  
		Last Modified: Fri, 04 Sep 2026 19:14:03 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
