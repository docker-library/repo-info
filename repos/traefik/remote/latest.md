## `traefik:latest`

```console
$ docker pull traefik@sha256:1336e85aaed293bd63d005086e0dd013b04078b26aaeb1c18b26a2f928af7e65
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
$ docker pull traefik@sha256:abb2b9c1b132b5b0be40d09c85bf8d3dab2a59fa0eb3aa955ab8be5efbb73de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55388799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3733df53e74cd0df7d1b839168e30d2bd7f5e77dd6214ef3d8056ee1f21392b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:43 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 22:55:45 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 22:55:46 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:55:46 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:55:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:46 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 22:55:46 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49888146e07b53cc44d84f58588dec3aabdeac3eb0e4715dc0f921465b3ca6f4`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 412.0 KB (412030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d632b01ad5cccd6ba822f66eae79d9f5c5c6e624e7ac81566dc9384b5931cfc`  
		Last Modified: Wed, 21 Oct 2026 22:56:09 GMT  
		Size: 51.1 MB (51123290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31563044f2c72a6ae51618cb2875bc661db1fbb122b4cf69d62e085c1f4a3b4`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:2833b23d403ff44cc963d1f9f178e2da077cdd4b54043996fc08d26d0708cf62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.6 KB (842602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6b899706afc6673b956956cba8b0e6eba163da035aba01d1c004ec4c5b8e5c`

```dockerfile
```

-	Layers:
	-	`sha256:1f4d3160c14956faa56381cc5106a0da71182a4c5cece1f7c3ade7bde10b8552`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 829.7 KB (829713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f00342f30c1ba178d8408e9718440870a2ff8852d6c8097a4ea61002a38fafd7`  
		Last Modified: Wed, 21 Oct 2026 22:56:08 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:59cf6b539deb4d0bfd22aa50961ed276ff7e351c857c76c198adda164035a9cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50714079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49f5c54b5afe0374c8f0fa1efc395f684e3cdc293e9a94dc666e1be0dfb63977`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:17 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 23:28:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 23:28:20 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 23:28:20 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 23:28:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:28:20 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 23:28:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca3fc7b8dd78e19c7b6d37488885baa3c8a84ba1a46a98cb9b24c97143fb129`  
		Last Modified: Wed, 21 Oct 2026 23:28:30 GMT  
		Size: 413.7 KB (413746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4227abebfd5d659bfab0fde1971ccbdeac7f7a99463fa93997c531ee38e333`  
		Last Modified: Wed, 21 Oct 2026 23:28:31 GMT  
		Size: 46.7 MB (46741673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850f4269517f46c043bd6b7a878dea462ebc2d47570d7ccdb9c10f213dc1b52d`  
		Last Modified: Wed, 21 Oct 2026 23:28:29 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:0249591a25b12db05b6ff05947a4ac1fd803c8c341870fc51abb89db90d4149b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:139593a6dd96d52154a4b89c5b738f47c32e6908d30b135b2c0ba1a1d1a72873`

```dockerfile
```

-	Layers:
	-	`sha256:636ad424758710ed53acd8b8a4046e30dc6c3ad022208b043a3b9b8c7130f642`  
		Last Modified: Wed, 21 Oct 2026 23:28:29 GMT  
		Size: 12.8 KB (12799 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:9c89a16a096f04794fc179b2c8e7804c4ae572bc7631e5094cb7674417ac8936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50194474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e4306d8367f4d88e2f8544e03bd8b03fc92843057cf7714685935d8962dc37`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:17 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 23:19:20 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 23:19:20 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 23:19:20 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 23:19:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:20 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 23:19:20 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187b2a08e196fe309768c894e13b6b1d8e295df6aaaf03310a481418b0f67638`  
		Last Modified: Wed, 21 Oct 2026 23:19:44 GMT  
		Size: 415.6 KB (415579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0aaff58aa731571e2ac2ebc9b39617af0c102928769bb5bf1235f52c37bcabd`  
		Last Modified: Wed, 21 Oct 2026 23:19:46 GMT  
		Size: 45.6 MB (45588037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0041357e7278fc05deaf2f71081293d58eb66e398e3d5766fcbafb8eae4a230c`  
		Last Modified: Wed, 21 Oct 2026 23:19:44 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:db1dc19b92c71620ca0295ad48c4efe2d2f09a3102ee87aec3854acf2219d735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.2 KB (842222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc947350a803abd779c5b7bbb29edfb82bda7353a9e659b84f49bb12f190faf`

```dockerfile
```

-	Layers:
	-	`sha256:09d7d029b1ab6accd09f435630725daf0223ed2c76a0028596f1606a92ef3e7e`  
		Last Modified: Wed, 21 Oct 2026 23:19:44 GMT  
		Size: 829.2 KB (829167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd70589e60adcea9c25f15d329b9a48370ed95fb7e57b3e66059daa64666a317`  
		Last Modified: Wed, 21 Oct 2026 23:19:44 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:b89707c1143d89718af6598fd47abe86d49ab6ecd7450edc311c1b69d5ce98ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48545757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958b6787564bbbf103ce00436cb961dd1a3525defaf60d80290d16632ceabc9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:37:22 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 22 Oct 2026 13:37:27 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 22 Oct 2026 13:37:27 GMT
COPY entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 13:37:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 22 Oct 2026 13:37:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 13:37:27 GMT
CMD ["traefik"]
# Thu, 22 Oct 2026 13:37:27 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c346734dd9ab24c7bc9ccc2253b849cf2d618f003e0179ce069b99e8a27cc837`  
		Last Modified: Thu, 22 Oct 2026 13:38:20 GMT  
		Size: 416.1 KB (416053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ff0eabee541722c0aaaaf7d752d49194545f2152012f69e51a88a98656b601`  
		Last Modified: Thu, 22 Oct 2026 13:38:21 GMT  
		Size: 44.3 MB (44308514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1975c954237b11988fa9e379dba8335b597c6a70ba3fa081a4ec66c329f9c8`  
		Last Modified: Thu, 22 Oct 2026 13:38:20 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:a6ce4a0f70c21c24a7f2d841b59064c3678cc1380b21e8fe035e1bf489356483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.1 KB (842079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b380ff0483816eedf76d8fd1be3b699d83512347f5a087fd38c4d5e1053bf7`

```dockerfile
```

-	Layers:
	-	`sha256:7e98608adc5d206ce02e41af219998cd033897f789d68d28643a389acdced172`  
		Last Modified: Thu, 22 Oct 2026 13:38:20 GMT  
		Size: 829.1 KB (829120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6b2667b7159202c544f1812e9e66b188e44a8c0e980a071de16985d20f4c8a`  
		Last Modified: Thu, 22 Oct 2026 13:38:20 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:10bd1f33e6cc9bf692f6c9adc6d28c2b800730ede7732876b88238e756e01d39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 MB (52938308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34ae9175372cf1a76e7c335495761f3a05db914a8ef4a98c25208b4077f597f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:43:26 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 26 Oct 2026 13:43:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 26 Oct 2026 13:43:39 GMT
COPY entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 13:43:39 GMT
EXPOSE map[80/tcp:{}]
# Mon, 26 Oct 2026 13:43:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 13:43:39 GMT
CMD ["traefik"]
# Mon, 26 Oct 2026 13:43:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e00c18e88c042b307b6c99dd174c645b38ee8d092b42fa98b3a0e7609b0217`  
		Last Modified: Mon, 26 Oct 2026 13:48:23 GMT  
		Size: 412.5 KB (412537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32d340453ea814bf3bc50f47e2155fefd3eac07eb8edabfc058be0588553909d`  
		Last Modified: Mon, 26 Oct 2026 13:48:30 GMT  
		Size: 48.9 MB (48944754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6241217e582f2375b21f8817d7360cccb680848c7d6d76315c327588165259`  
		Last Modified: Mon, 26 Oct 2026 13:48:23 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:7f57de54638058331d83019e504223fe56900c5a5c3ac898e8754ab88e50be05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.1 KB (842075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a967e37a7638cec548f99b381cc36b71f820dea83b5fe68f4584fff2848708`

```dockerfile
```

-	Layers:
	-	`sha256:71c91064366e5f0fc0c119da875d8e430e54be3641fdf0130cf15580a199e262`  
		Last Modified: Mon, 26 Oct 2026 13:48:23 GMT  
		Size: 829.1 KB (829116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee3fe8deb3dcfd614c129d8c7f377db27bf54a8a6d09724ff07a5df774b6708b`  
		Last Modified: Mon, 26 Oct 2026 13:48:23 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:116d1ce774d4c622c8ed2619a003dae02689521ab5f539e3797073b249ddcbf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53394649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ee12fa85df7654d5c3cf97caaf11d79a7d4794b7637a197dfd9291e2cbd22b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:40:11 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 23:40:13 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.16/traefik_v3.7.16_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 23:40:13 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 23:40:13 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 23:40:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:40:13 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 23:40:13 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.16 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50577c958be5de3c1c2685fdc68cdf73c9afad2a70c268848e0923850c685bf3`  
		Last Modified: Wed, 21 Oct 2026 23:40:59 GMT  
		Size: 413.4 KB (413427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a89af6ac8ebeab3becea1f7b189fbfe35583d1a5b03faf8c00da6235e0529cf`  
		Last Modified: Wed, 21 Oct 2026 23:41:00 GMT  
		Size: 49.3 MB (49261142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de546a600c10a88833b8a9fcd2f9e024fc6bbe2f6911a2efca8ad7de5ef24c`  
		Last Modified: Wed, 21 Oct 2026 23:40:59 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:070b460b583ca7cb1a87ef40b213fb8e09143ec02da48cb9a8857db38bb993ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **841.9 KB (841949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc7e3ac3229259b8600018a94076a46c39030e2d8e1820ced4d93aca1636120`

```dockerfile
```

-	Layers:
	-	`sha256:5e218910a3c0ff60049ed5b54011646be808476c5c026d21d8b4f5701373a62b`  
		Last Modified: Wed, 21 Oct 2026 23:40:59 GMT  
		Size: 829.1 KB (829060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f17b89ceff9629ecd53611f4f99e250a3ed097f49a17d04a62d9891c1a98581c`  
		Last Modified: Wed, 21 Oct 2026 23:40:59 GMT  
		Size: 12.9 KB (12889 bytes)  
		MIME: application/vnd.in-toto+json
