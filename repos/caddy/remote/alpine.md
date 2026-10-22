## `caddy:alpine`

```console
$ docker pull caddy@sha256:24ec7b05bc532c7bb57f727030c5056e257ff7138b4b50460306819ff79362bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `caddy:alpine` - linux; amd64

```console
$ docker pull caddy@sha256:04913b1da43339a40ad1ea87827d70a576ac5aa6cf674c6e24fdca675887533a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24871432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3067cc4e02c091399edbd5d65f85a3ff4d511574aecadb47f280c3761e68852e`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:32 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 21 Oct 2026 21:32:33 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 21 Oct 2026 21:32:33 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 21 Oct 2026 21:32:33 GMT
ENV XDG_DATA_HOME=/data
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 21 Oct 2026 21:32:33 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[443/tcp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[443/udp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 21 Oct 2026 21:32:33 GMT
WORKDIR /srv
# Wed, 21 Oct 2026 21:32:33 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c06d09d8244ac3f2b828928ae98e963b8aa14f589c241dfb3dda22f4b561f7f`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 2.8 MB (2784315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae0290468fa31ca7860f0f322daa31dbb7a20e958e8fb52d421f803ce600284`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f0829a46db8dfb4f966e36792d8d95c7d26b4226af572a4992b9ec42a14e82`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 18.2 MB (18227357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:4910e59aced419e87971a6f43e52ddc436b0d7a90d11cd8dd21b7925ce49e31d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.6 KB (334621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f36940f2084937dfb21fa169a2bbf0cab58b81ec27fe6865101c66e1e3006f9a`

```dockerfile
```

-	Layers:
	-	`sha256:707bcf3a411e336266c40c3d905427c1eebc55eab07f25604a696ac27a6474ef`  
		Last Modified: Wed, 21 Oct 2026 21:32:41 GMT  
		Size: 316.2 KB (316191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50dfc88401f131b0fc5e1aeadc786cf1ff9c6dba398cf9d01ca58d7377f05d7f`  
		Last Modified: Wed, 21 Oct 2026 21:32:40 GMT  
		Size: 18.4 KB (18430 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:9f47d119e1ecae8ed180f190a65e0d8b5d16df73b31a1b552013985902f98b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23563987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb6b082a2f704cb7675bc19d03451cccc49fed4bb3c491c64d28ccb593b850a`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:38:56 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 21 Oct 2026 21:38:57 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 21 Oct 2026 21:38:59 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 21 Oct 2026 21:38:59 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 21 Oct 2026 21:38:59 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 21 Oct 2026 21:38:59 GMT
ENV XDG_DATA_HOME=/data
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 21 Oct 2026 21:38:59 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 21 Oct 2026 21:38:59 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 21:38:59 GMT
EXPOSE map[443/tcp:{}]
# Wed, 21 Oct 2026 21:38:59 GMT
EXPOSE map[443/udp:{}]
# Wed, 21 Oct 2026 21:38:59 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 21 Oct 2026 21:38:59 GMT
WORKDIR /srv
# Wed, 21 Oct 2026 21:38:59 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c90acdf47b294ef239fda2d82a104567c6e747a7bd60a448ce8d0e240228ca`  
		Last Modified: Wed, 21 Oct 2026 21:39:04 GMT  
		Size: 2.7 MB (2713636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dbfe134b68bf209600465a3005ad459f53826cdd060a1025b7f1c78c2cc253d`  
		Last Modified: Wed, 21 Oct 2026 21:39:05 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a0e472af0b4ec85dc197dc5982419213460ff5fb93ad49df058a58b5a66e85`  
		Last Modified: Wed, 21 Oct 2026 21:39:05 GMT  
		Size: 17.3 MB (17284633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:5b0a55b6d346760a3bdad97a24f5c1993cc010d7dd558b06ba86a476009785d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5445bb3293cf79169078b74948c5e5948d373a2d9341af50663d0f0c0f1cb704`

```dockerfile
```

-	Layers:
	-	`sha256:5b223baeec8118fe11a0c47e5f027160f7d382169c46dd817b9058f107139479`  
		Last Modified: Wed, 21 Oct 2026 21:39:04 GMT  
		Size: 18.4 KB (18353 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:5269f9816055b25a025b388964f086cb2ef6e493eaf4a2c6476f8823cc43be19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23122666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ca3c685f22a75d62b0a5ce840b3045a04cdbfb510430d5df63932f174c6543`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:19 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 21 Oct 2026 21:34:20 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 21 Oct 2026 21:34:22 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 21 Oct 2026 21:34:22 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 21 Oct 2026 21:34:22 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 21 Oct 2026 21:34:22 GMT
ENV XDG_DATA_HOME=/data
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 21 Oct 2026 21:34:22 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 21 Oct 2026 21:34:22 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 21:34:22 GMT
EXPOSE map[443/tcp:{}]
# Wed, 21 Oct 2026 21:34:22 GMT
EXPOSE map[443/udp:{}]
# Wed, 21 Oct 2026 21:34:22 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 21 Oct 2026 21:34:22 GMT
WORKDIR /srv
# Wed, 21 Oct 2026 21:34:22 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbf5c23642f1c73f806ab806bcc8a91fb32ca0e1cac23bbce911b6a7272da56`  
		Last Modified: Wed, 21 Oct 2026 21:34:29 GMT  
		Size: 2.6 MB (2585640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc9c430190b76569cf08b9cb9c9c35c7e1bfdb14c57c777a02a829a4d18fda03`  
		Last Modified: Wed, 21 Oct 2026 21:34:29 GMT  
		Size: 7.5 KB (7500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8e18f0273bf5a5e869f134bd6ab7e03998b7ede001edbc26dacec647d89e25`  
		Last Modified: Wed, 21 Oct 2026 21:34:29 GMT  
		Size: 17.3 MB (17262454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:cefb385862cd881acc91ab4ccef1d15fb0f808e074fb2e18682a2cf4982b1652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 KB (334177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e6f3e033ff1cd1185c69ea7875be4e3258c12f0d03369f89ae8f8b052e73546`

```dockerfile
```

-	Layers:
	-	`sha256:06e96b9ff67e7f56c105ee4ad34473e0b0ffaea6fd72eb72dd8f624cdcc5f56f`  
		Last Modified: Wed, 21 Oct 2026 21:34:29 GMT  
		Size: 315.6 KB (315609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0de8b37f2f1c6340cb3bdb39edff04038d7e0622800c3e4cf2a7f1fe3fd9e9d`  
		Last Modified: Wed, 21 Oct 2026 21:34:29 GMT  
		Size: 18.6 KB (18568 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:cc447f149425221422153c6cdf33a123b3f458839679f950298f68a690a54a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23632944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d68e4fa1bb71ae97c0b7e2c468aa3ccad2ae75d0294697d401e28794a5b5ab`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:34:45 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 21 Oct 2026 21:34:46 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 21 Oct 2026 21:34:47 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 21 Oct 2026 21:34:47 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 21 Oct 2026 21:34:47 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 21 Oct 2026 21:34:47 GMT
ENV XDG_DATA_HOME=/data
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 21 Oct 2026 21:34:47 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 21 Oct 2026 21:34:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 21:34:47 GMT
EXPOSE map[443/tcp:{}]
# Wed, 21 Oct 2026 21:34:47 GMT
EXPOSE map[443/udp:{}]
# Wed, 21 Oct 2026 21:34:47 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 21 Oct 2026 21:34:47 GMT
WORKDIR /srv
# Wed, 21 Oct 2026 21:34:47 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9b9d0a615484a6279e05a77b0cdc7c1a8722dac1d7694987a079b5b48f59a8`  
		Last Modified: Wed, 21 Oct 2026 21:34:54 GMT  
		Size: 2.8 MB (2802827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd994560c09151bb450937280317f716dd63cafb084ac69285ad16413f06308`  
		Last Modified: Wed, 21 Oct 2026 21:34:54 GMT  
		Size: 7.5 KB (7500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615bdd8f96f364f6d5b09e6641e64ed456c591b8e406a8e891d36232cdf2e978`  
		Last Modified: Wed, 21 Oct 2026 21:34:55 GMT  
		Size: 16.6 MB (16633091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:9fa649962e46b7f1556ca3a28dfda31be61ea5a5f4ec0cc2da7c012bb6e87586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 KB (334257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41444a38adc15f8ea771bcbee58579dc832cccfee4af101cdd01152674e6a7d7`

```dockerfile
```

-	Layers:
	-	`sha256:1364ff2523c1eff2290b00678bf3af9bc6407c5bbeaf2ac23f0e2383406e4eb6`  
		Last Modified: Wed, 21 Oct 2026 21:34:54 GMT  
		Size: 315.6 KB (315645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dfb90b0dd26720d65f633bb1f7b06299a14759770cff6f1392cfc29106526de`  
		Last Modified: Wed, 21 Oct 2026 21:34:54 GMT  
		Size: 18.6 KB (18612 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:4a69fe134e37c5b18fe897a391fbab7ed39e6af51b18eb9510ba890617fab389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23383892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3396733d8ba13a40775ba3c7cefac8c7d8742281f2b20e3b8f74ba2533832aa3`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 18:21:54 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Fri, 02 Oct 2026 18:21:55 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Mon, 05 Oct 2026 18:39:35 GMT
ENV CADDY_VERSION=v2.11.7
# Mon, 05 Oct 2026 18:39:35 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Mon, 05 Oct 2026 18:39:35 GMT
ENV XDG_CONFIG_HOME=/config
# Mon, 05 Oct 2026 18:39:35 GMT
ENV XDG_DATA_HOME=/data
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 05 Oct 2026 18:39:35 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 05 Oct 2026 18:39:35 GMT
EXPOSE map[80/tcp:{}]
# Mon, 05 Oct 2026 18:39:35 GMT
EXPOSE map[443/tcp:{}]
# Mon, 05 Oct 2026 18:39:35 GMT
EXPOSE map[443/udp:{}]
# Mon, 05 Oct 2026 18:39:35 GMT
EXPOSE map[2019/tcp:{}]
# Mon, 05 Oct 2026 18:39:35 GMT
WORKDIR /srv
# Mon, 05 Oct 2026 18:39:35 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05236ebcd2e98cade418f40d576a71dcefdc935f7ad32941013c93117f6854c9`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 2.9 MB (2923657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cd70b613c7ff06bdf628f91839a8f63fc603f161b6900d8a6ec94e7acff188`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb87d9252473930fbc9d2dc6415f6513261aca09e708864e29c8a8cf305c6769`  
		Last Modified: Mon, 05 Oct 2026 18:39:53 GMT  
		Size: 16.6 MB (16637932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:f03bd875e2986faa9b9a259a74094cdb94698795eed10517990fffc5c6d3d792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 KB (336036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9531e5b29b80f385d31078ea9cc529555ee5934467c7a493ab0c77743a0e0c3`

```dockerfile
```

-	Layers:
	-	`sha256:1a2486d1e15863caf7e687132995b0936868f01dee910d6029f0b927889114ea`  
		Last Modified: Mon, 05 Oct 2026 18:39:52 GMT  
		Size: 317.5 KB (317535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b951cf86e51045c5e7ad07cbf52ae466829343e1f551fb39667f511e0855adc`  
		Last Modified: Mon, 05 Oct 2026 18:39:52 GMT  
		Size: 18.5 KB (18501 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:aab991e55946da9096d856a7cdcf079901c46858b7127b5aaf64c0e6d8825de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23717363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e7a89b2f21b959c8fdc07c598472d039f6ea01dc7b3c2997c5726ad97c12e2`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Wed, 23 Sep 2026 04:19:16 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 23 Sep 2026 04:19:18 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Tue, 06 Oct 2026 03:51:18 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 06 Oct 2026 03:51:18 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Tue, 06 Oct 2026 03:51:18 GMT
ENV XDG_CONFIG_HOME=/config
# Tue, 06 Oct 2026 03:51:18 GMT
ENV XDG_DATA_HOME=/data
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.title=Caddy
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 06 Oct 2026 03:51:18 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Tue, 06 Oct 2026 03:51:18 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 03:51:18 GMT
EXPOSE map[443/tcp:{}]
# Tue, 06 Oct 2026 03:51:18 GMT
EXPOSE map[443/udp:{}]
# Tue, 06 Oct 2026 03:51:18 GMT
EXPOSE map[2019/tcp:{}]
# Tue, 06 Oct 2026 03:51:18 GMT
WORKDIR /srv
# Tue, 06 Oct 2026 03:51:18 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112392424d6635cd7bb288cda3544adf865573daff7b373347e21bab4e769be3`  
		Last Modified: Wed, 23 Sep 2026 04:20:15 GMT  
		Size: 2.9 MB (2919880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207c6cb9fe2d1bd4cb5399782279f561714dcaeb21371764592afef33a539552`  
		Last Modified: Wed, 23 Sep 2026 04:20:14 GMT  
		Size: 7.5 KB (7506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1169d481bae9444deb3f0fcc25907d525875ed94d988308f720e12639303b9`  
		Last Modified: Tue, 06 Oct 2026 03:52:20 GMT  
		Size: 17.2 MB (17213624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:3715ca68989e631b47cf858bdab90960dc57db2d22690d22440ccddf1f454785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 KB (336033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f7eb5a7a17e1895850142df62075c7947362a5c5b20c3cc8281a6d669c321`

```dockerfile
```

-	Layers:
	-	`sha256:87138902dc72ac19b61652dcdcb3d964cd71947b61eef585d0a71be64e1cf307`  
		Last Modified: Tue, 06 Oct 2026 03:52:17 GMT  
		Size: 317.5 KB (317531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4658d82cb270581f235e7c4949ddc53ffdc3bdddf079ed9f3c235c7e8fbea124`  
		Last Modified: Tue, 06 Oct 2026 03:52:17 GMT  
		Size: 18.5 KB (18502 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:alpine` - linux; s390x

```console
$ docker pull caddy@sha256:9517c2ab63d8dc6e19c8e64e15987e9ba2a08d434c83241f42c582e68b4e176e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24245220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f9310402317326bb2657a70fb02a6db9577bbab0a427386a0c29164b63ccdb6`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:12:10 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 21 Oct 2026 22:12:11 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 21 Oct 2026 22:12:12 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 21 Oct 2026 22:12:12 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='a7a433a1b133efc3c8d10eb0b99d52a24b5ef5c322dc77f5282182b1c0402139ab83f3a99f0c52409df77d20123fb0b523edad8a66d8f5e49136197bf61ef0e7' ;; 		armhf)   binArch='armv6'; checksum='139d7eb079be6b9fcdb2b707424e3c0c4f20f522c4f156fd27fdd05d6eaebf8c8f966104d24adfc3a5b8982626cebbec84f1c3c1b7a68edb1693e64e9708c22b' ;; 		armv7)   binArch='armv7'; checksum='6eb3894f9a215f75f3ec50e627c34b2cd6fb81d10ec7838f27c30dcf417b810f618136b507766bc17e7400a5c0f4fa6001bb062ebb7a401ee63505012615825e' ;; 		aarch64) binArch='arm64'; checksum='3db36ba90c7a6e8dda40ee3dd71fa08844c76b5fb08f61b31e5e78d2ed38e71c51dc7baed875e50d1ca1279196e84302967237386ae87c91ae9f2aaceada682e' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='1d7ca41bbcfa14048cf07f1fc5215ff7d85afb61d7f2b34e4d5b72fd3047bf3fcfb4721a4da35f640cdd949ac5ce6844a2e4371939fad6100d8c537ea15a3d55' ;; 		riscv64) binArch='riscv64'; checksum='f72d9be744675c3566f5a17a6d4b1c56e6e20d1e190b06f6f5332223048ac1c73222dc8b4b941bd8afc915f1442727c81dc19176bbcb5bfae81cb47680ae98b4' ;; 		s390x)   binArch='s390x'; checksum='dff058c9cadbdd9ab56b545900bc02327c39f54b0075707ee500755be26d416eaf8361033c929db679cd71c1687d337905047f95d3e0cd183006661778aedc3d' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 21 Oct 2026 22:12:12 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 21 Oct 2026 22:12:12 GMT
ENV XDG_DATA_HOME=/data
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 21 Oct 2026 22:12:12 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 21 Oct 2026 22:12:12 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 22:12:12 GMT
EXPOSE map[443/tcp:{}]
# Wed, 21 Oct 2026 22:12:12 GMT
EXPOSE map[443/udp:{}]
# Wed, 21 Oct 2026 22:12:12 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 21 Oct 2026 22:12:12 GMT
WORKDIR /srv
# Wed, 21 Oct 2026 22:12:12 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837199fa376c118d3163b49f8a391746ed2e9778eb401eab306e872015e321ea`  
		Last Modified: Wed, 21 Oct 2026 22:12:25 GMT  
		Size: 2.9 MB (2910176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780d909daa7539f32b300b079acc9174fe11d5ed2561322a5bdc537697fb47e9`  
		Last Modified: Wed, 21 Oct 2026 22:12:25 GMT  
		Size: 7.5 KB (7500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b0621dbb96acbbe1ee46a1f1d35a21727541578638c5741f10a7dc5bd9dbd9`  
		Last Modified: Wed, 21 Oct 2026 22:12:25 GMT  
		Size: 17.6 MB (17610393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:5e3a76d939da6b7c6a9495bea5c3039f9f8e0f30740f729c17e020d6ae2cd95e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 KB (333970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9fd0158ece7aa773c7549c83b6047a54c1e2313498ee86fa017499dfb2e7e58`

```dockerfile
```

-	Layers:
	-	`sha256:7c62e22f02074e6189a64215c23aee19413c26a0512cb50f8129345bf1068f7f`  
		Last Modified: Wed, 21 Oct 2026 22:12:25 GMT  
		Size: 315.5 KB (315540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db756dbe4ac21bb1b50983768d220293e4cf2fbb954b17b4ad3d27f1020cf6d4`  
		Last Modified: Wed, 21 Oct 2026 22:12:25 GMT  
		Size: 18.4 KB (18430 bytes)  
		MIME: application/vnd.in-toto+json
