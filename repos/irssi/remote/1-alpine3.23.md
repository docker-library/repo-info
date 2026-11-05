## `irssi:1-alpine3.23`

```console
$ docker pull irssi@sha256:907bd8a93a2ff28ded5da415a0de54b2a4c80990726f3eee670d45b12d0a43a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `irssi:1-alpine3.23` - linux; amd64

```console
$ docker pull irssi@sha256:10682944689d0bac10ff3de89c039609a3681d6617f04efe8825c78f8627eddd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7773520a95b316f4c62a1bdc7cfeed99cea83695b4dcc001fec54eb47413403e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:10 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:56:10 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:56:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:56:10 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:56:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:56:23 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:56:23 GMT
USER user
# Thu, 05 Nov 2026 18:56:23 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153eb96a9b5dc9565f557c5c5f7222a7c97681e0610b74c949b59796f035ed08`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 10.8 MB (10815513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24281d2acaac72631003e68f6dd533dee76d6331e278182196edbad294f84965`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7a0f14676f6da8bd15597a6551a78fa020761ba69af7b612210fd643ddb36`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 6.1 MB (6067943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:6f97a389d6ddc5adf3b3ee6ab67608a9de87266a9088c23446d8151c5f26fc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40a4574d537c018153d004dc4096cb0bc60c32b0712bf2c6d0bffb0f3a5f50b`

```dockerfile
```

