## `irssi:alpine`

```console
$ docker pull irssi@sha256:929f300088d21f30c4ee52458f1ce61a2a6ad57d32b6f8b64065d122b914a6a1
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

### `irssi:alpine` - linux; amd64

```console
$ docker pull irssi@sha256:5d08b1e33043c4fcc026a8b1f43b1d08fb13c61d6ef1318ed192cb009a7524b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.7 MB (20737511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cecde90cd46e7bd82d9622d929750f8bab0215795b7d43e4315dc0b1d98bd56`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:16:12 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:16:12 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:16:26 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:16:26 GMT
USER user
# Thu, 17 Sep 2026 21:16:26 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2a5eb32043a2941ca1a3a4904d78b51b0979308fc9cac394125c6927ae5f28`  
		Last Modified: Thu, 17 Sep 2026 21:16:33 GMT  
		Size: 10.8 MB (10820632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e384644f15960ef28c3053ba8f79a0da94d371bcc0436b0c8e3c575acaa42018`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918acbe934f17a4678e45cf05085530b1c0362151af95f6189aab596434a7c2d`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 6.1 MB (6067387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:44e7298450848fe2f9415d2c5db16f99d83c88fb97916daf53f51da33d9a0790
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fceb077410e80ed9ad203356f541173660da7b9b6a8f210973fdbbad584e0d46`

```dockerfile
```

-	Layers:
	-	`sha256:15a7522aa7342a31eae1fc6977b4610a02d743a4f3d79f542b7d3baa0eab3609`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 1.3 MB (1291185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04862f3d2202f274997ae1af9322183d7bc55d1150b5824dc25bb0151c5d4556`  
		Last Modified: Thu, 17 Sep 2026 21:16:32 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v6

```console
$ docker pull irssi@sha256:f92de27f07b39d4de8a9601aa186a37841747dec042f6744f5bfbbffae120aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19475812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd435a62b75d3e36b20941aba125aae1eaf0a586c639ad28a870a4155127392`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:20:55 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:20:56 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:20:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:20:56 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:21:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:21:11 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:21:11 GMT
USER user
# Thu, 17 Sep 2026 21:21:11 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e765e23cd63d395e16caec5fabb516f2c4561e0c2ab541e6edbd03480439cb7d`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 10.0 MB (10024645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324551f45eba4a0c467375f7d33db15172e045d0b2ad430f411b5f5c485197b2`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb06fdae2cc6198bc3f8bacb48606ed15cb469d8bf9288dfcb2f2dea225e7aa`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 5.9 MB (5895257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:7a2df418924606188c590ffe74adb74bf8bcfe21c88f3dd345b21d3d98ad8adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 KB (17423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0154da5c542b9360d347e52ea206e7aa8e1e24c771e4df5ec78246c49c4ece35`

```dockerfile
```

-	Layers:
	-	`sha256:9c9942688435ee195b4abb40f17369fd7015a9cedd64aef9dc04fb84c49b6c98`  
		Last Modified: Thu, 17 Sep 2026 21:21:16 GMT  
		Size: 17.4 KB (17423 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm variant v7

```console
$ docker pull irssi@sha256:3c078f077a56a2e4eb9a672993819dbe8c93ab0669b592204352498273ff9508
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.8 MB (18768878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907f6758b411b3c1ad9365cc2fb7f0471df79af6b611efde8c6e392fbb6e38c0`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:19:33 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:19:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:19:33 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:19:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:19:48 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:19:48 GMT
USER user
# Thu, 17 Sep 2026 21:19:48 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203da8b0d73ce2ed493163d965a70dfc73b45c6a08b5f7ee65f453aa70eecbee`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 9.9 MB (9861506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b2f4fdc022b1e8173a616c74a69b41772e14294eb0a7fadfe5ee0904b475e28`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2881f1743d8654c012028175c634e2a3d98599029ae7850dc73ce378497402d9`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 5.6 MB (5643475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:b42c1faed9f1c8792ade29fe0c800f92e0b7054484e460bc480c87f6abfdc897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be5fd2cb884f2172e7be54cc8e6abcd551c96f75882772cc953899ce86c7dd9`

```dockerfile
```

-	Layers:
	-	`sha256:85426ef0a2b0045b3566f3fa8edb3a38b6b4b3b0e54d9c0063f1140ab20f960c`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 1.3 MB (1293593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711a975e1a07264aff45115fb99e2b7b17a207bd17fac7c13e361c15f2658700`  
		Last Modified: Thu, 17 Sep 2026 21:19:54 GMT  
		Size: 17.6 KB (17634 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; arm64 variant v8

```console
$ docker pull irssi@sha256:c476a2f689d2740e0c0754e1272bf695bee66fa9ab938999c8a8af846e8fb9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.9 MB (20881634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9e295ab9a46785055b4e0da98d511d7fd6da2b7016489c904635d28e85583b`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:45 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:45 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:45 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:45 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:58 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:58 GMT
USER user
# Thu, 17 Sep 2026 21:15:58 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae933df803bacf8c084e10374e5fb17efc6dc469a1c269723c042fbffd4f6e3`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 10.8 MB (10755853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c01f1857aca5ebd686aadf7ce1abfc7980a25886a207c836c964c34b92cf5a`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f7534fe82539bd65d9ad721238b86c3a053c8463cf011655f5ecc68a688c01`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 5.9 MB (5938740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:c9a03a3de70e9c9efdf97a0f968405264539fb2f7247585d69479f2f37e745e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4174597976de1803acedcef5d9fc08e1e6557cf81aefa4dc0dab0789ae346d7c`

```dockerfile
```

-	Layers:
	-	`sha256:7f257bf4aa06d19bee25916f0521609480e3030dad28032f9234b1bc1e478a41`  
		Last Modified: Thu, 17 Sep 2026 21:16:05 GMT  
		Size: 1.3 MB (1290639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1d8bd238ea9b35ea2261719f47a1391dffc3231ced5bf22b2d4d49bfd369441`  
		Last Modified: Thu, 17 Sep 2026 21:16:04 GMT  
		Size: 17.7 KB (17682 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; 386

```console
$ docker pull irssi@sha256:2b924580e400973b2e5bfccec33db44f0fc600775ecca198c4d486979ab6f179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20174008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3043da6bea501d9a3578e871a72be45ed29e6be7c64628412bc6d17733d0ba2e`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:20 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:15:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:15:20 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:15:20 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:15:37 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:15:37 GMT
USER user
# Thu, 17 Sep 2026 21:15:37 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29aaf2e9158fd3045c54b43c7c0d50b5411254859765f46cb69eca2b19de3aaf`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 10.4 MB (10352803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e9333dbf68f5901d7b71bbed963069936b88313349cc499c11b73721c568ee`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb85a6f5fed6a44568eb45e3ec4fb05ad1a89d334917bb1dbf0bfd4c10d1da3`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 6.1 MB (6145109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:e659c8dbce319d971246c9313514dfbdd7cdd18f77506850442219327c410ece
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970eab1321dd5cdd6bcb4c95da36680a0cce1bb1d060b5b3abbbc3e41970ae7b`

```dockerfile
```

-	Layers:
	-	`sha256:a737820df03c091577cb4c3e3546dfedfee3704c9c9bdb4e5e4ac2d6d24f311d`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 1.3 MB (1291140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65f0a418a065c600f5f2ee9ca0c7d36f37ce7829c84b8e698eb19059d1870086`  
		Last Modified: Thu, 17 Sep 2026 21:15:44 GMT  
		Size: 17.4 KB (17443 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; ppc64le

```console
$ docker pull irssi@sha256:3c21fd84717506251cee9f1e9c52ce8ae085359fafaa11a0bc1b482d1764b191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21222835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c521982adcf0b48471da508b12f825f7ca3b981b23886499a2346c1851844cc6`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:29:38 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 21:29:39 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 21:29:39 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:29:39 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 21:29:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 21:29:59 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 21:29:59 GMT
USER user
# Thu, 17 Sep 2026 21:29:59 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaca6cbc21680e7450381817d3257e03f3c66072b1af3035282607cb48134b3`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 11.0 MB (11043150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb74b3e80a9875a556d204fab1a17995c1c0429cb7feff45f82d8e8e427d2dc`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da1a278e7525d6555459e46ae97274c4a6bf908743db15907d2065decc59461`  
		Last Modified: Thu, 17 Sep 2026 21:30:13 GMT  
		Size: 6.4 MB (6363930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:6269ade51584f714e2c348b17371845ff1f86c4fb4ded6969a96a3c144783aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:827e87a32f2bf46bfbaf3a83aded52309895b8bc52b4f167a472f4c79ca6b537`

```dockerfile
```

-	Layers:
	-	`sha256:f8d99adaeb1b68fd898a82d85724aa88db1f05050ac7739f69e876937e28be24`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 1.3 MB (1290592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24524352a71888ddae73576c682ffd5e610a3013295cea88b9b76e4c68f19bae`  
		Last Modified: Thu, 17 Sep 2026 21:30:12 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; riscv64

```console
$ docker pull irssi@sha256:962513480d4394686b9756cae40588f7bd69360773c71a359a9f161740dafca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.9 MB (19894669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96d3e0525e3e3d10c5b274636a21e08595aef43b08c70507246608ce6ff7127`
-	Default Command: `["irssi"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 06:12:19 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV HOME=/home/user
# Sat, 19 Sep 2026 06:12:20 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Sat, 19 Sep 2026 06:12:20 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:12:20 GMT
ENV IRSSI_VERSION=1.4.5
# Sat, 19 Sep 2026 06:16:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Sat, 19 Sep 2026 06:16:22 GMT
WORKDIR /home/user
# Sat, 19 Sep 2026 06:16:22 GMT
USER user
# Sat, 19 Sep 2026 06:16:22 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afbd51ca02681bbe39a986700707521b548e29113e6468ecd792d2212ada05ed`  
		Last Modified: Sat, 19 Sep 2026 06:17:17 GMT  
		Size: 10.3 MB (10251614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0049ca4c752934f292f357ff6267055d415bf78671aaf92cdc3d1660dd024b65`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97aedcb0a825edc4fa216b7f2b552422432a52f2689309daab35c566fc7c5f26`  
		Last Modified: Sat, 19 Sep 2026 06:17:16 GMT  
		Size: 6.1 MB (6065747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:f8ef3638059f55983a3b096e0efb7d44b6e68ae0671a33bd7c258e630925682d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:febc24d8710ec77e6d066f6516603112cf8d5a02ec545c3c9955f4229f75fdcf`

```dockerfile
```

-	Layers:
	-	`sha256:19d15bf32d13c84435568770433158c8a4965f67cd0f1696f67c6e80e2de5c3b`  
		Last Modified: Sat, 19 Sep 2026 06:17:15 GMT  
		Size: 1.3 MB (1290588 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28222b8426ba538a8317a57b6e5509ec334bfca641b3ec10d399177aac8e5d23`  
		Last Modified: Sat, 19 Sep 2026 06:17:14 GMT  
		Size: 17.6 KB (17572 bytes)  
		MIME: application/vnd.in-toto+json

### `irssi:alpine` - linux; s390x

```console
$ docker pull irssi@sha256:dc3e4fd739b7e6db3d043bf5b634bbf8a86d7154e5de5a554849d6d97d91c316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.3 MB (21291395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff1fcf3721d9fffc29f5ea301899b1673324764daafafdf85cd15317db8a4383`
-	Default Command: `["irssi"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:24:34 GMT
RUN apk add --no-cache 		ca-certificates 		perl-libwww # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV HOME=/home/user
# Thu, 17 Sep 2026 22:24:34 GMT
RUN set -eux; 	adduser -u 1001 -D -h "$HOME" user; 	mkdir "$HOME/.irssi"; 	chown -R user:user "$HOME" # buildkit
# Thu, 17 Sep 2026 22:24:34 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:24:34 GMT
ENV IRSSI_VERSION=1.4.5
# Thu, 17 Sep 2026 22:24:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		gcc 		glib-dev 		gnupg 		libc-dev 		libtool 		lynx 		meson 		ncurses-dev 		ninja 		openssl 		openssl-dev 		perl-dev 		pkgconf 		tar 		xz 	; 		wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz" -O /tmp/irssi.tar.xz; 	wget "https://github.com/irssi/irssi/releases/download/${IRSSI_VERSION}/irssi-${IRSSI_VERSION}.tar.xz.asc" -O /tmp/irssi.tar.xz.asc; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 7EE65E3082A5FB06AC7C368D00CCB587DDBEF0E1; 	gpg --batch --verify /tmp/irssi.tar.xz.asc /tmp/irssi.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /tmp/irssi.tar.xz.asc; 		mkdir -p /usr/src/irssi; 	tar -xf /tmp/irssi.tar.xz -C /usr/src/irssi --strip-components 1; 	rm /tmp/irssi.tar.xz; 		cd /usr/src/irssi; 	meson 		-Denable-true-color=yes 		-Dwith-bot=yes 		-Dwith-perl=yes 		-Dwith-proxy=yes 		Build 	; 	ninja -C Build -j "$(nproc)"; 	ninja -C Build install; 		cd /; 	rm -rf /usr/src/irssi; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .irssi-rundeps $runDeps; 	apk del --no-network .build-deps; 		irssi --version # buildkit
# Thu, 17 Sep 2026 22:24:54 GMT
WORKDIR /home/user
# Thu, 17 Sep 2026 22:24:54 GMT
USER user
# Thu, 17 Sep 2026 22:24:54 GMT
CMD ["irssi"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddd221b881b5b949a6dc1301910298d6aa08f7986d38ad5db32f3f32e1065626`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 11.4 MB (11372049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924366936084f8cc80f060d9312e567de30ba85a50961bfe580c0e2ce4d8e384`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0950e4ddbb87ff9f2cbc92b51eff184a1b22a3400fa1bdc541a483c8d11085da`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 6.2 MB (6205106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `irssi:alpine` - unknown; unknown

```console
$ docker pull irssi@sha256:d2cd424c0daaf6953b4ed39cadd99a9c22a019966d42a82b9ec58683c54c3dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1308034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2153d984134a7c5d83a1bf956d0c1adca3a7a70d11aff1b75929d425aa2bca`

```dockerfile
```

-	Layers:
	-	`sha256:fd2f967f5698de38dc2d99fa163dcd0a1b6eaaf5c733713ba8060f8c925639e9`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 1.3 MB (1290534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:941c4e3a0a056a677f93b61d0a6e59d95d88d0b04fb38e20a6def104a643bc27`  
		Last Modified: Thu, 17 Sep 2026 22:25:04 GMT  
		Size: 17.5 KB (17500 bytes)  
		MIME: application/vnd.in-toto+json
