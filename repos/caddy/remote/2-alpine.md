## `caddy:2-alpine`

```console
$ docker pull caddy@sha256:ad27e531c8b286ff153c0e6e16587a1583e4111bb58c4d83bd73d6d3ef0a0ce1
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

### `caddy:2-alpine` - linux; amd64

```console
$ docker pull caddy@sha256:98eb57d882ccd5213d1688764db10c1ca2c58a1ca3a6717a3411ad798f7a423a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23907283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af555904a0961945f16bb323a501457b13a4f7e9bde969b145b97da80b38ecbe`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:09:03 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Mon, 22 Jun 2026 20:09:04 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Mon, 22 Jun 2026 20:09:05 GMT
ENV CADDY_VERSION=v2.11.4
# Mon, 22 Jun 2026 20:09:05 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Mon, 22 Jun 2026 20:09:05 GMT
ENV XDG_CONFIG_HOME=/config
# Mon, 22 Jun 2026 20:09:05 GMT
ENV XDG_DATA_HOME=/data
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 22 Jun 2026 20:09:05 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 22 Jun 2026 20:09:05 GMT
EXPOSE map[80/tcp:{}]
# Mon, 22 Jun 2026 20:09:05 GMT
EXPOSE map[443/tcp:{}]
# Mon, 22 Jun 2026 20:09:05 GMT
EXPOSE map[443/udp:{}]
# Mon, 22 Jun 2026 20:09:05 GMT
EXPOSE map[2019/tcp:{}]
# Mon, 22 Jun 2026 20:09:05 GMT
WORKDIR /srv
# Mon, 22 Jun 2026 20:09:05 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8432a27d0751eb996e29e368c282dbfd2d97e5b744ad940ed9a08b6300318af`  
		Last Modified: Mon, 22 Jun 2026 20:09:12 GMT  
		Size: 2.8 MB (2760570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee31d5a470f0e64a85c28c82ad55a5bd6b5359db59197c76b9daba7f36c288e9`  
		Last Modified: Mon, 22 Jun 2026 20:09:12 GMT  
		Size: 7.5 KB (7502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0449c657909db1625317d13589fcd22909d657bdc6357101428c90acce4e929`  
		Last Modified: Mon, 22 Jun 2026 20:09:12 GMT  
		Size: 17.3 MB (17294758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ac93e0dc57158bf4e7bfeb068df1aaf7faeda5675bf6549c32cb20112e804db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 KB (332891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e944dd2922a565c9021b63caf22ab470156069942351bf1cd5dabf2268b25f4`

```dockerfile
```

-	Layers:
	-	`sha256:a39a20466be46fdee3ae825e32040ebd50155a64516772585a4a214a7fad4eb1`  
		Last Modified: Mon, 22 Jun 2026 20:09:12 GMT  
		Size: 314.5 KB (314461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fccd04675d0f07dd45c595d13955410e7214c29cc8bc012c27714ce29f32a13`  
		Last Modified: Mon, 22 Jun 2026 20:09:12 GMT  
		Size: 18.4 KB (18430 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm variant v6

```console
$ docker pull caddy@sha256:8f8852265bda4b1bb17253a7dd8d74abc71a7d9dd8b9c1629d17b614935bbdc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22653884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c99104e31da99d9a7c73242c3a0412ad204b341fff2d2c7327494dda6c9257e`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:26:25 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 17 Sep 2026 22:26:26 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 17 Sep 2026 22:26:28 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 17 Sep 2026 22:26:28 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 17 Sep 2026 22:26:28 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 17 Sep 2026 22:26:28 GMT
ENV XDG_DATA_HOME=/data
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 17 Sep 2026 22:26:28 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 17 Sep 2026 22:26:28 GMT
EXPOSE map[80/tcp:{}]
# Thu, 17 Sep 2026 22:26:28 GMT
EXPOSE map[443/tcp:{}]
# Thu, 17 Sep 2026 22:26:28 GMT
EXPOSE map[443/udp:{}]
# Thu, 17 Sep 2026 22:26:28 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 17 Sep 2026 22:26:28 GMT
WORKDIR /srv
# Thu, 17 Sep 2026 22:26:28 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed270c250aa0d27fcfcc3459f2f6ab611932f06c2d2263fe5cc7125895bdd2da`  
		Last Modified: Thu, 17 Sep 2026 22:26:33 GMT  
		Size: 2.7 MB (2714008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45acd57f2d97946a5c68c827a6ebe46becf2db76f3db4c276a4bcd284c047e1`  
		Last Modified: Thu, 17 Sep 2026 22:26:33 GMT  
		Size: 7.5 KB (7500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb16e4e9a561e8dead349249669048917fff72477a914efd8ecd2772ebdff94`  
		Last Modified: Thu, 17 Sep 2026 22:26:34 GMT  
		Size: 16.4 MB (16377418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:90ec1adfc15934b9ef06dd247007c7fd87c394e9fe5a4f24832247f61cc75c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.4 KB (18353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d821edd076fb4c5f611969c64c98aa0f6f8c86c3fc6d41c4359e53f2348c058d`

```dockerfile
```

-	Layers:
	-	`sha256:d28e4555f4aae6f2bf0492c44f49b1dcd32c8f4108be0d574c45c1ff9fc6b785`  
		Last Modified: Thu, 17 Sep 2026 22:26:33 GMT  
		Size: 18.4 KB (18353 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm variant v7

```console
$ docker pull caddy@sha256:12f810666b608f6d1ee0d0ea70bc0927af70dd673b5dfba9965318872139dbb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22216628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8959080a0f847062efdd3ef4567ec8fadc9b7d448e82716eaab98e80f073dc`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:27:57 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 17 Sep 2026 22:27:58 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 17 Sep 2026 22:27:59 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 17 Sep 2026 22:27:59 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 17 Sep 2026 22:27:59 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 17 Sep 2026 22:27:59 GMT
ENV XDG_DATA_HOME=/data
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 17 Sep 2026 22:27:59 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 17 Sep 2026 22:27:59 GMT
EXPOSE map[80/tcp:{}]
# Thu, 17 Sep 2026 22:27:59 GMT
EXPOSE map[443/tcp:{}]
# Thu, 17 Sep 2026 22:27:59 GMT
EXPOSE map[443/udp:{}]
# Thu, 17 Sep 2026 22:27:59 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 17 Sep 2026 22:27:59 GMT
WORKDIR /srv
# Thu, 17 Sep 2026 22:27:59 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576a67c8ef924c3d775537678f9603c35a52426532df2cec9a65e64124a372a7`  
		Last Modified: Thu, 17 Sep 2026 22:28:06 GMT  
		Size: 2.6 MB (2585465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0505b519e4796b69f8a752e9ae808eb0cbc7ac6094c0ecc68747e34340dc6e94`  
		Last Modified: Thu, 17 Sep 2026 22:28:05 GMT  
		Size: 7.5 KB (7499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e91a7d98b4b19c300ab3476f01ab14c9d42e4d525fdb1b40d7cba50c155445`  
		Last Modified: Thu, 17 Sep 2026 22:28:06 GMT  
		Size: 16.4 MB (16360719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:e60cfec65393e0378b5d43256904614070dcc21572daef1fb51ce8c460d5d85a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.7 KB (333741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118831553bf052484cfc41624f9711e578c028b84293f222228682bcdfbd1b58`

```dockerfile
```

-	Layers:
	-	`sha256:b6435f21e33d3657601648414beae61b24888458d029cd2d785a4144c359d1e4`  
		Last Modified: Thu, 17 Sep 2026 22:28:06 GMT  
		Size: 315.2 KB (315173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c7a2d651d2bdcb75e629324f614b5d0a9982f7b4362a960e34cbf971616fe37`  
		Last Modified: Thu, 17 Sep 2026 22:28:06 GMT  
		Size: 18.6 KB (18568 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; arm64 variant v8

```console
$ docker pull caddy@sha256:c802bf2721a427e961b9fd6a194c3888a180de9990b43f8530a02bd6be017e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22751336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b20b62e1c76d212304053dc6484bd1f2186018e2baa217ce7a35cec0ded404c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:16:40 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Thu, 17 Sep 2026 22:16:41 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Thu, 17 Sep 2026 22:16:42 GMT
ENV CADDY_VERSION=v2.11.4
# Thu, 17 Sep 2026 22:16:42 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Thu, 17 Sep 2026 22:16:42 GMT
ENV XDG_CONFIG_HOME=/config
# Thu, 17 Sep 2026 22:16:42 GMT
ENV XDG_DATA_HOME=/data
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 17 Sep 2026 22:16:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 17 Sep 2026 22:16:42 GMT
EXPOSE map[80/tcp:{}]
# Thu, 17 Sep 2026 22:16:42 GMT
EXPOSE map[443/tcp:{}]
# Thu, 17 Sep 2026 22:16:42 GMT
EXPOSE map[443/udp:{}]
# Thu, 17 Sep 2026 22:16:42 GMT
EXPOSE map[2019/tcp:{}]
# Thu, 17 Sep 2026 22:16:42 GMT
WORKDIR /srv
# Thu, 17 Sep 2026 22:16:42 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7f9d8aea544a9e1512b7e7daa76c2cc962d7dc024db0fc3fdf5144cef0d3a7`  
		Last Modified: Thu, 17 Sep 2026 22:16:48 GMT  
		Size: 2.8 MB (2803332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aeb8ad86aa409319581a97e9e7270c9c4f96fa80000af944d3e3d74347e2f6c`  
		Last Modified: Thu, 17 Sep 2026 22:16:48 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6c010e613ea62fcae3f75b1f0bfe99f34965f41dbcfea1069436839d224ba4`  
		Last Modified: Thu, 17 Sep 2026 22:16:48 GMT  
		Size: 15.8 MB (15754415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:363634c4b3d74b7e58ef4971a7ce6fe4b28238d155d86f22345fcfe46aebd75b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 KB (333820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74deea4dafd75089ff3647853d58f8acaea12463fbbd814298ea2dbb55ca4440`

```dockerfile
```

-	Layers:
	-	`sha256:86a8cc7a2396efea2520a5427317e95e7dc02f1acde33995b07484a1a504bab3`  
		Last Modified: Thu, 17 Sep 2026 22:16:48 GMT  
		Size: 315.2 KB (315209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6170f6d55e00030ea2f30495d7d4950122b4373816ff3f839d5e6a80fab596f8`  
		Last Modified: Thu, 17 Sep 2026 22:16:48 GMT  
		Size: 18.6 KB (18611 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; ppc64le

```console
$ docker pull caddy@sha256:12da9ddb61518de56f24a524ef17e36cd8916e54ab8e558b01b8a4ed5c4ed1cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22464678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:449100e461c46ad1f54f1e0d36bde7556f7582b3b4e46428a6f1376e64cf4990`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:34:22 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Mon, 22 Jun 2026 21:34:23 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Mon, 22 Jun 2026 21:34:25 GMT
ENV CADDY_VERSION=v2.11.4
# Mon, 22 Jun 2026 21:34:25 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Mon, 22 Jun 2026 21:34:25 GMT
ENV XDG_CONFIG_HOME=/config
# Mon, 22 Jun 2026 21:34:25 GMT
ENV XDG_DATA_HOME=/data
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 22 Jun 2026 21:34:25 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 22 Jun 2026 21:34:25 GMT
EXPOSE map[80/tcp:{}]
# Mon, 22 Jun 2026 21:34:25 GMT
EXPOSE map[443/tcp:{}]
# Mon, 22 Jun 2026 21:34:25 GMT
EXPOSE map[443/udp:{}]
# Mon, 22 Jun 2026 21:34:25 GMT
EXPOSE map[2019/tcp:{}]
# Mon, 22 Jun 2026 21:34:27 GMT
WORKDIR /srv
# Mon, 22 Jun 2026 21:34:27 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebdc9810438e19119e5f3562bb624c844de1d2a9148135c87eb6c86a3830374`  
		Last Modified: Mon, 22 Jun 2026 21:34:38 GMT  
		Size: 2.9 MB (2894597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7128645313ae5db4f06c0120d3c35621d0cf3750bf6ae1ee262a84e54685d075`  
		Last Modified: Mon, 22 Jun 2026 21:34:37 GMT  
		Size: 7.5 KB (7497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45c1c45a70c2bd2a2e7231635ea604cb71f0ef5b845850ba2047d2e5d4629e5`  
		Last Modified: Mon, 22 Jun 2026 21:34:38 GMT  
		Size: 15.8 MB (15750253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:16d5a3baa1a6a0f2742ce11871e04086b7689094819c15c66c8b4602faae9dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.4 KB (332370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3704bc1ce53347f7abdb2486c06aea457a318f9af0df5835aaffffefc0a42b90`

```dockerfile
```

-	Layers:
	-	`sha256:ea39ed8e54005d22b6ca5430a685e0986eede5e17893ec40fe3424c838a3fdd1`  
		Last Modified: Mon, 22 Jun 2026 21:34:37 GMT  
		Size: 313.9 KB (313868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cdccf7f01533cde69f3553f1247104fda3a56db5e3c3b29236c907bace3d7ad8`  
		Last Modified: Mon, 22 Jun 2026 21:34:37 GMT  
		Size: 18.5 KB (18502 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; riscv64

```console
$ docker pull caddy@sha256:f3257d33b5a851e4e46f48cd50f13ef096a6cbb3ffd5b4032cb5f60f5b148498
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22772308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0201a1c1d768eee6cdb96afad1cc9a023c37f04bc39869ea83a5971dfc91f82b`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 24 Jun 2026 03:21:59 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Wed, 24 Jun 2026 03:22:02 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Wed, 24 Jun 2026 03:22:08 GMT
ENV CADDY_VERSION=v2.11.4
# Wed, 24 Jun 2026 03:22:08 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Wed, 24 Jun 2026 03:22:08 GMT
ENV XDG_CONFIG_HOME=/config
# Wed, 24 Jun 2026 03:22:08 GMT
ENV XDG_DATA_HOME=/data
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 24 Jun 2026 03:22:08 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 24 Jun 2026 03:22:08 GMT
EXPOSE map[80/tcp:{}]
# Wed, 24 Jun 2026 03:22:08 GMT
EXPOSE map[443/tcp:{}]
# Wed, 24 Jun 2026 03:22:08 GMT
EXPOSE map[443/udp:{}]
# Wed, 24 Jun 2026 03:22:08 GMT
EXPOSE map[2019/tcp:{}]
# Wed, 24 Jun 2026 03:22:08 GMT
WORKDIR /srv
# Wed, 24 Jun 2026 03:22:08 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f34b1177ca03cc356a6be5bb8e35c43f2520f72de4950d43bc21038c3abcc4e`  
		Last Modified: Wed, 24 Jun 2026 03:22:57 GMT  
		Size: 2.9 MB (2895796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178e5735e1cdc61fdc6779f2636706bcd2bbf4ee6a795aa70718537079130914`  
		Last Modified: Wed, 24 Jun 2026 03:22:56 GMT  
		Size: 7.5 KB (7504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb855654250809efc7a6e66055c9f26f91c6096f17e72672a65139331e495dd`  
		Last Modified: Wed, 24 Jun 2026 03:22:59 GMT  
		Size: 16.3 MB (16295736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:ee9eb2ce3568436baa2073fddd7a3e89e21c8532deaabbb7f983b5de293ce583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.4 KB (332366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24da058c1b1bfd250ca15454257bbbfaabf811adc338e9400bf7ed623c3adc78`

```dockerfile
```

-	Layers:
	-	`sha256:501a55d608dac67e8f91a7108601d5ed6510c97f0beea7474a28623f8a2a1ea1`  
		Last Modified: Wed, 24 Jun 2026 03:22:56 GMT  
		Size: 313.9 KB (313864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd0adb444f090dc73404697983ef7e5a463eb690f4e188962f1390859556e546`  
		Last Modified: Wed, 24 Jun 2026 03:22:56 GMT  
		Size: 18.5 KB (18502 bytes)  
		MIME: application/vnd.in-toto+json

### `caddy:2-alpine` - linux; s390x

```console
$ docker pull caddy@sha256:fd8c0d7fda5e83a9b19770632a1bfa2f55599e5e033e04c6a9cb75912067e0fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23260289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb05a8a2a1014db3b3b68e2a2ea5f693ef8e34a3df64427d5925e0e4efcc4aa`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:49:58 GMT
RUN apk add --no-cache 	ca-certificates 	curl 	libcap 	mailcap # buildkit
# Mon, 22 Jun 2026 20:49:59 GMT
RUN set -eux; 	mkdir -p 		/config/caddy 		/data/caddy 		/etc/caddy 		/usr/share/caddy 	; 	chmod 1777 /config/caddy /data/caddy; 	wget -O /etc/caddy/Caddyfile "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"; 	wget -O /usr/share/caddy/index.html "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html" # buildkit
# Mon, 22 Jun 2026 20:50:00 GMT
ENV CADDY_VERSION=v2.11.4
# Mon, 22 Jun 2026 20:50:00 GMT
RUN set -eux; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64)  binArch='amd64'; checksum='8220d1f013b6f27510247b2360c9e0ca9f018feebd82515f07635318b34ff9777ccc8fd0b6e6f2486ce3a33fe389fbb7db12d05baa474f4587509fb4f5ebf1c9' ;; 		armhf)   binArch='armv6'; checksum='d4300f3e0d9af290bebd65721edb145025db680e6a7e6ad2ed917bf8c9d6e72abe788f720cdf046fe210ca1b43f9a7ddcda07a634296d3012527299ab78cc3ed' ;; 		armv7)   binArch='armv7'; checksum='081959488f0d0da2725aea2d01330bc1501b3e52c1147b6c9da1da007524890ceba6845415355ba8f97aa29535e6f37521da1d7f10c5c63c55bb86c5d9f51bfb' ;; 		aarch64) binArch='arm64'; checksum='d5a7c423853c24a799765e0e8210d5c7c22a8f56ed37a3cae2fb9f58be138853c02b4efd6b59d576e6d8c7c0d30b9c1592deeaa6a536ff69bcca23b8c1ea709c' ;; 		ppc64el|ppc64le) binArch='ppc64le'; checksum='74b11a1f098517be7e6b11c7f7da6b5a0be9a18634f9a575c5ba6f5518a1bcbe4fe903f6c32a6d7ba47464fcaf12fde95e5f301cd829c4f41633484b0a4f817a' ;; 		riscv64) binArch='riscv64'; checksum='05187bfc217a67ab32bbb0ebb9bd27ccbac0f80e41ad47dba272d10c34b1bf00f67a57ba05230eefa791898b2e2f40158631d81c3639cb514d59ac6d4976b044' ;; 		s390x)   binArch='s390x'; checksum='fc2cd4294bf43e6645ee639532361c8e432a2cc7639134cfa0f0c44724146f4d9a278542ed56399e53aaac857b767d26ae748e754a790d106dd192c4c91c09f5' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 	wget -O /tmp/caddy.tar.gz "https://github.com/caddyserver/caddy/releases/download/v2.11.4/caddy_2.11.4_linux_${binArch}.tar.gz"; 	echo "$checksum  /tmp/caddy.tar.gz" | sha512sum -c; 	tar x -z -f /tmp/caddy.tar.gz -C /usr/bin caddy; 	rm -f /tmp/caddy.tar.gz; 	setcap cap_net_bind_service=+ep /usr/bin/caddy; 	chmod +x /usr/bin/caddy; 	caddy version # buildkit
# Mon, 22 Jun 2026 20:50:00 GMT
ENV XDG_CONFIG_HOME=/config
# Mon, 22 Jun 2026 20:50:00 GMT
ENV XDG_DATA_HOME=/data
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.version=v2.11.4
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.title=Caddy
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Mon, 22 Jun 2026 20:50:00 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Mon, 22 Jun 2026 20:50:00 GMT
EXPOSE map[80/tcp:{}]
# Mon, 22 Jun 2026 20:50:00 GMT
EXPOSE map[443/tcp:{}]
# Mon, 22 Jun 2026 20:50:00 GMT
EXPOSE map[443/udp:{}]
# Mon, 22 Jun 2026 20:50:00 GMT
EXPOSE map[2019/tcp:{}]
# Mon, 22 Jun 2026 20:50:00 GMT
WORKDIR /srv
# Mon, 22 Jun 2026 20:50:00 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4225fb1130726308fc0418f624c55f96a62786108833a1d2508075a1ae41df`  
		Last Modified: Mon, 22 Jun 2026 20:50:11 GMT  
		Size: 2.9 MB (2882309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e505701cb22a5cee89f7fbca57c10eecef4653f9097b70187c8150d7be400e7`  
		Last Modified: Mon, 22 Jun 2026 20:50:11 GMT  
		Size: 7.5 KB (7501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab77a836cfc9d0a98a4b642eb6b76cd947256e076ca15a82e2834204a16c96ed`  
		Last Modified: Mon, 22 Jun 2026 20:50:11 GMT  
		Size: 16.7 MB (16663198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `caddy:2-alpine` - unknown; unknown

```console
$ docker pull caddy@sha256:2b0d8fbb03558c3961fe222b9a2873356ed7d81ca4a8f71b3d8a28b47e729e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.2 KB (332240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7c2ef70196d948935d854ce77febbcd49efd6ce44004f9241cee0610d862be`

```dockerfile
```

-	Layers:
	-	`sha256:752f38fef333445d4c4332e666fc376db5bddf78511e42cc10a40bb0a1e585d5`  
		Last Modified: Mon, 22 Jun 2026 20:50:11 GMT  
		Size: 313.8 KB (313810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de6c7f6995bc8ddd64972bc9ba92b219cb0eeeb9b2c7addb3788f851bf02bd28`  
		Last Modified: Mon, 22 Jun 2026 20:50:11 GMT  
		Size: 18.4 KB (18430 bytes)  
		MIME: application/vnd.in-toto+json
