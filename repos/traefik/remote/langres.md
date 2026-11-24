## `traefik:langres`

```console
$ docker pull traefik@sha256:649c6476d4c499de84572bc60f5ecf75e98e75a5b8f8a8a72010c836d8ee9f95
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
$ docker pull traefik@sha256:cb035e329ea90292290e0199a062aa9bbc78e427356a63a0f8d31e40b058b3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.4 MB (55448873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:211663f24f8e8110b8cdd87fed3e817be6df34968dbe5afbc634cb77d1ced8e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:37:04 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:37:07 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.20/traefik_v3.7.20_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:37:07 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:37:07 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:37:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:37:07 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:37:07 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.20 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89dc266e5b4d1ae6d30c90144c2b16f1d897c6d45b39a36ce16606ffd6dedd4`  
		Last Modified: Mon, 23 Nov 2026 19:37:29 GMT  
		Size: 412.0 KB (412030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903c7e4dd7afa8931445ca9f54051724f5f286cd4e37fb07ca48051b1ba4ad3e`  
		Last Modified: Mon, 23 Nov 2026 19:37:30 GMT  
		Size: 51.2 MB (51182801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2762ce171b3f4e87eb93853565687640387a2a06ebf37b582be6d2cb274e488f`  
		Last Modified: Mon, 23 Nov 2026 19:37:29 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:e1ab5dc920581bf614240b08a084b67854f6e5311cda004669ccb5fae32c9c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.6 KB (847625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56fc4bb5b58b4d60fc8b71f7d0eda7fe10187e61741a537fa0e300c43e252e7`

```dockerfile
```

-	Layers:
	-	`sha256:1ee20d38190af128a8d1b2e96897865b66bf313fda7e76fcbc1765f7e005d8e5`  
		Last Modified: Mon, 23 Nov 2026 19:37:29 GMT  
		Size: 835.6 KB (835619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13400ef109eb5249d735028893d27647712e6f5bf2618a0502d3e4ed70f9207e`  
		Last Modified: Mon, 23 Nov 2026 19:37:29 GMT  
		Size: 12.0 KB (12006 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; arm variant v6

```console
$ docker pull traefik@sha256:aeaa8e2a0f8dc3dfbf2235a3545c014f7c60d68b6e64866ba3dcefec7da5fcd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50847745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc00484b2b93afa3d970fc957611e3f81ec4c654a6f46c480857097d8098260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:33:14 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:33:37 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.20/traefik_v3.7.20_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:33:37 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:33:37 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:33:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:33:37 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:33:37 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.20 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:36e84e224627bd8227f95a209c195d8f340d06276ac6e4168af7cf17dae2974a`  
		Last Modified: Mon, 23 Nov 2026 19:33:47 GMT  
		Size: 46.9 MB (46875206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a3b288ca891d41bc9980681e2ad791448c875d8e062054e69b411b99b63831`  
		Last Modified: Mon, 23 Nov 2026 19:33:46 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:dcec4750410f852e9e3a9e606831a86d8782ad72230c222fa4fd24ed6b81392c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 KB (11892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5535fe7e3ee36603dc3ac02c2d603015a9e4efe9d2d9928432c0a798184b2e23`

```dockerfile
```

-	Layers:
	-	`sha256:c1f0b634cc54da78dbab9d935df402d3c25a9f31e7ca0e79c326127af01b08d0`  
		Last Modified: Mon, 23 Nov 2026 19:33:46 GMT  
		Size: 11.9 KB (11892 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:7153097f121f3158b203af61ed0a0949ec08d887933f1740435e6f93d44dc5d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50140473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5469ed5de639deed52a3ac7792b3b886fcbb53a51db814f1dc3d81680e95631b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:35:28 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:35:32 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.20/traefik_v3.7.20_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:35:32 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:35:32 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:35:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:35:32 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:35:32 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.20 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c7d4561a1a3f318280560d8766f779766f7f087fc533e15c7b1b00938af70a`  
		Last Modified: Mon, 23 Nov 2026 19:35:53 GMT  
		Size: 415.6 KB (415587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152177697a4268c899811d12e9337a1420d4d47a8148c079903140be58d67d26`  
		Last Modified: Mon, 23 Nov 2026 19:35:55 GMT  
		Size: 45.5 MB (45533923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:563590052fa079972456598b380f16612e0742fc0b5cf34dd0d3965d74086cf2`  
		Last Modified: Mon, 23 Nov 2026 19:35:53 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:49566c3bda9215da43251ee016490894ea6fbaae6ef02ce0eca1a31fdaee6fcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.2 KB (847173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f15a14954ad47d19f40613c26b9fb247a3e7e4ad91c55e0b6c77ae0098084867`

```dockerfile
```

-	Layers:
	-	`sha256:91365384948f888ee8db72ffbea506c4ec0eb44ba474c60d6e900809e48077f7`  
		Last Modified: Mon, 23 Nov 2026 19:35:53 GMT  
		Size: 835.0 KB (835037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f17f2b0040273c8f4dae9e433751906646b6d48469520fbb60915a489d730ea`  
		Last Modified: Mon, 23 Nov 2026 19:35:53 GMT  
		Size: 12.1 KB (12136 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; ppc64le

```console
$ docker pull traefik@sha256:75ad04e735413a417de4463b8f1dccc276b0c715b1a3e8f66d9a46a68809d6f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48539855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9cc30cb0dc79f067267a619e22484b83ab9dd9cfda20126e3dfab58e691796`
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
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.20/traefik_v3.7.20_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:33:32 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:33:32 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:33:32 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.20 org.opencontainers.image.documentation=https://docs.traefik.io
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
	-	`sha256:55b345d312d9c6074ac1cf06195908a5682a88859c4371c2f63aad4e52f72bee`  
		Last Modified: Mon, 23 Nov 2026 19:34:22 GMT  
		Size: 44.3 MB (44301505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a35422358d613ef3f78293582d1d133419f676ef159548d7e6829e07b07057`  
		Last Modified: Mon, 23 Nov 2026 19:33:27 GMT  
		Size: 368.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:694682e7185e8d89636e49144172d39d22d829e6296cd4751eceec83483c3f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.1 KB (847067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28edd3fcb7a001a1ed16d4aaf8f2d2e70395b38383342e1ba174fa019db90fdf`

```dockerfile
```

-	Layers:
	-	`sha256:c4b3e02c284f1ca0e41b66ba10029e308ac0a723d3a48b51a163a80b5e1e130b`  
		Last Modified: Mon, 23 Nov 2026 19:34:20 GMT  
		Size: 835.0 KB (835008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fc80e6491312cc18c483b7d8213e515f8eafcf5860d904b66276a5f67f51ef8`  
		Last Modified: Mon, 23 Nov 2026 19:34:20 GMT  
		Size: 12.1 KB (12059 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:langres` - linux; riscv64

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

### `traefik:langres` - unknown; unknown

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

### `traefik:langres` - linux; s390x

```console
$ docker pull traefik@sha256:572d8a5e9ddba5da67692a99a5a94d7a5e30cfaec392fa09af8d4073546887b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53462217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:badd1877f90169dce644b9974fb2cae65fbc3c2e51d5a308610675daadbe16a2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Mon, 23 Nov 2026 19:33:30 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Mon, 23 Nov 2026 19:33:33 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.7.20/traefik_v3.7.20_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Mon, 23 Nov 2026 19:33:33 GMT
COPY entrypoint.sh / # buildkit
# Mon, 23 Nov 2026 19:33:33 GMT
EXPOSE map[80/tcp:{}]
# Mon, 23 Nov 2026 19:33:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 19:33:33 GMT
CMD ["traefik"]
# Mon, 23 Nov 2026 19:33:33 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.20 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72700a8bf9f268d9139ff2bdda0f9466e6d552d9a99719b76732b9f768458ce`  
		Last Modified: Mon, 23 Nov 2026 19:34:14 GMT  
		Size: 413.5 KB (413458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e56a260cb6db82cbfca81d1be2016b68f694dc2e67be4c89ba655669b293116`  
		Last Modified: Mon, 23 Nov 2026 19:34:16 GMT  
		Size: 49.3 MB (49327720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9648f3942b032638e4d50bb153d54fd898cda98430de418a99a43ddc17b1fd2`  
		Last Modified: Mon, 23 Nov 2026 19:34:15 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:langres` - unknown; unknown

```console
$ docker pull traefik@sha256:3e7d8ed0896c25e1eee6bcf7fd68839d07b8ccd69e55cea944c8f3a861c781e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.0 KB (846972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9379c19d987abec1dd314cb29c02dbf54400a7ef7a5cb8d179527dc700e3bb7b`

```dockerfile
```

-	Layers:
	-	`sha256:829e2f0d67410e198b05bd6172bd80d34006847e2a9754ecf9870bf9fe13c34b`  
		Last Modified: Mon, 23 Nov 2026 19:34:15 GMT  
		Size: 835.0 KB (834966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09c0e2e8652c240b3f9d7ff9220591c874e87807ebe4e1191e34643abd57b9fa`  
		Last Modified: Mon, 23 Nov 2026 19:34:15 GMT  
		Size: 12.0 KB (12006 bytes)  
		MIME: application/vnd.in-toto+json
