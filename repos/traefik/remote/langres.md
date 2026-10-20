## `traefik:langres`

```console
$ docker pull traefik@sha256:6d3e069ee484ab1da5adfdda555a75eb9b1545ef09096a0cc7c3043101986a20
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

### `traefik:langres` - linux; amd64

```console
$ docker pull traefik@sha256:c120e0ab66664c7e124e1cd3d3a10a35e3781c578e75892cadd4b9a90e6c7c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55389699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c727a0923245c734552170308b2189c1fd37b6a0820831bc0742ca93a7ffed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 17:56:46 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 20 Oct 2026 17:56:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 20 Oct 2026 17:56:49 GMT
COPY entrypoint.sh / # buildkit
# Tue, 20 Oct 2026 17:56:49 GMT
EXPOSE map[80/tcp:{}]
# Tue, 20 Oct 2026 17:56:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Oct 2026 17:56:49 GMT
CMD ["traefik"]
# Tue, 20 Oct 2026 17:56:49 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57592116314baf06dd86d9a51c7f4e3f95fabdabf780185f26eefad05a38ff27`  
		Last Modified: Tue, 20 Oct 2026 17:57:12 GMT  
		Size: 416.3 KB (416298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35601171ade4e7197cdb224087c45e1415011af7d817fb41ddb4e5fb06b5224`  
		Last Modified: Tue, 20 Oct 2026 17:57:14 GMT  
		Size: 51.1 MB (51123293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544fdefa4fb5c3c3009d28dc1f9e9fb75026ef541d5a9e19f88e9f8c60d4566f`  
		Last Modified: Tue, 20 Oct 2026 17:57:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:3e38380601145b509aab4265d27b94759aa6047c738a76927b8d31c43434edb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.5 KB (844539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeabc8862beffa7374c4431492d658e6e6a98a295a90a71efa2b76a2787339f5`

```dockerfile
```

-	Layers:
	-	`sha256:a375f835ac217bd1cd232aab4b4dd029430c56437289adc420cf0ea2e87791fd`  
		Last Modified: Tue, 20 Oct 2026 17:57:12 GMT  
		Size: 831.6 KB (831650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f67673254cf8e3c0ba274e514974e94305f4588edb0721e1483d038d51c086c`  
		Last Modified: Tue, 20 Oct 2026 17:57:12 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; arm variant v6

```console
$ docker pull traefik@sha256:5694d9ca35d079740d89858a32f374a205dd56af5a64765265800cbcd666f037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50714709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2233df661be7501dbe767a9bb4d1af9de1f91ee42a82d7f1aafb21f823ae5471`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 17:53:30 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 20 Oct 2026 17:53:33 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 20 Oct 2026 17:53:33 GMT
COPY entrypoint.sh / # buildkit
# Tue, 20 Oct 2026 17:53:33 GMT
EXPOSE map[80/tcp:{}]
# Tue, 20 Oct 2026 17:53:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Oct 2026 17:53:33 GMT
CMD ["traefik"]
# Tue, 20 Oct 2026 17:53:33 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58ece14520b39d3459f83f56f517a2865addb128f4a2960d700634fc06b775f`  
		Last Modified: Tue, 20 Oct 2026 17:53:42 GMT  
		Size: 417.6 KB (417556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac7f631e38ad5604cd12f46d24cad146a19dac3c60d586c17faee1af844a3b1`  
		Last Modified: Tue, 20 Oct 2026 17:53:43 GMT  
		Size: 46.7 MB (46741671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9471649c4611c2421d17da491674a37d495489fc3a38956f11babe15bd8ad93`  
		Last Modified: Tue, 20 Oct 2026 17:53:42 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:bf525e28e10ba1db5859bc17b29a32e7ebd844ba5628cc0b738ec71616b2c33e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb79bdf442ab67fc137b5c0ff4f0da9655a8ecd6795c79a31d82439c8a7e32b8`

```dockerfile
```

-	Layers:
	-	`sha256:6ac7aeef79b1d7fbf4cb5c3186b89f05a48982ed4d8d9e7d352643627527474e`  
		Last Modified: Tue, 20 Oct 2026 17:53:42 GMT  
		Size: 12.8 KB (12799 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:98d6d6fac0db234490d87e21e313d98182d392b0142b93157128f1525ce80915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50195184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9300f3c81e25c1588ef2725ce60f3c542e3aaca8d62b4d359af43d3b7c3c04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Tue, 20 Oct 2026 17:58:21 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 20 Oct 2026 17:58:24 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 20 Oct 2026 17:58:24 GMT
COPY entrypoint.sh / # buildkit
# Tue, 20 Oct 2026 17:58:24 GMT
EXPOSE map[80/tcp:{}]
# Tue, 20 Oct 2026 17:58:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Oct 2026 17:58:24 GMT
CMD ["traefik"]
# Tue, 20 Oct 2026 17:58:24 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c92af9ca67a8ac66630ee4547ece4c2e881b65223cd8c79d869f72ddfa50f3`  
		Last Modified: Tue, 20 Oct 2026 17:58:49 GMT  
		Size: 419.1 KB (419118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae1a3a065c115ccb7521c57f490f454891c467175d956444fd510b0c884ac3f`  
		Last Modified: Tue, 20 Oct 2026 17:58:51 GMT  
		Size: 45.6 MB (45588037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3d288db3cda6206cae1129b236e9c0b45b67bdfa6a6aa5454de024bd88aa04`  
		Last Modified: Tue, 20 Oct 2026 17:58:49 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:3b8dfdb5ba1b7b2bc1fc3c1d8efc5b852e8f39b1c85e37ec62b67d8adb686fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.2 KB (844160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acee93b2ec97ddf9ca9501a4c66cb4241c74638607c2c3142c7e07c201af447a`

```dockerfile
```

-	Layers:
	-	`sha256:c4760a3029f5c5ab1af88b44ecd38ae56f9aefdd2be46a570eddd35392a5bc32`  
		Last Modified: Tue, 20 Oct 2026 17:58:49 GMT  
		Size: 831.1 KB (831104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:142035d14d1ad81b9814e9ca0895284423014a4525648ca69a70816b439bbea1`  
		Last Modified: Tue, 20 Oct 2026 17:58:49 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; ppc64le

```console
$ docker pull traefik@sha256:108d772c41f0caa9df6735457794fc48921e92044ef59eedc7ed5e6016949f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48545890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e91ec5978658bc22ad092123feecdbd9b1026be354c05eb2f78ac1c4ceae6131`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Tue, 06 Oct 2026 18:55:39 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 20 Oct 2026 18:01:52 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 20 Oct 2026 18:01:53 GMT
COPY entrypoint.sh / # buildkit
# Tue, 20 Oct 2026 18:01:53 GMT
EXPOSE map[80/tcp:{}]
# Tue, 20 Oct 2026 18:01:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Oct 2026 18:01:53 GMT
CMD ["traefik"]
# Tue, 20 Oct 2026 18:01:53 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d257b36cbf4abc45a24d73f57981ca9acc76bb5af73375751dcecda533b5120c`  
		Last Modified: Tue, 06 Oct 2026 18:57:07 GMT  
		Size: 419.5 KB (419533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c50fd9505a240d50385d6fdf6b3684d24531c3474a5765528787fdfa9031506`  
		Last Modified: Tue, 20 Oct 2026 18:02:49 GMT  
		Size: 44.3 MB (44308511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc59ea21ed5f06fe9800b9da9ed71617936e7f9b5364e604fed106b721d24bb6`  
		Last Modified: Tue, 20 Oct 2026 18:02:47 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:e1476423d99fcd69600a16aa6085f3628692245aa4df3267932efde7215412c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.0 KB (844016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28820d2facade7237256766c0cc34063a654d13a11966492f41eef15da7b6cc8`

```dockerfile
```

-	Layers:
	-	`sha256:66883bc37637bff74e93edbb3a766378f5631078babbe67f92c70b807163961e`  
		Last Modified: Tue, 20 Oct 2026 18:02:47 GMT  
		Size: 831.1 KB (831057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f4a2be27a7cb8859a34f15a6fc5810ab750b7748af827d1ee869b333c70fb4e`  
		Last Modified: Tue, 20 Oct 2026 18:02:47 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; riscv64

```console
$ docker pull traefik@sha256:e2bbbc3795e78cf2d3f32822af8d28ef83dfe5fa0c95d55877012a864c7f1274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52937316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd66333140099093f5be93a79a5a0f04cf633b7e5e2632e7298fb867ce9a545`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 03:51:29 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 20 Oct 2026 18:06:00 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 20 Oct 2026 18:06:00 GMT
COPY entrypoint.sh / # buildkit
# Tue, 20 Oct 2026 18:06:00 GMT
EXPOSE map[80/tcp:{}]
# Tue, 20 Oct 2026 18:06:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Oct 2026 18:06:00 GMT
CMD ["traefik"]
# Tue, 20 Oct 2026 18:06:00 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc7f88a2c624248e15992b14564c9089660ee14d75dbd04f945ec5a8e7c535a`  
		Last Modified: Fri, 16 Oct 2026 03:56:12 GMT  
		Size: 416.8 KB (416784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162210cbb79a7f9df161ba1ae4598a512ef85ae3a5a7280fd803d0330936a472`  
		Last Modified: Tue, 20 Oct 2026 18:10:42 GMT  
		Size: 48.9 MB (48944791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd97c53b512b35285e5d8edf807dc3eebe401c1d8fe2b637fe4a5df9fd58964c`  
		Last Modified: Tue, 20 Oct 2026 18:10:35 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:fc5101df5c2c8f74d5172fa0c12a70d1ea91725b9b428dc9408455b856d7b373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **844.0 KB (844012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d1c1858ce32fae3181dcc613377ef84d378afd5a5d8e0aead0b7c1690da85e`

```dockerfile
```

-	Layers:
	-	`sha256:bc0be2fa30111f9ccb6db7ca3eb171018497e9e2886799bcda1077081bd0b746`  
		Last Modified: Tue, 20 Oct 2026 18:10:35 GMT  
		Size: 831.1 KB (831053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68043e3daa222c60e4913a41cb6853865c09b61b8acdb64faa8225ae8e57165f`  
		Last Modified: Tue, 20 Oct 2026 18:10:35 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; s390x

```console
$ docker pull traefik@sha256:ed722daac493fe0ab1f775eb6f80ceae5a898de4660b973c322065a1744ebd17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53394313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d129ea3f13f7442064e51932e4925be98ae764ba24f35a50063bcdf20fc3d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:36:21 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 20 Oct 2026 17:53:44 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 20 Oct 2026 17:53:44 GMT
COPY entrypoint.sh / # buildkit
# Tue, 20 Oct 2026 17:53:44 GMT
EXPOSE map[80/tcp:{}]
# Tue, 20 Oct 2026 17:53:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 20 Oct 2026 17:53:44 GMT
CMD ["traefik"]
# Tue, 20 Oct 2026 17:53:44 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a9b957774f7869fb16ba46f742e061eca0f50558ee0faa50a7c927f481f416`  
		Last Modified: Thu, 15 Oct 2026 19:37:42 GMT  
		Size: 417.5 KB (417455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f31d2927ac0375a30ca1a970ae4f74d4577427393dc104edf9536157f30af75`  
		Last Modified: Tue, 20 Oct 2026 17:54:28 GMT  
		Size: 49.3 MB (49261149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e66e70f3bd9a8e0417a4500762806d469192274efb37b0ae5bd97e35c799e7f`  
		Last Modified: Tue, 20 Oct 2026 17:54:27 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:76e44545cba047c756cca0ac90b79c8b0d9b957062948b62f01bc4cca2e39a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **843.9 KB (843886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c3957a81e0bc90bef995f816e0c93586a14b73cb80886ed1e24076e6b5c6f8`

```dockerfile
```

-	Layers:
	-	`sha256:2ae361f394be356ea913af6a98625b98e1eac42c57f28352ffe623f844045f14`  
		Last Modified: Tue, 20 Oct 2026 17:54:27 GMT  
		Size: 831.0 KB (830997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cba55deccd8d929f9586a7334f9bc7ba38edeb66680e0bc227ad9ea7997e73f8`  
		Last Modified: Tue, 20 Oct 2026 17:54:27 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
