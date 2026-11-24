## `traefik:latest`

```console
$ docker pull traefik@sha256:63f61f603052fbcc77597da1dc71ed8c39cf3f3e5a7c92c73bc94d84973997c3
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
$ docker pull traefik@sha256:2e288bd466b23d4c62a76c89ddddb2965798b7a3f925aaa4400982b5028e7f92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64231384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cfccdef2fd9144a75922dcc0dc71f6c76bb25244c709a709a4b5fa1a5c9c13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:36:58 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:37:01 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0/traefik_v3.8.0_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:37:01 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:37:01 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:37:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:37:01 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:37:01 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559737c73ea7dabf78eda21963c5c088c7eadddf0d7042c14f92cdef5cb9b097`  
		Last Modified: Mon, 23 Nov 2026 19:37:25 GMT  
		Size: 412.0 KB (412028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7820c12d07dfd838ac73f645d1bccf5650bfa71e2bef3bc6ecc56d33443e3854`  
		Last Modified: Mon, 23 Nov 2026 19:37:27 GMT  
		Size: 60.0 MB (59965315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e95443dd6ba5935604de6000fc45c9bc2fcaff2165166554dd170b1526a75d`  
		Last Modified: Mon, 23 Nov 2026 19:37:25 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:548f4cbb8227efc35f4960c96f8eeac0434ac7794e74081a70f94f036311c7d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **850.2 KB (850196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f6693c224cd90ac521d6b4aabe82324d9bc7786994627ee99116e168cbd2c8`

```dockerfile
```

-	Layers:
	-	`sha256:4a87ef34e61fbe8e78e56a9571b04bdc3fbadf3c1dde27059fd491cf7b09380f`  
		Last Modified: Mon, 23 Nov 2026 19:37:25 GMT  
		Size: 837.3 KB (837320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ff3518981d04bc84caf7b71366795d562a1d6ec4ffe5c42bdc608866e3fe487`  
		Last Modified: Mon, 23 Nov 2026 19:37:25 GMT  
		Size: 12.9 KB (12876 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm variant v6

```console
$ docker pull traefik@sha256:31273b20482a4b074eec08665895c8e6280e998ab4fbf69a1a0d97eda4758e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59326874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27de6428b91c6eefd4d459520b0af1f26ad9950dbd724ea8238a52d84240be0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:33:14 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:33:18 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0/traefik_v3.8.0_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:33:18 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:33:18 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:33:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:33:18 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:33:18 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1bbd14e192da56578429d724b4b27d01922fa16089397eb1165fae033604bc9`  
		Last Modified: Mon, 23 Nov 2026 19:33:27 GMT  
		Size: 413.8 KB (413769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4f2c0d6d5dcdb9e166cf1a75e35ed6a3ad48af62476ffa209f4f0c710b6537`  
		Last Modified: Mon, 23 Nov 2026 19:33:28 GMT  
		Size: 55.4 MB (55354336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a35422358d613ef3f78293582d1d133419f676ef159548d7e6829e07b07057`  
		Last Modified: Mon, 23 Nov 2026 19:33:27 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:731c465190f8fbfc0f841e96ec5cb0524a2c96d1c65f50279b640598abcbcfbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.8 KB (12787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4b2bfcd1e3bc058cba4e59d24c57f363c14d660e3a0a7f7bbcb7e2bc0ebed7`

```dockerfile
```

-	Layers:
	-	`sha256:0b607dd8e801543589d935933889c99960eb784f0972dcff8d72112cacf6afdd`  
		Last Modified: Mon, 23 Nov 2026 19:33:27 GMT  
		Size: 12.8 KB (12787 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:080f52f1ac2e7f8803e456861c6435f37fb4291522bf1b8db7d65f99626775cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.2 MB (58238282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971b51058015d996429806d16005d4d39316bfb63c451a3dad8edd728c4f46ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:35:24 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:35:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0/traefik_v3.8.0_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:35:28 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:35:28 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:35:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:35:28 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:35:28 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f89c24a0c65d991248535ed5bf42039897417c9f3b6926849a795c8ec7a48b`  
		Last Modified: Mon, 23 Nov 2026 19:35:52 GMT  
		Size: 415.6 KB (415562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18aac68c70f5abd9d72c90b57c2e1115e14c1972783cddaaf0cf8c17d24041c`  
		Last Modified: Mon, 23 Nov 2026 19:35:54 GMT  
		Size: 53.6 MB (53631756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c47ee7d5155d0880305cba61bf67b9502bffe6a3bce5782db8af9afd55835d4a`  
		Last Modified: Mon, 23 Nov 2026 19:35:52 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:5ada4199465089f370649931f6fa13049a0984e1d5cc242071a4f54a1fb1233d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **849.8 KB (849817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2da24818a5755f9a2456c70d4d896482529ce52fc3b116d78b5fb3dff44035`

```dockerfile
```

-	Layers:
	-	`sha256:9a7a27e4d5be025a09296dd7c96aa277356326d42b9c3b3b7dfb60a117cc197f`  
		Last Modified: Mon, 23 Nov 2026 19:35:52 GMT  
		Size: 836.8 KB (836774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf8dcb3eb14bb92025f67b0f6c7f6587385c3c71c005c105a14431b521b3a315`  
		Last Modified: Mon, 23 Nov 2026 19:35:52 GMT  
		Size: 13.0 KB (13043 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; ppc64le

```console
$ docker pull traefik@sha256:db7e613f1d6f91702f77023042a7c56096c205495330a07287eaa9d09914d40e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56728404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06dd21041f9d554f8c532e7baa6e244c50cfff787ddf226f8201034e4f37853`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:33:25 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:33:31 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0/traefik_v3.8.0_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:33:32 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:33:32 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7422576886dffa3e6738b4fb599eb3545b759f67f7a6348bc700cc22a6d7cc64`  
		Last Modified: Mon, 23 Nov 2026 19:34:20 GMT  
		Size: 416.1 KB (416062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7965fb8a9b0472cfd1127b9ddb235bb2f4f3a128223967905958549bac78e716`  
		Last Modified: Mon, 23 Nov 2026 19:34:27 GMT  
		Size: 52.5 MB (52490054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e151a9047cee90d60e2f51f162f6902f0d060f119f496225ca6d3a385fa3f82`  
		Last Modified: Mon, 23 Nov 2026 19:34:25 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:8dd9ac81302de93b7326395fa187d0181666e9223c4bb61a23a110d59dd87e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **849.7 KB (849674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4b671025ff6f3dbb998e8524762b72362927df3604f054daf7c052fd64dbb`

```dockerfile
```

-	Layers:
	-	`sha256:b57605b1591852a13d8fb2359f1b61df25f65c5ee018169bafbba61002ae1252`  
		Last Modified: Mon, 23 Nov 2026 19:34:25 GMT  
		Size: 836.7 KB (836727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:789e9779316f1c8d077bf5ed770458f4dc8b6f27df925ef0b46ed127c3898260`  
		Last Modified: Mon, 23 Nov 2026 19:34:25 GMT  
		Size: 12.9 KB (12947 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; riscv64

```console
$ docker pull traefik@sha256:930e2e0a42c54357a64fe07b67e5ab3615799930373bf1ca4121cda05e4b5120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (53038985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89489c8173e6a9be2f04c0dbac044bc27e4f0a1ebc1b5836664feec2ad4f4e65`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 00:48:12 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 19 Nov 2026 00:53:38 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.19/traefik_v3.7.19_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 19 Nov 2026 00:53:39 GMT
COPY entrypoint.sh / # buildkit
# Thu, 19 Nov 2026 00:53:39 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 00:53:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 00:53:39 GMT
CMD ["traefik"]
# Thu, 19 Nov 2026 00:53:39 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.19 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0378e4e3854c3d79230f1affa3485ff927e712a430cc901889f72f292276d93`  
		Last Modified: Thu, 19 Nov 2026 00:52:48 GMT  
		Size: 412.5 KB (412503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c8244751d74bb76e8b53027ea62595b901346a92e6ac7376b48fca61c27162`  
		Last Modified: Thu, 19 Nov 2026 00:58:17 GMT  
		Size: 49.0 MB (49045502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a94d5fba084b18f8e19e27c52c2a6088f070aed932d2c0ea57c6ea8efff9068`  
		Last Modified: Thu, 19 Nov 2026 00:58:10 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:9de56ce498e95a9dbf1be58fca29eadceea719b2ebfb54cebfd90a9b22c62a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **842.2 KB (842171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffd029d259e9e54db22546ee3a8b20e7cc64acdcba569c56d3be8a818b85e61a`

```dockerfile
```

-	Layers:
	-	`sha256:4edaee88c3b00a52a160474bd34d9ecaf73e44e31d4d9b3224dabb96cf1a21d6`  
		Last Modified: Thu, 19 Nov 2026 00:58:10 GMT  
		Size: 829.2 KB (829212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51d2b6004cebd524129a1dbc8d10c0d0e30792399e586dd438ef647b6cf6d5af`  
		Last Modified: Thu, 19 Nov 2026 00:58:10 GMT  
		Size: 13.0 KB (12959 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:latest` - linux; s390x

```console
$ docker pull traefik@sha256:57d17c503ef437e6d146c8be94c319a9854c4cd367a44ae0bf9770c9188896b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62144507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccac4d2828da812f1400e69bc8f77d9fa3087127824141fc9cccfbff4eb27365`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:33:31 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:33:34 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0/traefik_v3.8.0_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:33:34 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:33:34 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:33:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:33:34 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:33:34 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9035e87466e5870eb0784feeaf0c4898d39df3fe771466c40b43953f5f5c4e0`  
		Last Modified: Mon, 23 Nov 2026 19:34:20 GMT  
		Size: 413.4 KB (413436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14772e489dad1d62433aac1ace3c6e723f5176cc6197347d0035910919f54d0`  
		Last Modified: Mon, 23 Nov 2026 19:34:21 GMT  
		Size: 58.0 MB (58010033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0e9d284ef288aed1729daffd9eb532a1d02018cf76f907169651e37914f9fb`  
		Last Modified: Mon, 23 Nov 2026 19:34:20 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:latest` - unknown; unknown

```console
$ docker pull traefik@sha256:e6470f80a9905989befc698338b14658363d46bdc13524575af3921d4f63d070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **849.5 KB (849546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dadd2bd185ca9205923a4d2c0dbf8db789c02d76ced0350b47fd2eabdfdb97aa`

```dockerfile
```

-	Layers:
	-	`sha256:e81c11b42dab6bf9a0d6015b6e52af5a8b65fb7ddbec61a32d3e4dda43036336`  
		Last Modified: Mon, 23 Nov 2026 19:34:20 GMT  
		Size: 836.7 KB (836669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3d2bf781d23bb4314f06c34ecbe8799faa1154fa697815f11f481833134b6a7`  
		Last Modified: Mon, 23 Nov 2026 19:34:20 GMT  
		Size: 12.9 KB (12877 bytes)  
		MIME: application/vnd.in-toto+json
