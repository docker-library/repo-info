## `traefik:mimolette`

```console
$ docker pull traefik@sha256:74fe8a2e317dbfbdca113347633b44a00a11d57170bc01147c150469418a4bc3
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

### `traefik:mimolette` - linux; amd64

```console
$ docker pull traefik@sha256:bfe65cdecbb5bd5547ce95df387fcbb3a31e7d8ff9f83bba1440b757b41468b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54910250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0c09f2aea697114e10ed73f0add5c646a7595e883ab0a7508966de98430d42`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:55:45 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 22:55:49 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.60/traefik_v2.11.60_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 22:55:49 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 22:55:49 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:55:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 22:55:49 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 22:55:49 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1496e2618145cd0f39e7cd609d0bb041dec9bf97a3134ece078d8f3d1c67343b`  
		Last Modified: Wed, 21 Oct 2026 22:56:12 GMT  
		Size: 412.0 KB (412029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798e98a66b00b91a6274099f49956378efc94dff61792d26677a40da086ef076`  
		Last Modified: Wed, 21 Oct 2026 22:56:24 GMT  
		Size: 50.6 MB (50644742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc61c7a91a0df961e10cca664214736e35e421228c7491c1306be0ac0f99181`  
		Last Modified: Wed, 21 Oct 2026 22:56:12 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:d2364ca2531a0af10baeb9c5547542b7bcf4ec4b29b64c5b43e6c3b84ff8fd46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **857.6 KB (857641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d5c0470b940c4de455f02ad665ba0fffa457034c408429cedc8e84e99a8ce8`

```dockerfile
```

-	Layers:
	-	`sha256:4158564509d287f171111f8935cdcb86286443424925309a327a82c9bdc3e8a4`  
		Last Modified: Wed, 21 Oct 2026 22:56:12 GMT  
		Size: 845.0 KB (845031 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2a1e07edfe20274e52df62bb832b88471cbcd8899a3a4edc0680c535d5515ef`  
		Last Modified: Wed, 21 Oct 2026 22:56:12 GMT  
		Size: 12.6 KB (12610 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; arm variant v6

```console
$ docker pull traefik@sha256:dad64796731801835f80901e56337c74b87325372b803fb7f3b984c3d5f6824b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50494886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00c8059bedcd83508c7b1055ee3fa5e017646a7814924c62d167157468a5502`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:29:10 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 23:29:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.60/traefik_v2.11.60_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 23:29:18 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 23:29:18 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 23:29:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:29:18 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 23:29:18 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834bd336cbcae3e6ee7c3542af32cc275d37a3751f0080598aecfb2812dc1e48`  
		Last Modified: Wed, 21 Oct 2026 23:29:27 GMT  
		Size: 413.7 KB (413726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0c53a6f60d7fdd4366e6aaa947f4922bc49e4e7aa5a5eae2d4dd603082dea8`  
		Last Modified: Wed, 21 Oct 2026 23:29:29 GMT  
		Size: 46.5 MB (46522499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c81608dd201681d559aca31a399d57c7959ae8434c201fac833df7326dfb77`  
		Last Modified: Wed, 21 Oct 2026 23:29:27 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:73d3359115f8ab8e46d3da0186948b53ecc36d34a351243791b90e8e1c9d379f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 KB (12512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02eee28ea6a371be27033d84312bef5b91fd8b5049f7c305f592fa804fac63e8`

```dockerfile
```

-	Layers:
	-	`sha256:c3041023bbff8a3a4bf9e15f37434969814c6564a2543471f3a219f9a238d431`  
		Last Modified: Wed, 21 Oct 2026 23:29:27 GMT  
		Size: 12.5 KB (12512 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:04fa5ec86424f110ff561d2388072e5a039e9f53b90c85ac41ab00a688ca5228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49837156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c788c1448c4ef483ef2248ec06498df391233ba3c8246068500f08feec770ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:19:20 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 23:19:23 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.60/traefik_v2.11.60_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 23:19:23 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 23:19:23 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 23:19:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:23 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 23:19:23 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44a3c919fc2a29e8c21543ef8835b247ff5853b344fde08f192ea015be03e2e`  
		Last Modified: Wed, 21 Oct 2026 23:19:47 GMT  
		Size: 415.6 KB (415555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60166cfc52ec4c046752c37ef8a496e73bf1d6ced73181e42e0c5a6926ff67c`  
		Last Modified: Wed, 21 Oct 2026 23:19:48 GMT  
		Size: 45.2 MB (45230743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:059425cfdc3e03b83fec477eab04967e6bd6f6ec717f9e2875dfee352b1049b1`  
		Last Modified: Wed, 21 Oct 2026 23:19:47 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:dd8e3d65246d507abf7835a40babed644af2569254676697c6b74ccc5f8aef5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.4 KB (856433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d7f2fc85a28ca9a823d2d95eb5a641b340a0c95b1c18a685bbb58ffae1707b`

```dockerfile
```

-	Layers:
	-	`sha256:e25f7e451c4fab5487455e0e37f266ca93d93a474bd5ef85810c00deb9dd7ac1`  
		Last Modified: Wed, 21 Oct 2026 23:19:47 GMT  
		Size: 843.7 KB (843668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63393aa62ba88e657c47104063c4c73e555c8134381e305ce574354b646d7e06`  
		Last Modified: Wed, 21 Oct 2026 23:19:47 GMT  
		Size: 12.8 KB (12765 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; ppc64le

```console
$ docker pull traefik@sha256:0b750d51504fd7437a5691566fc4afae78ce4077869e595ef8c8812b821e76b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48300021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63f56bed06b6e1137e7738cc6ab35fe1f0dbdd05afef2c89cbd83c68006cd15`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:37:22 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 22 Oct 2026 13:37:46 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.60/traefik_v2.11.60_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 22 Oct 2026 13:37:47 GMT
COPY entrypoint.sh / # buildkit
# Thu, 22 Oct 2026 13:37:47 GMT
EXPOSE map[80/tcp:{}]
# Thu, 22 Oct 2026 13:37:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 13:37:47 GMT
CMD ["traefik"]
# Thu, 22 Oct 2026 13:37:47 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:4f9cd80b1040d12b41186c7f548804954f160a9a7b66b3c556b6ea01baf81011`  
		Last Modified: Thu, 22 Oct 2026 13:38:40 GMT  
		Size: 44.1 MB (44062776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da579a48d1fea57ce13fe1690be8638f702fd66f7c7c75f5ede80a4711705c5a`  
		Last Modified: Thu, 22 Oct 2026 13:38:39 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:7cb3e1c398552395f893eea1f12baeef4648a3a47508513de5f5d477d1b25974
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.3 KB (856300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0232ccc3c1af08364d8ed06ae88f82b1a7abfb258c38eb139ac8fe0d36d49d8a`

```dockerfile
```

-	Layers:
	-	`sha256:d2aa5a76460ae0536155ce654ea8e13bf8b9c9479144f17d398a2d2691b3d03f`  
		Last Modified: Thu, 22 Oct 2026 13:38:39 GMT  
		Size: 843.6 KB (843627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70cfaacaba9ab2cb2edc001341fe4759b4d610e08d9513a5209fbc6cfc978cfc`  
		Last Modified: Thu, 22 Oct 2026 13:38:39 GMT  
		Size: 12.7 KB (12673 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; riscv64

```console
$ docker pull traefik@sha256:de0f23e9463b4fe3b56d199fff4195098aab717244a1efff5776671e97648de3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52808383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7da367b7fb53f648077c5ef317cc65e4f5f8ead9cba308d05e78a93ddc466266`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 13:43:26 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 26 Oct 2026 13:50:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.60/traefik_v2.11.60_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 26 Oct 2026 13:50:17 GMT
COPY entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 13:50:17 GMT
EXPOSE map[80/tcp:{}]
# Mon, 26 Oct 2026 13:50:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 13:50:17 GMT
CMD ["traefik"]
# Mon, 26 Oct 2026 13:50:17 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:1e9a83bab03ef32b34d7dcaeb41cff11793dc5fd915a401c968ef012d655b3d1`  
		Last Modified: Mon, 26 Oct 2026 13:55:31 GMT  
		Size: 48.8 MB (48814829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662ca985b11b385e0f7a9d06bcd4514e7d2527e2d26c7f65871aa9f4d8de0f9a`  
		Last Modified: Mon, 26 Oct 2026 13:55:24 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:a7eddcbaf8218c910447e4c7dccb762c04c015d4017f64ef866d7a1012ba6876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.3 KB (856297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a295bebd66418fe77056df647f3d313b3c1b1cf1ccf65cc93a5f79fe1b646eb`

```dockerfile
```

-	Layers:
	-	`sha256:f105c27c3eddb157f9d69f9d98ea128fdff3010fde845f20d1ac1f232881027b`  
		Last Modified: Mon, 26 Oct 2026 13:55:24 GMT  
		Size: 843.6 KB (843623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd29fbd5c51c5472931564d8588e5584732eae8b55851b543e2aae90bc5f4deb`  
		Last Modified: Mon, 26 Oct 2026 13:55:24 GMT  
		Size: 12.7 KB (12674 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:mimolette` - linux; s390x

```console
$ docker pull traefik@sha256:2ed25ec2914fd0721d7ca26664a37eb0b5e184d062691543374c6509eb80b0c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.1 MB (53099892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a418868f320fd2ebab0837d6882ca94e590a97008b035fe2d4031b21e93bcda6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:40:19 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Wed, 21 Oct 2026 23:40:21 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v2.11.60/traefik_v2.11.60_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Wed, 21 Oct 2026 23:40:21 GMT
COPY entrypoint.sh / # buildkit
# Wed, 21 Oct 2026 23:40:21 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 23:40:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:40:21 GMT
CMD ["traefik"]
# Wed, 21 Oct 2026 23:40:21 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce03982e864dd79a20d25bfcd1501d2132707a4a8a35ef05f70a42d707f917e`  
		Last Modified: Wed, 21 Oct 2026 23:41:06 GMT  
		Size: 413.4 KB (413433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e3e5a1607683e0652b25408a6f8db391a38b6d457313cbd08bdfb9bdc6348e`  
		Last Modified: Wed, 21 Oct 2026 23:41:07 GMT  
		Size: 49.0 MB (48966379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb57ff26cb2193af3e15b31e360fd0bcce04a4b72d393582f020b6eef2bcf117`  
		Last Modified: Wed, 21 Oct 2026 23:41:06 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:mimolette` - unknown; unknown

```console
$ docker pull traefik@sha256:ace1d4abf6fe907122a8dec05c7a3e4ab8dc30211a2bbca930c982e7ad9b194b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **856.2 KB (856181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c08fbe09e62f6f89bc6f1d22c3c3fc6d9f3ae86625d289759dcd783acdfe0e`

```dockerfile
```

-	Layers:
	-	`sha256:e013fbaa42e61a99627430a79bc7fad4b95e4c92d526d150e4b4e6879354a9ca`  
		Last Modified: Wed, 21 Oct 2026 23:41:06 GMT  
		Size: 843.6 KB (843571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22a358e7739baeb564eb43959c85a0e995acd8ff850bd1f5733286fa8a6491fe`  
		Last Modified: Wed, 21 Oct 2026 23:41:06 GMT  
		Size: 12.6 KB (12610 bytes)  
		MIME: application/vnd.in-toto+json
