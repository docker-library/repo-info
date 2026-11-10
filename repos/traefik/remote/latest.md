## `traefik:latest`

```console
$ docker pull traefik@sha256:180aa0fae8ca0893336363635bb058303846c2d34819354ed9a1ab46c8167c2c
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
$ docker pull traefik@sha256:5a73655d3dc4a9bb9c485220363337d391bea46cddb0e919b7867187000949e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55247446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b911633470b7a9c1d4895300715a574e23c0ef875a2f5a93ef507cc4a8ddda2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:39:44 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 10 Nov 2026 21:39:47 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.18/traefik_v3.7.18_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 10 Nov 2026 21:39:47 GMT
COPY entrypoint.sh / # buildkit
# Tue, 10 Nov 2026 21:39:47 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:39:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Nov 2026 21:39:47 GMT
CMD ["traefik"]
# Tue, 10 Nov 2026 21:39:47 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.18 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3653f3658e0bd40a921feb7c4650c49a1ae5b3890b426aaf217422736db6e4`  
		Last Modified: Tue, 10 Nov 2026 21:40:08 GMT  
		Size: 412.0 KB (411995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5b2d6848f4ed0d0cc04a8e6e66efb9c4b7d459ca1f7696aa52dd414c82de74`  
		Last Modified: Tue, 10 Nov 2026 21:40:10 GMT  
		Size: 51.0 MB (50981408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdb4162f30afc4cc7ab7bd84507f0b836cecf8de21501f1ed7a17c0374a0375`  
		Last Modified: Tue, 10 Nov 2026 21:40:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:4f4e3c389bbea4a2519fc84383798d2c97b6a81745c8e1c5a198c1bf3345fb66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.8 KB (842758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a3c40fc8a10b360a6f1baa08dc5c87cd0c2313b4b3d71be861a89ca5dc07dd1`

```dockerfile
```

-	Layers:
	-	`sha256:baef4cfbaafb9f7dfadbf08fad9522a3bf4737569c087fbfe150a9479fec646b`  
		Last Modified: Tue, 10 Nov 2026 21:40:08 GMT  
		Size: 829.9 KB (829869 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dda0db7d0d835c467894884d9b82d14144d0ebd746081f52a4b8f7defbb865f3`  
		Last Modified: Tue, 10 Nov 2026 21:40:08 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:d0698900d7afd33a638eb2775de720572b6383c98ea090e75b34b3fe0fd1c114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50662875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a053f6c9279e84f7b915ba61ebef82b890c3af277886ac42b98e6a45f283cc06`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:47:35 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 10 Nov 2026 21:47:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.18/traefik_v3.7.18_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 10 Nov 2026 21:47:38 GMT
COPY entrypoint.sh / # buildkit
# Tue, 10 Nov 2026 21:47:38 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:47:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Nov 2026 21:47:38 GMT
CMD ["traefik"]
# Tue, 10 Nov 2026 21:47:38 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.18 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a41f4d63c5a562ac3528e6712ca938b3b7574c1f811548347cbac245360e863`  
		Last Modified: Tue, 10 Nov 2026 21:47:46 GMT  
		Size: 413.7 KB (413732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14fe2304a8909c6e84ab2cf820683d05d7b5b19f6cd4bf5f6389761ee0aae5f`  
		Last Modified: Tue, 10 Nov 2026 21:47:47 GMT  
		Size: 46.7 MB (46690373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fbc81d876f00ddb635191966d38afb0838cbd12338165ee44bd7ca88e6817`  
		Last Modified: Tue, 10 Nov 2026 21:47:46 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:22d0e124a5aa963693fa9b8692209de54ba449887fbf2895e5d8ffa83b05fc57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b083e73498699b45ed068361a598fb32f63cd58617fae62d65ace98e6f92c642`

```dockerfile
```

-	Layers:
	-	`sha256:8d0541124e966c652a9c9623186acbedc1ff4ea5dc5c291195483a298ae64b07`  
		Last Modified: Tue, 10 Nov 2026 21:47:46 GMT  
		Size: 12.8 KB (12798 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:f1dbe328c1d1ad79063c156bd16684679e16133d0744176ba1d0485e72ada915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49953752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2332932900807102e6f424d609924da0269406aaabb6c3b06f6fbe215e58ff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:41:30 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 10 Nov 2026 21:41:33 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.18/traefik_v3.7.18_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 10 Nov 2026 21:41:33 GMT
COPY entrypoint.sh / # buildkit
# Tue, 10 Nov 2026 21:41:33 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:41:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Nov 2026 21:41:33 GMT
CMD ["traefik"]
# Tue, 10 Nov 2026 21:41:33 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.18 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552d3a1c185fa4c4d3916d60633a14f56c4002971ee1463d05f95a78571f029f`  
		Last Modified: Tue, 10 Nov 2026 21:41:54 GMT  
		Size: 415.6 KB (415555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31734c504a8e8c0e2a12947f6518a2f13a2331db45bd6f5b0734a9803d4769a`  
		Last Modified: Tue, 10 Nov 2026 21:41:55 GMT  
		Size: 45.3 MB (45347233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6a0bf0812d6fce7a929ceb6f3c8c3265cbb49c09cb6082c7796e7f2ae3b61a`  
		Last Modified: Tue, 10 Nov 2026 21:41:54 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:2813dab04c565bba82c523795f35339071b3431d96acdb28f3e46b74a0ac01f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.4 KB (842379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0a6fa3578366630d83f79d63a8f49f09e38329b215a3d03ef04da288a37219`

```dockerfile
```

-	Layers:
	-	`sha256:5bb60c8d946f8a1b2ce9d491dd89fb4f58b6b8bea01197e5f76afa15cda362ad`  
		Last Modified: Tue, 10 Nov 2026 21:41:54 GMT  
		Size: 829.3 KB (829323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b20ac3d80ddeaf3dff09ca10f63baa702bf564e97e9ef06f31c0e2724712d1a2`  
		Last Modified: Tue, 10 Nov 2026 21:41:54 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:8e5c24c2d273b8cf8c572a3ac190455fe99a0a1e097e3db15cb96dccdd2755f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48275672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f617ee7df62551ccfd84e22c18744160ab72b1ca5d5d901535e9b48a8f1f0bec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:30 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 23:39:11 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 23:39:11 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 23:39:11 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 23:39:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 23:39:11 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 23:39:11 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ddb339a25aee19cd0de0fbeea29538765149acdf22d74d0f73d059e32d3dd7`  
		Last Modified: Thu, 05 Nov 2026 23:39:22 GMT  
		Size: 416.0 KB (416038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf51b704e41ef71b75cac37aa7c1c169637d59e57f0ba5fa4766e62b95cb672`  
		Last Modified: Thu, 05 Nov 2026 23:39:57 GMT  
		Size: 44.0 MB (44037345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe316730f8c26082c4d054cb82e6c2773413ef741a628fd0e778db3521eb4b34`  
		Last Modified: Thu, 05 Nov 2026 23:39:55 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:d6a08161f2cf7f2cf42880df56a1c16e74c6537c1aea1fcd82a41296fb373725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.0 KB (843036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d239f5da5697d48c2c16960666ee2a27eb5eda9dcd620fdaea5f226428fca7f5`

```dockerfile
```

-	Layers:
	-	`sha256:247a326440308383dd9f9402f8413244fab7c43093e8dc734fdc4a0bb61a5755`  
		Last Modified: Thu, 05 Nov 2026 23:39:55 GMT  
		Size: 830.1 KB (830077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3c4b412a18559d92fc5fea29399e5bdb1059a25a966622b6b79b37ffa0d7a`  
		Last Modified: Thu, 05 Nov 2026 23:39:55 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:c8d73c9b656effa97070e258b26e3723a328ca5b8fbd1874d6bf9630469270fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52919164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba185cc06c1f00e5767f25e687faa006c41bb261248e50387d5ec3418e4aaf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 02:38:49 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 03 Nov 2026 02:44:06 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 03 Nov 2026 02:44:06 GMT
COPY entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 02:44:06 GMT
EXPOSE map[80/tcp:{}]
# Tue, 03 Nov 2026 02:44:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 02:44:06 GMT
CMD ["traefik"]
# Tue, 03 Nov 2026 02:44:06 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d195904108c4681dfaee3eb6927da17c789c8c06e9f508aa53d7e59651289`  
		Last Modified: Tue, 03 Nov 2026 02:43:18 GMT  
		Size: 412.5 KB (412544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21e2eb96fca6ab26658a6c12b132bdea323a5a579c40968800a7282651abe975`  
		Last Modified: Tue, 03 Nov 2026 02:48:25 GMT  
		Size: 48.9 MB (48925604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338482f781ef47d37428df20fa5e3ef2439981004c969ad7b89f0e1cc76be9b8`  
		Last Modified: Tue, 03 Nov 2026 02:48:18 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:8436fd172beb837b7aec2cd8af389f9d5ac20a5de2a90c11e99f48e01d966e7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.0 KB (843031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6c4067cd8f87154e59773177afcd2dc3d89b2231c130c7ff586b403cdb2acbd`

```dockerfile
```

-	Layers:
	-	`sha256:df506404bd30a25d844a2723842bf24deb065b6d1556c038e91df21d3ceddac4`  
		Last Modified: Tue, 03 Nov 2026 02:48:18 GMT  
		Size: 830.1 KB (830073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0bd61157f67a2125a207a59966776263cc4952ec90cdfe59582dedee7327074`  
		Last Modified: Tue, 03 Nov 2026 02:48:17 GMT  
		Size: 13.0 KB (12958 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:aca21a198423dff438dcc35e0fee6b208372e15fe30f7ec2e335c53c85eeac4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53190667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee288f47d7f088229b655b800d52ee619fd2ee4309504779fdbe5bd36db94523`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:18 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.17/traefik_v3.7.17_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:21 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:21 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 19:14:21 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.17 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aec81ffd203dd901e0e43624c5cee00ea8e833cbd01df0351494ca4a24d689a`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 413.4 KB (413400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5dd7984353c7408b1b6eb56ab937c8341dc53027fb153da04d73e217d80abc1`  
		Last Modified: Thu, 05 Nov 2026 19:15:09 GMT  
		Size: 49.1 MB (49056228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f78bfa8538435c85ae8584585b4b0189c2051497cdc68e473286a81d2c4fca`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:efa1b4c8b7ed10f4f2207da1a549bc0f979c298a02b0902a67ad26dd43f4d3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.9 KB (842906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9582883c6f24dd7396473803ce44e7d7869131123e7962c146ca98105dda62f5`

```dockerfile
```

-	Layers:
	-	`sha256:d209b896094fb4a781f9318a7af32166817e3b69f860bee38f125f11a5d8a35a`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 830.0 KB (830017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02fc19f584ecd84a08ee077730ba63886782336d8c8d12d59da69cbc03b15d49`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