-	Layers:
	-	`sha256:dab5f1c3d4c9120402c206e895bf05523e83e1e522f5ed83451d0a9b1ea40366`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 1.3 MB (1289248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f455d1c5c8a75f18e093d4ec5efaa0d3eadd6d062703fb1258a38e2d3f0f14fb`  
		Last Modified: Thu, 05 Nov 2026 18:56:30 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v6

```console
$ docker pull irssi@sha256:e9940753f49622f53fefa43723986bd654936a0435de06e08034aea06af0dd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19480325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169aa2e733fe5fde2822935396b616ee295002f3242e36ef32678347fe8bbfd4`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:01 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:19:01 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:19:01 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:19:01 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:19:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:19:17 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:19:17 GMT
USER user
# Thu, 05 Nov 2026 18:19:17 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010e3505d8b0122aadb8b0d0b5e2fac89a1c6ea0bddbbb19d5ebe0ab095e5fb6`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 10.0 MB (10025762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5864cd691741211885c86f434f91180255f33f38b737be953a2278ad263552bc`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914ba4b363da5fc964a4b0813a887a729a99d5e27c1c13ea86ab456605478e9a`  
		Last Modified: Thu, 05 Nov 2026 18:19:23 GMT  
		Size: 5.9 MB (5895325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:9d57c895bd73dbe39627f16b7135eee83efd300a7b2b56ea07b87bc982597400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1d9730b7b2adb55d4570e355d168e60b04084ca5e55f08c8a8ae4b573059c4`

```dockerfile
```

-	Layers:
	-	`sha256:26ab2839e9fe07c6a50eae7f349e1f27a440355aab740c4f175d2adcc7c4f97a`  
		Last Modified: Thu, 05 Nov 2026 18:19:22 GMT  
		Size: 17.4 KB (17422 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm variant v7

```console
$ docker pull irssi@sha256:d9abe7a8abb266bbf575c5f1f30b96d622bb8f58b9030a09494cff9e182c6c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18770756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a75c7bfa7b3714cbaf10607a64a4cfedd729a31299ff3adeef47873972602a`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:30 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:18:30 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:18:30 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:18:30 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:18:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:18:47 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:18:47 GMT
USER user
# Thu, 05 Nov 2026 18:18:47 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea5432e6ab0500a7b2737280cfb74cda74139ce5a4f3a224b229bf12b413d85`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 9.9 MB (9859395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a641cfb83b11ab5c8b97d83677380490ef303667f41735931f552b8ecdd8f`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209b5ffae4c8d90d9762885384e0b0f0ce71a005858f9e8a9fb4d8eae9639355`  
		Last Modified: Thu, 05 Nov 2026 18:18:55 GMT  
		Size: 5.6 MB (5643548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:63752f1ba387f3326217f4d82afa72d3c726cd32807659b39695ff6d5045e656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1309290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:415f4add2f905e745c3497e5cf774c0482952267511c39b7da528b0f8f6905ee`

```dockerfile
```

-	Layers:
	-	`sha256:4a25585cadfff889ac0f34f9bde8009f5d98a5e84c8f37c7ee9fc4d68c2eac8b`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 1.3 MB (1291656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d714a48df0d2612d4f40390d953d9df3b679b6a161cab4b6219ef211b78053e5`  
		Last Modified: Thu, 05 Nov 2026 18:18:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:6de2ad42d89c559426498e7483c1db0abf023694abf0275757ba723fd09aef7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20879484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f910b7a141b009fd6ce3e946f30adc985da47cd52078d15855fed8136c00f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:49 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:52:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:52:02 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:52:02 GMT
USER user
# Thu, 05 Nov 2026 18:52:02 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5638efab2b4eaba0b025282b404bbd862223b1712ffc08be8ef3d81227755f8`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 10.7 MB (10749440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4317a1f912d9d7d65d54d4531a6b486669cae379ffef4fa87439ec8a235306e`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93bd37bb7508085789e03c8049ef43da625cafb166d2d06d3fe40e0a4f09328`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 5.9 MB (5938838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:cebbec75f69919364d547da5dc8aee60c12a3d17f18dfb37688ada116bacfbf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad59022be4a9e5ff0f3cddd444f22a0dd593d613fbea4e721c24ef9a0fbc814a`

```dockerfile
```

-	Layers:
	-	`sha256:8ca9ae37854cc7aecae581d442e5cc8052f13a827662d8a63619e3f0a40f328f`  
		Last Modified: Thu, 05 Nov 2026 18:52:08 GMT  
		Size: 1.3 MB (1288702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defc35eed1069d29f57053568ade3e7d90ddab09d2528c781a12fa1287a05684`  
		Last Modified: Thu, 05 Nov 2026 18:52:09 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; 386

```console
$ docker pull irssi@sha256:728437aee988d9d937d5ef62367c260d9cb7c93533a4b34004b4c54164d34359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db4feae906072daac04e6710dec0d239f60d4809479d0b709fa206cc560af1f`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:03 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:03 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:03 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:03 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:21 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:21 GMT
USER user
# Thu, 05 Nov 2026 18:16:21 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40518fdd37d486420a6285f46f48189c5d30158d971d837be9177f2d5403cf70`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 10.3 MB (10349718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebdbd0e0933ec8446d913f38739a34833c377aa1b658aa8fc2117073c3fade`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9073c9219b05a2aa18308c501b6f4657b6a8b596aff9aca2ac23472982fe34e`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 6.1 MB (6145124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:def7a127dad963b178d0eddcab5a02a4d864f8ab9a96cd133fce8e7a6e6274f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5782ac570c48b3c5d63277469ba727fd310bb9fe34391f4640cafe249a18b3e`

```dockerfile
```

-	Layers:
	-	`sha256:c9f42695ab2c742d36040694bf1bf1dbaf14cc3ac293269e2f2e9ad2f797d2e9`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 1.3 MB (1289203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e6769fc1db6391289bd52f74bedc3848963117a9b826b307c9b6ccf076369d`  
		Last Modified: Thu, 05 Nov 2026 18:16:27 GMT  
		Size: 17.4 KB (17444 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; ppc64le

```console
$ docker pull irssi@sha256:01451d7594170904828a6c54b6ac39c88f05d5d354fd26b927e18cc3b6db5620
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe9f3a631f83b94485c1bbfbfb7cec6054c9033ec0fa1f4720934fead0c6a2e0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV HOME=/home/user
# Thu, 22 Oct 2026 10:32:42 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 22 Oct 2026 10:32:42 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 10:32:42 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 22 Oct 2026 10:33:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 22 Oct 2026 10:33:07 GMT
WORKDIR /home/user
# Thu, 22 Oct 2026 10:33:07 GMT
USER user
# Thu, 22 Oct 2026 10:33:07 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919971710de78afadd31f0d3899ea71d96ef55f5849386a7b811bcc3cd9f6a0`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 11.0 MB (11039485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5199fd69215c5c6e933f7649eff0673e7240f332a9cc24ed9c9fdf65aeae502e`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab8dbc08914d252096c11ae9fec5ce3b6589f3b64a1ada57a5159f154638141b`  
		Last Modified: Thu, 22 Oct 2026 10:33:22 GMT  
		Size: 6.4 MB (6363970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:850c8b7dd3bd6b8c8ede81d85d252e57badd5cc32f08c0bd87263c416b8bed11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff8f44784d1130dac63b52027e654fe4edda3a1c6916a6be537c231750c1110`

```dockerfile
```

-	Layers:
	-	`sha256:acf7d10cd0d792752ad67bd05aacbee92c3a2e103fa1d2ad39b9660075a3df2d`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 1.3 MB (1288655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85b7e407978067efb2b05383b6b80333eaf04cf6db7ff8113244326e5533687`  
		Last Modified: Thu, 22 Oct 2026 10:33:21 GMT  
		Size: 17.6 KB (17571 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; riscv64

```console
$ docker pull irssi@sha256:c24c25d5d5a242e8f9edf9c6788b0cd213ce8bccd91bef8dd1edaa316c19d1e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e151e95afa7a0cb35c839f8fb02feebea11ed3d5df06c49125a713112bc3dee`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:02:35 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV HOME=/home/user
# Sat, 24 Oct 2026 16:02:36 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 24 Oct 2026 16:02:36 GMT
ENV LANG=C.UTF-8
# Sat, 24 Oct 2026 16:02:36 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 24 Oct 2026 16:06:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 24 Oct 2026 16:06:37 GMT
WORKDIR /home/user
# Sat, 24 Oct 2026 16:06:37 GMT
USER user
# Sat, 24 Oct 2026 16:06:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7d69c25cc87bbc8892fc547be1d0629808c7da8bd8bb3e74680bf39866add6`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 10.2 MB (10247990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50807fcfd5cb73bc16c92a39208b82f2bab60a55ad7fe838d260c7d60d7895d3`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7724e34420f5f9833cddd0d5f39fa315be1dc9eb49fe8506acdfbc2c3863ef0`  
		Last Modified: Sat, 24 Oct 2026 16:07:43 GMT  
		Size: 6.1 MB (6065935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:a1fe8ae31046a44a7de54e51eeef536f71c6244702dbdc21952b98a9f43df755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969ab3c4f6593f35bd6eaaa6d614bbaca1c35390efbbdc18924cdc26550ea366`

```dockerfile
```

-	Layers:
	-	`sha256:75c6988d47b29d1965a595dfc5416429889921bd68f8ae136122bb6fff497ee5`  
		Last Modified: Sat, 24 Oct 2026 16:07:42 GMT  
		Size: 1.3 MB (1288651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21081e308e0e0d517290ce8f2d953baaff734ba1a69ff4b94d0a75e15a48a59f`  
		Last Modified: Sat, 24 Oct 2026 16:07:41 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:1-alpine3.23` - linux; s390x

```console
$ docker pull irssi@sha256:72d543b1bdd2bc361bdbb7e1c37a04c40dbc98e2f5d75ca43508e3d6465be9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21289259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf20a46d6ccf7fe1ab269f1d33736de96a1742797a2bea78c31ee1df96968f0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:21 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV HOME=/home/user
# Thu, 05 Nov 2026 18:16:22 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 05 Nov 2026 18:16:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:16:22 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 05 Nov 2026 18:16:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 05 Nov 2026 18:16:36 GMT
WORKDIR /home/user
# Thu, 05 Nov 2026 18:16:36 GMT
USER user
# Thu, 05 Nov 2026 18:16:36 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98075b8354a00af8cd754f659acdeb71e63b663094afefc5f3e3d5826b41bba8`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 11.4 MB (11364945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d82c65930b81ebdd0b42b966ef8c33baf21d01c0da3ce19f2bcf3520f7165fb`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd80407b4d39455a636b3ad42ffa1c7e42fb3933ad132949ef163590e5cc54ac`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 6.2 MB (6204981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:1-alpine3.23` - unknown; unknown

```console
$ docker pull irssi@sha256:1038b62ab49bd4e651c9339e27203f780644bd3829e97bab3eefd33ccdea0e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1306095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470a73da7320635c4bb1f055661cad03623d59e9cf3a3d4285ff76bf84990164`

```dockerfile
```

-	Layers:
	-	`sha256:15348a0e166d7840dcb90d22f9aef68e8ef70c496e845cd7667d338c7bf2a2c5`  
		Last Modified: Thu, 05 Nov 2026 18:16:48 GMT  
		Size: 1.3 MB (1288597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e522bf53ac5c040ff0ef857951718702fcb095bcc3d91bbff9ca3efc235dde35`  
		Last Modified: Thu, 05 Nov 2026 18:16:47 GMT  
		Size: 17.5 KB (17498 bytes)  
		MIME: application/vnd.in-toto+json
