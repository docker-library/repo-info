<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rust`

-	[`rust:1`](#rust1)
-	[`rust:1-alpine`](#rust1-alpine)
-	[`rust:1-alpine3.21`](#rust1-alpine321)
-	[`rust:1-alpine3.22`](#rust1-alpine322)
-	[`rust:1-alpine3.23`](#rust1-alpine323)
-	[`rust:1-alpine3.24`](#rust1-alpine324)
-	[`rust:1-bookworm`](#rust1-bookworm)
-	[`rust:1-slim`](#rust1-slim)
-	[`rust:1-slim-bookworm`](#rust1-slim-bookworm)
-	[`rust:1-slim-trixie`](#rust1-slim-trixie)
-	[`rust:1-trixie`](#rust1-trixie)
-	[`rust:1.98`](#rust198)
-	[`rust:1.98-alpine`](#rust198-alpine)
-	[`rust:1.98-alpine3.21`](#rust198-alpine321)
-	[`rust:1.98-alpine3.22`](#rust198-alpine322)
-	[`rust:1.98-alpine3.23`](#rust198-alpine323)
-	[`rust:1.98-alpine3.24`](#rust198-alpine324)
-	[`rust:1.98-bookworm`](#rust198-bookworm)
-	[`rust:1.98-slim`](#rust198-slim)
-	[`rust:1.98-slim-bookworm`](#rust198-slim-bookworm)
-	[`rust:1.98-slim-trixie`](#rust198-slim-trixie)
-	[`rust:1.98-trixie`](#rust198-trixie)
-	[`rust:1.98.1`](#rust1981)
-	[`rust:1.98.1-alpine`](#rust1981-alpine)
-	[`rust:1.98.1-alpine3.21`](#rust1981-alpine321)
-	[`rust:1.98.1-alpine3.22`](#rust1981-alpine322)
-	[`rust:1.98.1-alpine3.23`](#rust1981-alpine323)
-	[`rust:1.98.1-alpine3.24`](#rust1981-alpine324)
-	[`rust:1.98.1-bookworm`](#rust1981-bookworm)
-	[`rust:1.98.1-slim`](#rust1981-slim)
-	[`rust:1.98.1-slim-bookworm`](#rust1981-slim-bookworm)
-	[`rust:1.98.1-slim-trixie`](#rust1981-slim-trixie)
-	[`rust:1.98.1-trixie`](#rust1981-trixie)
-	[`rust:alpine`](#rustalpine)
-	[`rust:alpine3.21`](#rustalpine321)
-	[`rust:alpine3.22`](#rustalpine322)
-	[`rust:alpine3.23`](#rustalpine323)
-	[`rust:alpine3.24`](#rustalpine324)
-	[`rust:bookworm`](#rustbookworm)
-	[`rust:latest`](#rustlatest)
-	[`rust:slim`](#rustslim)
-	[`rust:slim-bookworm`](#rustslim-bookworm)
-	[`rust:slim-trixie`](#rustslim-trixie)
-	[`rust:trixie`](#rusttrixie)

## `rust:1`

```console
$ docker pull rust@sha256:bf5a9aa29062a6cb03c49bd59a46eb55e3cc770caf598a221a7866e500be3082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; s390x

```console
$ docker pull rust@sha256:8976c89ddd209120ba32ed2238038673e10ce67cbc4da797789e12606b776f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647250018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4bbc9fc3b3f616c72e26889bbd1edbbe5ecdd58812de5b1bddb589c1c9e7f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 05:25:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 05:25:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 05:25:20 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808857b26fbae6c0ec9368abea76e69ecd5dac93a6ab6a9746b807be9ae78831`  
		Last Modified: Tue, 25 Aug 2026 05:26:31 GMT  
		Size: 295.5 MB (295530618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:c02af3bff48a96f24a4a79faac1ba2a721bdaf43f372f3dbe448e2334409e9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502c8e951c994b6f1b9cc1bfb74e32c1de5dc2f0a371dcb50491890a6156b982`

```dockerfile
```

-	Layers:
	-	`sha256:c1b5dfa918e00bebf407423f6b4ff58e14a96679109c15a449914614439cbc1f`  
		Last Modified: Tue, 25 Aug 2026 05:26:26 GMT  
		Size: 17.0 MB (16983825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7dd7797a8059a7c0366cd6e67151fba30819bbdd5ed3ab9f4718c229a57fb37`  
		Last Modified: Tue, 25 Aug 2026 05:26:25 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:88a07cc2e9b783133cddf0ea84e759a1185eb6e7ff104deea18e985d84503af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:2a7e9f2ab5a0b7fb28b088ce9e195450a79c52859dc0a583a9442b115c2fea07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338865708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e615b7f15a013b1102c85e70abf6ca03ff8b0316781e4bfa583d53b9e348f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a8ae5cfc82b74b2380be54de41697dcfca64715aa3d2b0d79d9787df3eb5`  
		Last Modified: Wed, 09 Sep 2026 00:11:00 GMT  
		Size: 65.0 MB (65028740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9734da7067fb8c170c70089fc298562b8d7c4ed96428043b2a86e23729c5e3bc`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:88a16e04c95191ff8ac1b7330e7fb066173511b845c90e28dcb6848885d02597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.7 KB (971730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0405b93b441b3a6f146b2403bb6a5388a72cd992acd0c4ff27836636c40939e`

```dockerfile
```

-	Layers:
	-	`sha256:28d8281e8da62dd282de1017edccb43a4dff9d6928ee8e4e56c2dffe684de9b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 959.5 KB (959544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e87345956f2944f701ca7e2bedadfa4c0cc5d9f32ab881eb58972b3031b8add`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a2e766ffdc2170ef78ae2f5cc2fdd71e29dcdf0af74fc58a8886756ee76c7e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (342951840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ab2d7c56c31a652ee6ed692ba36832480cb5fff3b0311cdd4d97805d7e2471`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:46 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecf52a650a332215628425802f2003e541f2fa5c79235acf52d21a11d3e51d1`  
		Last Modified: Wed, 09 Sep 2026 00:10:36 GMT  
		Size: 61.7 MB (61700190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562c05355e125216c8c7d234cffad04e2f8998073863c75f2b8fc909141bb8f`  
		Last Modified: Wed, 09 Sep 2026 00:10:40 GMT  
		Size: 277.3 MB (277257185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:83a515bd206b2fbc2626d50e2853fd4689095a8db6a35fa991d230bd904c385a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1051173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaaefd2bc52193ba46149b5b6fc247444e2a853f77981b9e2e57d28f644f134`

```dockerfile
```

-	Layers:
	-	`sha256:f72502588978d217ada5a9728ceebc42062e7b0cfe715463ece22313a4c6b017`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 1.0 MB (1038868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90eb94686e2f78fe8e44be5dbff90446128aec8d956cd9dadcaa41577bfb8919`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:8380b55902785ce0e0958a5bede38b2ab12b045a08dba98f69bd4dcda3ef375a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358835584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:504f5cee3b816f1764d1c4eb42c8a3dafe98b1829f90e5cec33d75dfeb054c3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca8361ff0e6bf57e766f29cf1c9c6112c17490c01f1b621b24101ab6291e06a`  
		Last Modified: Wed, 09 Sep 2026 00:22:57 GMT  
		Size: 61.5 MB (61512255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f584a6aedd3eae5abea7f66952d4ec38db5551f34e372c223b30758667987c`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:a1700ca13de9de40245a09d19586069975b836354bef51cfa458bd6b292eb43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6acc9d6b8b4c5fec60219631dc99b48964dfd43f1813717f4e3b5d98a2937134`

```dockerfile
```

-	Layers:
	-	`sha256:85ffb3877ff0a88859c298cbc39461e806ca01f18b2787d84cc5769777239694`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b558f39ce9c6576642030a6966f22acd3719fc80ad7e95eba42bf5ec79b76b8a`  
		Last Modified: Wed, 09 Sep 2026 00:22:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.22`

```console
$ docker pull rust@sha256:b42001307cfa41fcf31bd1530dfc7d712104b61c8e2150b2f02e75415f3d501a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine3.22` - linux; amd64

```console
$ docker pull rust@sha256:2f16d6eecba5f73faa542a93060339a1441cfffc14a5a24a7257289cf4dda327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (339015474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b2c6d24ece8c2f9375d3eee956dd8cbda8b975cf1de161f212f2ba7874ae3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:19 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:36 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab511efd3e06e23dee3bb6a59c1a8610fef3ff5ce48e314b9e59b2eafa5e34b7`  
		Last Modified: Wed, 09 Sep 2026 00:11:12 GMT  
		Size: 65.0 MB (65037714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d8d997c6fc90d4fc430de9c2f21651d189760c4982047a320db7ba6db5d34e`  
		Last Modified: Wed, 09 Sep 2026 00:11:15 GMT  
		Size: 270.2 MB (270190165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:338681bc8d6101e97e855e6d41bc1635e31171492a6aca48b1f0f1dcc918f8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.6 KB (955618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1212e8669ee4aeba719fdd1e8d32b05de8b889fdacf408e321707b784508b01`

```dockerfile
```

-	Layers:
	-	`sha256:8185f2bdd7bf8bd38abcd600d84d9c245da01fbaf1b453a8433772f76e41555c`  
		Last Modified: Wed, 09 Sep 2026 00:11:09 GMT  
		Size: 943.4 KB (943432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d69d402f099d4459bd178d1d0bfb368d93d77d7a9a05816216b001c429e9c1`  
		Last Modified: Wed, 09 Sep 2026 00:11:08 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:7d7f9019e920f9dcfe7932ba1f8916e63237358396bf895dc90639b6a9063c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.1 MB (343090891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc818a5359210206e53f7145c677480692a3f6cf3c0d2b7a3b6713dff4fcf4d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:36 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a21f5ec861f582e525a21ffd00648b4e2a661e239b5186257e3c0a65c1bc350`  
		Last Modified: Wed, 09 Sep 2026 00:10:24 GMT  
		Size: 61.7 MB (61713135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e604ebc073f78edc233b6128b9f04dedb1be7c814b455b0933c600670edd0bba`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 277.3 MB (277257270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:5129fa3245537c8b28b9749c868427ea2255554e38c562bded0504bc34297c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1cfb6ec59d52d689f6a2084d7847fb7f50ad172b8ba32734da31a87418619e`

```dockerfile
```

-	Layers:
	-	`sha256:74ef0f225a7dba933e6eed4449dc155838ea9bc3548d246e1372d1913626228d`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 1.0 MB (1022756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf33695791efb310136d1de7c2f0e0ff7455ba98572f4baf7c407283edaf46c`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:9fa9e709e9b757083c524edf31c2a100e819b18dc6addc7a3e658748ddae108c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358981958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b277e2e19abef6f5a63e912747396ba98ff3dd43a66c16003b9acbffa2c9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:01 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce00360eff5fce600bf5eba4e8bb77bdee90ee7f3021c6833fadcf5f87deb33`  
		Last Modified: Wed, 09 Sep 2026 00:22:58 GMT  
		Size: 61.5 MB (61518367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79f3eac81af87918d8942715d0d96decde630c45f96039252136c3df6b0fa6e`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:841eb80c82beef7fd4c1c884c4b64b02bef09ee3aad24c92c62452299c3780d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4b3425fa9175d9ef1c6845f49edb84d45eae14e79ef956b17fff2f41c062e9`

```dockerfile
```

-	Layers:
	-	`sha256:d1ca0b736d4900317cb15136eb6054bc44b114cff9921d75cb562345838e1c48`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 957.3 KB (957281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f857d48d328daa34accabbdcdebdde15d2c88d2239fd9992d7c83e16452d8f29`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.23`

```console
$ docker pull rust@sha256:737ba17e6a2ffe14475b59861cd69f3d7152c29c75140bdbf6750befcfda7e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine3.23` - linux; amd64

```console
$ docker pull rust@sha256:1c59350394c5ab50a64d211c45dfce114fe3bb1d3d2fc45b75e622090bfecab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349101133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd9609a0fdde93bb1903a7bff8ce72e1292aa1ba704af60f5b780177bc495ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:35 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513c9852106ac509374725ab1bfac27877f05353580b1f5f0949569c4588ef6e`  
		Last Modified: Wed, 09 Sep 2026 00:11:34 GMT  
		Size: 75.1 MB (75066434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bb6663a88626d2e17f8ba55ec708dad372a5a4f9bbb0c5b81fd17ea4618d2f`  
		Last Modified: Wed, 09 Sep 2026 00:11:38 GMT  
		Size: 270.2 MB (270190278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:13805d85e8e44b4c31e27d8da42d2a9fb97d98cbc3907e6a37996e27c951f819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **999.2 KB (999245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff096ce16233f2e8ddaf430dc7e6ca20fb7668d670a690211172d871de24889`

```dockerfile
```

-	Layers:
	-	`sha256:677e6221b2b1fe7f41ebca4c01ce95dd4918cc60387a9dd9ebdd846917f223d9`  
		Last Modified: Wed, 09 Sep 2026 00:11:32 GMT  
		Size: 987.1 KB (987059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e05e2c153ed96ede95fcd044c1e55b483221cae3033b5b77069bccd31d0e3d35`  
		Last Modified: Wed, 09 Sep 2026 00:11:31 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:827f14ef7096163eba40620c9fa3bffebd83d8b94fd0c71bc49209c5a0400928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0708488973f094a4ff7c38f87debf1d316fc1e21e7fcd6d7fb3951c43e66df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc66ad239f060b9a6c0e0a5e7ae9f60b81bdc5e910c08306eef371f855b09818`  
		Last Modified: Wed, 09 Sep 2026 00:11:01 GMT  
		Size: 66.5 MB (66493105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88539a604a57261bab7ebc9ff3a557877a8944c80ec940b6eadeb5ec2d27aeba`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 277.3 MB (277257212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:bb4aa68cace0507c4915bd14c86a88057cacaf490c8bf3d3cd371613fbbac3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1058373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f438cb13cd3beaa86f3c5298f35c579303816f19b5b2cc2f08464fa46f7e6a0`

```dockerfile
```

-	Layers:
	-	`sha256:b14a25bf438155830b52495c5e91b7f75e0df21db9d0c067238b8fe13364dd34`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 1.0 MB (1046068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9096a5d62b9dc745365c96d0350b5793cf21a3f64b9232d92151019983fd7b53`  
		Last Modified: Wed, 09 Sep 2026 00:10:58 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:2ffad206a95eae3135e0b1bc58d637902ab3eb44b117e7fe94ffe6658ac322e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.9 MB (363931510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916b152390f45aa8abf0d62dfb853ac83332bff71ac92599358afc3ff9ed4a3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:14 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19725d8294404895d30305d3e42543bcc167c7352fd6660d178d39b46c76906`  
		Last Modified: Wed, 09 Sep 2026 00:28:07 GMT  
		Size: 66.4 MB (66374583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b157d67323e0f595e7245af2a3962adc73555fd07fe9deea8dc306fab4fddbb`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:6f2900b30dff8ed0e057ece8e80a5b226b2e6d7cc6872378514681e8ada7eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108ed5dfdf834e591949fe8ebc9ab7203b4e3ab89803133f74ef5a25b4147b20`

```dockerfile
```

-	Layers:
	-	`sha256:9deb0b56516d3b6d4a4c7d3e502d8066f94557a8f000848ffe8424eebee44dc1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 980.7 KB (980686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5d4a6d670e4d727d4e60bb6cad191a76e13e34775df30c4a814d434c202bf80`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.24`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-alpine3.24` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-bookworm`

```console
$ docker pull rust@sha256:9a73a5088750b4c95158ab26629c854c3d6fc4b173cb7bc8079ad252d8ed7bfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:cdb2da72943ec036bf0c731ef5ac9e5fb2b1d17d3a9256a581bad64cf6fc093d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.4 MB (562439009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef460ef3675d3011ccfbd2bfd1c9239f04c044eee0cc0a3de6aecfd9f390bf26`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6a9ffe665b63ea18491fedb646423413ae3fdefcf7776ee25a2eaff8a673e`  
		Last Modified: Tue, 25 Aug 2026 02:17:34 GMT  
		Size: 211.7 MB (211662335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a9a21d5067abcf6df5c1099fbdd9852b78315b3004e47d487c24342c163c32`  
		Last Modified: Wed, 09 Sep 2026 00:09:57 GMT  
		Size: 213.8 MB (213810000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:7296b208667c941eda0fad1c6aad38e54b5fc9f82461c98b31e51dcd06891272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15885337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e33e1dd04cf31e7287e07cc6c2151395639c961509b899403c61b7ff193762`

```dockerfile
```

-	Layers:
	-	`sha256:17cfe5e0c98cb21915821e90fa9e8b64ae6959ce6fa1220f9081b30b88172b1f`  
		Last Modified: Wed, 09 Sep 2026 00:09:54 GMT  
		Size: 15.9 MB (15872241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c877cabb33a7cb6d447bb7d9d63692055e35f46e9da39536e18bc813db4bb445`  
		Last Modified: Wed, 09 Sep 2026 00:09:53 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:016156fef27501052af6ec5346801f259d49ab90b8578db85192a6116c047eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.3 MB (559344527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a33a9304cc3ecffaf3d5aa5df1c0be23662c0cabe6c3e480f8c1422e340068`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:54 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:54 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a5a707a569b0307f2e17db86af2421559f53f4647206901eae8593c6fe2fb2`  
		Last Modified: Tue, 25 Aug 2026 03:14:21 GMT  
		Size: 175.6 MB (175579748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03d0324e79668e855e8e2af081ddf02dad16417b35d6d3632104affbd2c4a6`  
		Last Modified: Wed, 09 Sep 2026 00:09:40 GMT  
		Size: 257.9 MB (257936983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:1e5392aedd974e57ca9f4188d137f80bae1d5932991e2b8dc13d2144751437c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9effdf190480d001a1ab838cee2f1ee76f231bc0d891428d54873966a7a129`

```dockerfile
```

-	Layers:
	-	`sha256:9df2079345490313be2c13156afb3a7b7af82f9b4f733dbfefa2b6eb4f300b2c`  
		Last Modified: Wed, 09 Sep 2026 00:09:35 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1f83aa63df0839b3470f361ac97b6bc2dcbb858de3375d7b5059bdec1cd83cd`  
		Last Modified: Wed, 09 Sep 2026 00:09:34 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:09e98f39fa15751de9476fefafe4be0e4ef92b292d608410595bbbde9ebdd375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521745920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690e6fc7bbfdeff8f8d3cd808062a58c0afe5416ca5aaf8e32cb94ad1d995bc7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9873f9cf3f97d8317bea39be5130389ca496910902e4c4327c227d606b57511d`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 203.2 MB (203190462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8fe434ff680a26b9e7ef5bf768dce7b45822269aeb251afc29ec66eed39a75`  
		Last Modified: Wed, 09 Sep 2026 00:09:26 GMT  
		Size: 182.0 MB (182042971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:dd5acfc238c54a7b855d2f712c28161c705095d6eba18e2ef3ce6856ef4a06a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57b2ad6535da2074198a7b42c7cf1ee57c6ae149837971755b749cee754edc2`

```dockerfile
```

-	Layers:
	-	`sha256:75587e37482da126c0686ea069b30149182070bdcf764449463053b98df3b2c1`  
		Last Modified: Wed, 09 Sep 2026 00:09:23 GMT  
		Size: 15.9 MB (15900767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1262e0f831b0d8f957b02c836101ff1784094cffc55ab70aba3519c2b7ae839`  
		Last Modified: Wed, 09 Sep 2026 00:09:22 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; 386

```console
$ docker pull rust@sha256:52ee3001113f3a66874af4fed85fcbce2f8f2ef7347aa8a575074f2a81e35be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592078672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6476e7ae0b3be7ca3e22faf6a82dcec0f8b655cd396971f21a5703b5bfa54b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:17:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:09 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bccc271fd741e5cc3ed1753eed6a6dc384881a8e08fe9349c59d8e5d2980fe`  
		Last Modified: Tue, 25 Aug 2026 02:17:49 GMT  
		Size: 210.6 MB (210581947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecac752c8087d1d33d2eb3f5001ef0a7b449b1d3c833f03552bd2b542d394fc`  
		Last Modified: Wed, 09 Sep 2026 00:09:56 GMT  
		Size: 240.9 MB (240868513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:b47838deb148a881e2d8628d5b0e3d2b0f70101f80553c4249654e056e44c6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15863523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6ba1df76f2209c9bb1e58241ba97ed38814ebace0a307725d56c4623292550`

```dockerfile
```

-	Layers:
	-	`sha256:b68ac8ff48190fb408334c5109c12eede90a2216aa73a08757ea32eb10bded1a`  
		Last Modified: Wed, 09 Sep 2026 00:09:52 GMT  
		Size: 15.9 MB (15850459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48943ffe092c0166c70db452ac33d39f92722bc76bdc76d41150e4b977c6611`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:911ba86634f42f9d24d5a62159d5847e727e68d0463f987cb8dc350eb3f6f205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.2 MB (657191037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec2495489be0391d0a0dd5cafe132c523f749e35ccc9f241f33fa6e4194dda8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:36:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9546012095f5835af9399f34fb6731784e64c61cf8a22462e2f59024e39605e5`  
		Last Modified: Tue, 25 Aug 2026 12:38:18 GMT  
		Size: 214.7 MB (214736789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247cee998bf5fc42601c45e635320fbe2071475c1c303ab2888a2e341efc9c53`  
		Last Modified: Wed, 09 Sep 2026 00:12:09 GMT  
		Size: 294.6 MB (294552747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:20bdf992fb917849f8e3454add3aaa90003ae265eda88a7e7cee3bc0135373ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4e01e7a05347ac9d5a37e6da6d023d5064efe385dbd9338bfa692929033940`

```dockerfile
```

-	Layers:
	-	`sha256:6d742174c62aa38ee7f88da2c55d12da9e03a59a1ce1e80bf42f4647f8edabec`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e8ccaaf8adb4245ab97cdd73320f680e839427bb073298d01af8e73517aa7d1`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 13.1 KB (13139 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim`

```console
$ docker pull rust@sha256:bce1476d4be4d78b83705bc5f428b86d640eeeea33e9dadafbc037b5703a53bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1-slim` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; s390x

```console
$ docker pull rust@sha256:638c3bf6e5d394d591f8c7d3e60a602e0074f7b89ce29eefbf3edcaab814cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377770604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232e886ca3d118618bfd6a97ee4cfd19a913c9efc1fe8547473f653b976635fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:03:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 02:03:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 02:03:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750387b638b582311c60ba4fa6bd608762d8e411ca1966ce0c9a016e7756938b`  
		Last Modified: Tue, 25 Aug 2026 02:04:47 GMT  
		Size: 347.9 MB (347902885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:df3d96e28c47a2a848bfe885daa6cefec7b5fb36cabf35debaf7e1624664c0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3997499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7c2947377186675bc342a8629738ff34df397f84f8c06842944937417bd063`

```dockerfile
```

-	Layers:
	-	`sha256:a1ccf0b6e281f68ad5456f3d21f0e79af627d63704b775206ea14b97ba1c8e79`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 4.0 MB (3981866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bb151702c9684a91eed9c9c2fc2a055c224853180288b990915ffba4edcf7c8`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-bookworm`

```console
$ docker pull rust@sha256:ebd900bae66fd508b466cef82d64a83a5fb34682e4c8b2797a42908bddc95a57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1-slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:6ac25dcaa81e06721043f9a815b6000c87ba2f56bf7b82a3ad0e65ae71067e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312820430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff09915dc81b6088d47b9428ce47034436cc77ce893afbdd186e9e73f6d11087`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e61d2df41b0c8246b0ecae10e62233657071fe9469319cbaeb5a62fd22aa5e`  
		Last Modified: Wed, 09 Sep 2026 00:10:07 GMT  
		Size: 284.6 MB (284587775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:3702731e0653e2c55792c427daaa1e2e302b124203c80c3ec85ab68a193267ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b038fe067ebd5eb5504a987b63fd42fc0d37d6be05a8a70c84d24402926fb7`

```dockerfile
```

-	Layers:
	-	`sha256:71c33c1ec425dc29e78d5d4d7a6c1dc9da7f96e4bea244ac36a725f357556307`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 4.1 MB (4099461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291587921a8caf0c42218e0a7007d4debe8ad3ec225c7eb9fd4cb1437785fee7`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:50a6510e663c05e01720788845d709d73ed354f472212b81319110435ff74b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.7 MB (329722935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0364f78756b8b4cd00e23f1bfdc0442b864a7c57f8f8cae7d9b1385f51a0c83d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414c8f92a825401b733fc77e1fbf39e5c458313b146cddd2eb604c5345c47a59`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 305.8 MB (305783091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:602f7de5f8cea653c778171b48dc340836a26f2ce523fa44ac18b54646bc387b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8397e23d65480011e848111b1e76178b21f212e7b0a090e40f0b3fa41cfd61e7`

```dockerfile
```

-	Layers:
	-	`sha256:49ff1caa08096ab253bbead350734d71c7d2af5b316e99673a710ab89a563503`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 3.9 MB (3913848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f554f39ce686838e2494f8600894f5b952f01e15db28fbc3276361d9ee8d472`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:aedeeec296c1880a094f5fedafd95c981a953fcec11e530d12e83ae44e29ae75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276048675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e687b7adb9547359d8ee51a8fe37d6ea569484b73deaed5582f5e53b740a725`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de33fdb188fb9e526b27d973f4269f7bb173229e9d32dfc9ae0f322f4a6d7e39`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 247.9 MB (247931386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:0a59e0d130fb267a4ccbc5eb21b66337940925d5e343ae2392e968b7250aed12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fa72e92b08e86fb2f0f2adf547cbd25caf409ea80d6f6b34ed5f309351dc6e`

```dockerfile
```

-	Layers:
	-	`sha256:470f5556bcf63f1c7e52a3c0af3ae9822a5f25ec1909ae9b4a19b2a55b7d680d`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 4.1 MB (4121755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed535be3ba8d4c23a3206fb6e0abbc813b8964d41ced5c49d2da386a994b83b5`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:617433dd2f0cf24d26e47b33bc49fb1b1b831d632d3337dfb5c6490d6828d9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337715392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615bcf95e2a298ac466aac8777a30b728b6fbf7cc8c2e7937086753d3ecd11a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71ecbbb0661d561d8c977d053ba750086b60779d1ebba2d34385c1a88a21874`  
		Last Modified: Wed, 09 Sep 2026 00:10:25 GMT  
		Size: 308.5 MB (308494340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:658e254c967ed89c22101f02d4a11dca1a7f9447a038b1bdc2ccf15021ddd58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb6fc6f1b2f760cd14a4ef5e6dbd2d66418ac51167cca2f66e410cd35c37b82`

```dockerfile
```

-	Layers:
	-	`sha256:8d64b1638078b9e2bbf0c58c86191ef1df4fcd43a8c39f2fd8192a97a99ec2b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 4.1 MB (4080147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c647e2e88cfc1c89a00bf1e0c291ef673b7a7362728b8089f60ced300941642`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:f0a414a98dc2e8339b6fc66e2dd0fe7c4dadba6627bff98ad8c1385b15ea7e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395424860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2acafea7089207a9b29308448ff56f52876066436a6b89310112b7b17677645`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:14:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:48 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc76823127f96be2ccb714ea1fb06f9f0d8d3f3ca5450315dd917166c8c8630e`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 363.3 MB (363348383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:23c3151382b71cc3759c85df69d059c8f2eaa7da33c3875cc14153bf4f256b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fba437a4ea6a9088e74ba69769ec6225950ace2bc299f1660edfab269829bbf`

```dockerfile
```

-	Layers:
	-	`sha256:64580a6c7b53988b0b687fecaff67a922e20a6df801d595d30a5159f326487e9`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faedc50f4e3172e2bfe992f551bf47796463f6fc7c15e8d304740c7d5e41a97e`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-trixie`

```console
$ docker pull rust@sha256:bce1476d4be4d78b83705bc5f428b86d640eeeea33e9dadafbc037b5703a53bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1-slim-trixie` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:638c3bf6e5d394d591f8c7d3e60a602e0074f7b89ce29eefbf3edcaab814cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377770604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232e886ca3d118618bfd6a97ee4cfd19a913c9efc1fe8547473f653b976635fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:03:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 02:03:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 02:03:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750387b638b582311c60ba4fa6bd608762d8e411ca1966ce0c9a016e7756938b`  
		Last Modified: Tue, 25 Aug 2026 02:04:47 GMT  
		Size: 347.9 MB (347902885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:df3d96e28c47a2a848bfe885daa6cefec7b5fb36cabf35debaf7e1624664c0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3997499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7c2947377186675bc342a8629738ff34df397f84f8c06842944937417bd063`

```dockerfile
```

-	Layers:
	-	`sha256:a1ccf0b6e281f68ad5456f3d21f0e79af627d63704b775206ea14b97ba1c8e79`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 4.0 MB (3981866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bb151702c9684a91eed9c9c2fc2a055c224853180288b990915ffba4edcf7c8`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-trixie`

```console
$ docker pull rust@sha256:bf5a9aa29062a6cb03c49bd59a46eb55e3cc770caf598a221a7866e500be3082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1-trixie` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; s390x

```console
$ docker pull rust@sha256:8976c89ddd209120ba32ed2238038673e10ce67cbc4da797789e12606b776f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647250018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4bbc9fc3b3f616c72e26889bbd1edbbe5ecdd58812de5b1bddb589c1c9e7f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 05:25:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 05:25:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 05:25:20 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808857b26fbae6c0ec9368abea76e69ecd5dac93a6ab6a9746b807be9ae78831`  
		Last Modified: Tue, 25 Aug 2026 05:26:31 GMT  
		Size: 295.5 MB (295530618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c02af3bff48a96f24a4a79faac1ba2a721bdaf43f372f3dbe448e2334409e9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502c8e951c994b6f1b9cc1bfb74e32c1de5dc2f0a371dcb50491890a6156b982`

```dockerfile
```

-	Layers:
	-	`sha256:c1b5dfa918e00bebf407423f6b4ff58e14a96679109c15a449914614439cbc1f`  
		Last Modified: Tue, 25 Aug 2026 05:26:26 GMT  
		Size: 17.0 MB (16983825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7dd7797a8059a7c0366cd6e67151fba30819bbdd5ed3ab9f4718c229a57fb37`  
		Last Modified: Tue, 25 Aug 2026 05:26:25 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98`

```console
$ docker pull rust@sha256:bf5a9aa29062a6cb03c49bd59a46eb55e3cc770caf598a221a7866e500be3082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1.98` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; s390x

```console
$ docker pull rust@sha256:8976c89ddd209120ba32ed2238038673e10ce67cbc4da797789e12606b776f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647250018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4bbc9fc3b3f616c72e26889bbd1edbbe5ecdd58812de5b1bddb589c1c9e7f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 05:25:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 05:25:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 05:25:20 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808857b26fbae6c0ec9368abea76e69ecd5dac93a6ab6a9746b807be9ae78831`  
		Last Modified: Tue, 25 Aug 2026 05:26:31 GMT  
		Size: 295.5 MB (295530618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:c02af3bff48a96f24a4a79faac1ba2a721bdaf43f372f3dbe448e2334409e9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502c8e951c994b6f1b9cc1bfb74e32c1de5dc2f0a371dcb50491890a6156b982`

```dockerfile
```

-	Layers:
	-	`sha256:c1b5dfa918e00bebf407423f6b4ff58e14a96679109c15a449914614439cbc1f`  
		Last Modified: Tue, 25 Aug 2026 05:26:26 GMT  
		Size: 17.0 MB (16983825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7dd7797a8059a7c0366cd6e67151fba30819bbdd5ed3ab9f4718c229a57fb37`  
		Last Modified: Tue, 25 Aug 2026 05:26:25 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98-alpine` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.21`

```console
$ docker pull rust@sha256:88a07cc2e9b783133cddf0ea84e759a1185eb6e7ff104deea18e985d84503af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98-alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:2a7e9f2ab5a0b7fb28b088ce9e195450a79c52859dc0a583a9442b115c2fea07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338865708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e615b7f15a013b1102c85e70abf6ca03ff8b0316781e4bfa583d53b9e348f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a8ae5cfc82b74b2380be54de41697dcfca64715aa3d2b0d79d9787df3eb5`  
		Last Modified: Wed, 09 Sep 2026 00:11:00 GMT  
		Size: 65.0 MB (65028740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9734da7067fb8c170c70089fc298562b8d7c4ed96428043b2a86e23729c5e3bc`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:88a16e04c95191ff8ac1b7330e7fb066173511b845c90e28dcb6848885d02597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.7 KB (971730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0405b93b441b3a6f146b2403bb6a5388a72cd992acd0c4ff27836636c40939e`

```dockerfile
```

-	Layers:
	-	`sha256:28d8281e8da62dd282de1017edccb43a4dff9d6928ee8e4e56c2dffe684de9b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 959.5 KB (959544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e87345956f2944f701ca7e2bedadfa4c0cc5d9f32ab881eb58972b3031b8add`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a2e766ffdc2170ef78ae2f5cc2fdd71e29dcdf0af74fc58a8886756ee76c7e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (342951840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ab2d7c56c31a652ee6ed692ba36832480cb5fff3b0311cdd4d97805d7e2471`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:46 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecf52a650a332215628425802f2003e541f2fa5c79235acf52d21a11d3e51d1`  
		Last Modified: Wed, 09 Sep 2026 00:10:36 GMT  
		Size: 61.7 MB (61700190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562c05355e125216c8c7d234cffad04e2f8998073863c75f2b8fc909141bb8f`  
		Last Modified: Wed, 09 Sep 2026 00:10:40 GMT  
		Size: 277.3 MB (277257185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:83a515bd206b2fbc2626d50e2853fd4689095a8db6a35fa991d230bd904c385a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1051173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaaefd2bc52193ba46149b5b6fc247444e2a853f77981b9e2e57d28f644f134`

```dockerfile
```

-	Layers:
	-	`sha256:f72502588978d217ada5a9728ceebc42062e7b0cfe715463ece22313a4c6b017`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 1.0 MB (1038868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90eb94686e2f78fe8e44be5dbff90446128aec8d956cd9dadcaa41577bfb8919`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:8380b55902785ce0e0958a5bede38b2ab12b045a08dba98f69bd4dcda3ef375a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358835584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:504f5cee3b816f1764d1c4eb42c8a3dafe98b1829f90e5cec33d75dfeb054c3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca8361ff0e6bf57e766f29cf1c9c6112c17490c01f1b621b24101ab6291e06a`  
		Last Modified: Wed, 09 Sep 2026 00:22:57 GMT  
		Size: 61.5 MB (61512255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f584a6aedd3eae5abea7f66952d4ec38db5551f34e372c223b30758667987c`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:a1700ca13de9de40245a09d19586069975b836354bef51cfa458bd6b292eb43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6acc9d6b8b4c5fec60219631dc99b48964dfd43f1813717f4e3b5d98a2937134`

```dockerfile
```

-	Layers:
	-	`sha256:85ffb3877ff0a88859c298cbc39461e806ca01f18b2787d84cc5769777239694`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b558f39ce9c6576642030a6966f22acd3719fc80ad7e95eba42bf5ec79b76b8a`  
		Last Modified: Wed, 09 Sep 2026 00:22:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.22`

```console
$ docker pull rust@sha256:b42001307cfa41fcf31bd1530dfc7d712104b61c8e2150b2f02e75415f3d501a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98-alpine3.22` - linux; amd64

```console
$ docker pull rust@sha256:2f16d6eecba5f73faa542a93060339a1441cfffc14a5a24a7257289cf4dda327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (339015474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b2c6d24ece8c2f9375d3eee956dd8cbda8b975cf1de161f212f2ba7874ae3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:19 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:36 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab511efd3e06e23dee3bb6a59c1a8610fef3ff5ce48e314b9e59b2eafa5e34b7`  
		Last Modified: Wed, 09 Sep 2026 00:11:12 GMT  
		Size: 65.0 MB (65037714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d8d997c6fc90d4fc430de9c2f21651d189760c4982047a320db7ba6db5d34e`  
		Last Modified: Wed, 09 Sep 2026 00:11:15 GMT  
		Size: 270.2 MB (270190165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:338681bc8d6101e97e855e6d41bc1635e31171492a6aca48b1f0f1dcc918f8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.6 KB (955618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1212e8669ee4aeba719fdd1e8d32b05de8b889fdacf408e321707b784508b01`

```dockerfile
```

-	Layers:
	-	`sha256:8185f2bdd7bf8bd38abcd600d84d9c245da01fbaf1b453a8433772f76e41555c`  
		Last Modified: Wed, 09 Sep 2026 00:11:09 GMT  
		Size: 943.4 KB (943432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d69d402f099d4459bd178d1d0bfb368d93d77d7a9a05816216b001c429e9c1`  
		Last Modified: Wed, 09 Sep 2026 00:11:08 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:7d7f9019e920f9dcfe7932ba1f8916e63237358396bf895dc90639b6a9063c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.1 MB (343090891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc818a5359210206e53f7145c677480692a3f6cf3c0d2b7a3b6713dff4fcf4d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:36 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a21f5ec861f582e525a21ffd00648b4e2a661e239b5186257e3c0a65c1bc350`  
		Last Modified: Wed, 09 Sep 2026 00:10:24 GMT  
		Size: 61.7 MB (61713135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e604ebc073f78edc233b6128b9f04dedb1be7c814b455b0933c600670edd0bba`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 277.3 MB (277257270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:5129fa3245537c8b28b9749c868427ea2255554e38c562bded0504bc34297c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1cfb6ec59d52d689f6a2084d7847fb7f50ad172b8ba32734da31a87418619e`

```dockerfile
```

-	Layers:
	-	`sha256:74ef0f225a7dba933e6eed4449dc155838ea9bc3548d246e1372d1913626228d`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 1.0 MB (1022756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf33695791efb310136d1de7c2f0e0ff7455ba98572f4baf7c407283edaf46c`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:9fa9e709e9b757083c524edf31c2a100e819b18dc6addc7a3e658748ddae108c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358981958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b277e2e19abef6f5a63e912747396ba98ff3dd43a66c16003b9acbffa2c9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:01 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce00360eff5fce600bf5eba4e8bb77bdee90ee7f3021c6833fadcf5f87deb33`  
		Last Modified: Wed, 09 Sep 2026 00:22:58 GMT  
		Size: 61.5 MB (61518367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79f3eac81af87918d8942715d0d96decde630c45f96039252136c3df6b0fa6e`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:841eb80c82beef7fd4c1c884c4b64b02bef09ee3aad24c92c62452299c3780d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4b3425fa9175d9ef1c6845f49edb84d45eae14e79ef956b17fff2f41c062e9`

```dockerfile
```

-	Layers:
	-	`sha256:d1ca0b736d4900317cb15136eb6054bc44b114cff9921d75cb562345838e1c48`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 957.3 KB (957281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f857d48d328daa34accabbdcdebdde15d2c88d2239fd9992d7c83e16452d8f29`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.23`

```console
$ docker pull rust@sha256:737ba17e6a2ffe14475b59861cd69f3d7152c29c75140bdbf6750befcfda7e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98-alpine3.23` - linux; amd64

```console
$ docker pull rust@sha256:1c59350394c5ab50a64d211c45dfce114fe3bb1d3d2fc45b75e622090bfecab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349101133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd9609a0fdde93bb1903a7bff8ce72e1292aa1ba704af60f5b780177bc495ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:35 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513c9852106ac509374725ab1bfac27877f05353580b1f5f0949569c4588ef6e`  
		Last Modified: Wed, 09 Sep 2026 00:11:34 GMT  
		Size: 75.1 MB (75066434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bb6663a88626d2e17f8ba55ec708dad372a5a4f9bbb0c5b81fd17ea4618d2f`  
		Last Modified: Wed, 09 Sep 2026 00:11:38 GMT  
		Size: 270.2 MB (270190278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:13805d85e8e44b4c31e27d8da42d2a9fb97d98cbc3907e6a37996e27c951f819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **999.2 KB (999245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff096ce16233f2e8ddaf430dc7e6ca20fb7668d670a690211172d871de24889`

```dockerfile
```

-	Layers:
	-	`sha256:677e6221b2b1fe7f41ebca4c01ce95dd4918cc60387a9dd9ebdd846917f223d9`  
		Last Modified: Wed, 09 Sep 2026 00:11:32 GMT  
		Size: 987.1 KB (987059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e05e2c153ed96ede95fcd044c1e55b483221cae3033b5b77069bccd31d0e3d35`  
		Last Modified: Wed, 09 Sep 2026 00:11:31 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:827f14ef7096163eba40620c9fa3bffebd83d8b94fd0c71bc49209c5a0400928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0708488973f094a4ff7c38f87debf1d316fc1e21e7fcd6d7fb3951c43e66df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc66ad239f060b9a6c0e0a5e7ae9f60b81bdc5e910c08306eef371f855b09818`  
		Last Modified: Wed, 09 Sep 2026 00:11:01 GMT  
		Size: 66.5 MB (66493105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88539a604a57261bab7ebc9ff3a557877a8944c80ec940b6eadeb5ec2d27aeba`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 277.3 MB (277257212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:bb4aa68cace0507c4915bd14c86a88057cacaf490c8bf3d3cd371613fbbac3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1058373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f438cb13cd3beaa86f3c5298f35c579303816f19b5b2cc2f08464fa46f7e6a0`

```dockerfile
```

-	Layers:
	-	`sha256:b14a25bf438155830b52495c5e91b7f75e0df21db9d0c067238b8fe13364dd34`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 1.0 MB (1046068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9096a5d62b9dc745365c96d0350b5793cf21a3f64b9232d92151019983fd7b53`  
		Last Modified: Wed, 09 Sep 2026 00:10:58 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:2ffad206a95eae3135e0b1bc58d637902ab3eb44b117e7fe94ffe6658ac322e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.9 MB (363931510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916b152390f45aa8abf0d62dfb853ac83332bff71ac92599358afc3ff9ed4a3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:14 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19725d8294404895d30305d3e42543bcc167c7352fd6660d178d39b46c76906`  
		Last Modified: Wed, 09 Sep 2026 00:28:07 GMT  
		Size: 66.4 MB (66374583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b157d67323e0f595e7245af2a3962adc73555fd07fe9deea8dc306fab4fddbb`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:6f2900b30dff8ed0e057ece8e80a5b226b2e6d7cc6872378514681e8ada7eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108ed5dfdf834e591949fe8ebc9ab7203b4e3ab89803133f74ef5a25b4147b20`

```dockerfile
```

-	Layers:
	-	`sha256:9deb0b56516d3b6d4a4c7d3e502d8066f94557a8f000848ffe8424eebee44dc1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 980.7 KB (980686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5d4a6d670e4d727d4e60bb6cad191a76e13e34775df30c4a814d434c202bf80`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.24`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98-alpine3.24` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-bookworm`

```console
$ docker pull rust@sha256:9a73a5088750b4c95158ab26629c854c3d6fc4b173cb7bc8079ad252d8ed7bfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:cdb2da72943ec036bf0c731ef5ac9e5fb2b1d17d3a9256a581bad64cf6fc093d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.4 MB (562439009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef460ef3675d3011ccfbd2bfd1c9239f04c044eee0cc0a3de6aecfd9f390bf26`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6a9ffe665b63ea18491fedb646423413ae3fdefcf7776ee25a2eaff8a673e`  
		Last Modified: Tue, 25 Aug 2026 02:17:34 GMT  
		Size: 211.7 MB (211662335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a9a21d5067abcf6df5c1099fbdd9852b78315b3004e47d487c24342c163c32`  
		Last Modified: Wed, 09 Sep 2026 00:09:57 GMT  
		Size: 213.8 MB (213810000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:7296b208667c941eda0fad1c6aad38e54b5fc9f82461c98b31e51dcd06891272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15885337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e33e1dd04cf31e7287e07cc6c2151395639c961509b899403c61b7ff193762`

```dockerfile
```

-	Layers:
	-	`sha256:17cfe5e0c98cb21915821e90fa9e8b64ae6959ce6fa1220f9081b30b88172b1f`  
		Last Modified: Wed, 09 Sep 2026 00:09:54 GMT  
		Size: 15.9 MB (15872241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c877cabb33a7cb6d447bb7d9d63692055e35f46e9da39536e18bc813db4bb445`  
		Last Modified: Wed, 09 Sep 2026 00:09:53 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:016156fef27501052af6ec5346801f259d49ab90b8578db85192a6116c047eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.3 MB (559344527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a33a9304cc3ecffaf3d5aa5df1c0be23662c0cabe6c3e480f8c1422e340068`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:54 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:54 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a5a707a569b0307f2e17db86af2421559f53f4647206901eae8593c6fe2fb2`  
		Last Modified: Tue, 25 Aug 2026 03:14:21 GMT  
		Size: 175.6 MB (175579748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03d0324e79668e855e8e2af081ddf02dad16417b35d6d3632104affbd2c4a6`  
		Last Modified: Wed, 09 Sep 2026 00:09:40 GMT  
		Size: 257.9 MB (257936983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:1e5392aedd974e57ca9f4188d137f80bae1d5932991e2b8dc13d2144751437c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9effdf190480d001a1ab838cee2f1ee76f231bc0d891428d54873966a7a129`

```dockerfile
```

-	Layers:
	-	`sha256:9df2079345490313be2c13156afb3a7b7af82f9b4f733dbfefa2b6eb4f300b2c`  
		Last Modified: Wed, 09 Sep 2026 00:09:35 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1f83aa63df0839b3470f361ac97b6bc2dcbb858de3375d7b5059bdec1cd83cd`  
		Last Modified: Wed, 09 Sep 2026 00:09:34 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:09e98f39fa15751de9476fefafe4be0e4ef92b292d608410595bbbde9ebdd375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521745920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690e6fc7bbfdeff8f8d3cd808062a58c0afe5416ca5aaf8e32cb94ad1d995bc7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9873f9cf3f97d8317bea39be5130389ca496910902e4c4327c227d606b57511d`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 203.2 MB (203190462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8fe434ff680a26b9e7ef5bf768dce7b45822269aeb251afc29ec66eed39a75`  
		Last Modified: Wed, 09 Sep 2026 00:09:26 GMT  
		Size: 182.0 MB (182042971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:dd5acfc238c54a7b855d2f712c28161c705095d6eba18e2ef3ce6856ef4a06a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57b2ad6535da2074198a7b42c7cf1ee57c6ae149837971755b749cee754edc2`

```dockerfile
```

-	Layers:
	-	`sha256:75587e37482da126c0686ea069b30149182070bdcf764449463053b98df3b2c1`  
		Last Modified: Wed, 09 Sep 2026 00:09:23 GMT  
		Size: 15.9 MB (15900767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1262e0f831b0d8f957b02c836101ff1784094cffc55ab70aba3519c2b7ae839`  
		Last Modified: Wed, 09 Sep 2026 00:09:22 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; 386

```console
$ docker pull rust@sha256:52ee3001113f3a66874af4fed85fcbce2f8f2ef7347aa8a575074f2a81e35be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592078672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6476e7ae0b3be7ca3e22faf6a82dcec0f8b655cd396971f21a5703b5bfa54b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:17:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:09 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bccc271fd741e5cc3ed1753eed6a6dc384881a8e08fe9349c59d8e5d2980fe`  
		Last Modified: Tue, 25 Aug 2026 02:17:49 GMT  
		Size: 210.6 MB (210581947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecac752c8087d1d33d2eb3f5001ef0a7b449b1d3c833f03552bd2b542d394fc`  
		Last Modified: Wed, 09 Sep 2026 00:09:56 GMT  
		Size: 240.9 MB (240868513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:b47838deb148a881e2d8628d5b0e3d2b0f70101f80553c4249654e056e44c6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15863523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6ba1df76f2209c9bb1e58241ba97ed38814ebace0a307725d56c4623292550`

```dockerfile
```

-	Layers:
	-	`sha256:b68ac8ff48190fb408334c5109c12eede90a2216aa73a08757ea32eb10bded1a`  
		Last Modified: Wed, 09 Sep 2026 00:09:52 GMT  
		Size: 15.9 MB (15850459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48943ffe092c0166c70db452ac33d39f92722bc76bdc76d41150e4b977c6611`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:911ba86634f42f9d24d5a62159d5847e727e68d0463f987cb8dc350eb3f6f205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.2 MB (657191037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec2495489be0391d0a0dd5cafe132c523f749e35ccc9f241f33fa6e4194dda8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:36:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9546012095f5835af9399f34fb6731784e64c61cf8a22462e2f59024e39605e5`  
		Last Modified: Tue, 25 Aug 2026 12:38:18 GMT  
		Size: 214.7 MB (214736789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247cee998bf5fc42601c45e635320fbe2071475c1c303ab2888a2e341efc9c53`  
		Last Modified: Wed, 09 Sep 2026 00:12:09 GMT  
		Size: 294.6 MB (294552747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:20bdf992fb917849f8e3454add3aaa90003ae265eda88a7e7cee3bc0135373ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4e01e7a05347ac9d5a37e6da6d023d5064efe385dbd9338bfa692929033940`

```dockerfile
```

-	Layers:
	-	`sha256:6d742174c62aa38ee7f88da2c55d12da9e03a59a1ce1e80bf42f4647f8edabec`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e8ccaaf8adb4245ab97cdd73320f680e839427bb073298d01af8e73517aa7d1`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 13.1 KB (13139 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-slim`

```console
$ docker pull rust@sha256:bce1476d4be4d78b83705bc5f428b86d640eeeea33e9dadafbc037b5703a53bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1.98-slim` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; s390x

```console
$ docker pull rust@sha256:638c3bf6e5d394d591f8c7d3e60a602e0074f7b89ce29eefbf3edcaab814cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377770604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232e886ca3d118618bfd6a97ee4cfd19a913c9efc1fe8547473f653b976635fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:03:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 02:03:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 02:03:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750387b638b582311c60ba4fa6bd608762d8e411ca1966ce0c9a016e7756938b`  
		Last Modified: Tue, 25 Aug 2026 02:04:47 GMT  
		Size: 347.9 MB (347902885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:df3d96e28c47a2a848bfe885daa6cefec7b5fb36cabf35debaf7e1624664c0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3997499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7c2947377186675bc342a8629738ff34df397f84f8c06842944937417bd063`

```dockerfile
```

-	Layers:
	-	`sha256:a1ccf0b6e281f68ad5456f3d21f0e79af627d63704b775206ea14b97ba1c8e79`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 4.0 MB (3981866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bb151702c9684a91eed9c9c2fc2a055c224853180288b990915ffba4edcf7c8`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-slim-bookworm`

```console
$ docker pull rust@sha256:ebd900bae66fd508b466cef82d64a83a5fb34682e4c8b2797a42908bddc95a57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98-slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:6ac25dcaa81e06721043f9a815b6000c87ba2f56bf7b82a3ad0e65ae71067e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312820430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff09915dc81b6088d47b9428ce47034436cc77ce893afbdd186e9e73f6d11087`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e61d2df41b0c8246b0ecae10e62233657071fe9469319cbaeb5a62fd22aa5e`  
		Last Modified: Wed, 09 Sep 2026 00:10:07 GMT  
		Size: 284.6 MB (284587775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:3702731e0653e2c55792c427daaa1e2e302b124203c80c3ec85ab68a193267ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b038fe067ebd5eb5504a987b63fd42fc0d37d6be05a8a70c84d24402926fb7`

```dockerfile
```

-	Layers:
	-	`sha256:71c33c1ec425dc29e78d5d4d7a6c1dc9da7f96e4bea244ac36a725f357556307`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 4.1 MB (4099461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291587921a8caf0c42218e0a7007d4debe8ad3ec225c7eb9fd4cb1437785fee7`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:50a6510e663c05e01720788845d709d73ed354f472212b81319110435ff74b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.7 MB (329722935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0364f78756b8b4cd00e23f1bfdc0442b864a7c57f8f8cae7d9b1385f51a0c83d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414c8f92a825401b733fc77e1fbf39e5c458313b146cddd2eb604c5345c47a59`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 305.8 MB (305783091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:602f7de5f8cea653c778171b48dc340836a26f2ce523fa44ac18b54646bc387b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8397e23d65480011e848111b1e76178b21f212e7b0a090e40f0b3fa41cfd61e7`

```dockerfile
```

-	Layers:
	-	`sha256:49ff1caa08096ab253bbead350734d71c7d2af5b316e99673a710ab89a563503`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 3.9 MB (3913848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f554f39ce686838e2494f8600894f5b952f01e15db28fbc3276361d9ee8d472`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:aedeeec296c1880a094f5fedafd95c981a953fcec11e530d12e83ae44e29ae75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276048675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e687b7adb9547359d8ee51a8fe37d6ea569484b73deaed5582f5e53b740a725`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de33fdb188fb9e526b27d973f4269f7bb173229e9d32dfc9ae0f322f4a6d7e39`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 247.9 MB (247931386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:0a59e0d130fb267a4ccbc5eb21b66337940925d5e343ae2392e968b7250aed12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fa72e92b08e86fb2f0f2adf547cbd25caf409ea80d6f6b34ed5f309351dc6e`

```dockerfile
```

-	Layers:
	-	`sha256:470f5556bcf63f1c7e52a3c0af3ae9822a5f25ec1909ae9b4a19b2a55b7d680d`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 4.1 MB (4121755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed535be3ba8d4c23a3206fb6e0abbc813b8964d41ced5c49d2da386a994b83b5`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:617433dd2f0cf24d26e47b33bc49fb1b1b831d632d3337dfb5c6490d6828d9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337715392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615bcf95e2a298ac466aac8777a30b728b6fbf7cc8c2e7937086753d3ecd11a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71ecbbb0661d561d8c977d053ba750086b60779d1ebba2d34385c1a88a21874`  
		Last Modified: Wed, 09 Sep 2026 00:10:25 GMT  
		Size: 308.5 MB (308494340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:658e254c967ed89c22101f02d4a11dca1a7f9447a038b1bdc2ccf15021ddd58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb6fc6f1b2f760cd14a4ef5e6dbd2d66418ac51167cca2f66e410cd35c37b82`

```dockerfile
```

-	Layers:
	-	`sha256:8d64b1638078b9e2bbf0c58c86191ef1df4fcd43a8c39f2fd8192a97a99ec2b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 4.1 MB (4080147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c647e2e88cfc1c89a00bf1e0c291ef673b7a7362728b8089f60ced300941642`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:f0a414a98dc2e8339b6fc66e2dd0fe7c4dadba6627bff98ad8c1385b15ea7e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395424860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2acafea7089207a9b29308448ff56f52876066436a6b89310112b7b17677645`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:14:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:48 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc76823127f96be2ccb714ea1fb06f9f0d8d3f3ca5450315dd917166c8c8630e`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 363.3 MB (363348383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:23c3151382b71cc3759c85df69d059c8f2eaa7da33c3875cc14153bf4f256b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fba437a4ea6a9088e74ba69769ec6225950ace2bc299f1660edfab269829bbf`

```dockerfile
```

-	Layers:
	-	`sha256:64580a6c7b53988b0b687fecaff67a922e20a6df801d595d30a5159f326487e9`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faedc50f4e3172e2bfe992f551bf47796463f6fc7c15e8d304740c7d5e41a97e`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-slim-trixie`

```console
$ docker pull rust@sha256:bce1476d4be4d78b83705bc5f428b86d640eeeea33e9dadafbc037b5703a53bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1.98-slim-trixie` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:638c3bf6e5d394d591f8c7d3e60a602e0074f7b89ce29eefbf3edcaab814cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377770604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232e886ca3d118618bfd6a97ee4cfd19a913c9efc1fe8547473f653b976635fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:03:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 02:03:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 02:03:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750387b638b582311c60ba4fa6bd608762d8e411ca1966ce0c9a016e7756938b`  
		Last Modified: Tue, 25 Aug 2026 02:04:47 GMT  
		Size: 347.9 MB (347902885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:df3d96e28c47a2a848bfe885daa6cefec7b5fb36cabf35debaf7e1624664c0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3997499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7c2947377186675bc342a8629738ff34df397f84f8c06842944937417bd063`

```dockerfile
```

-	Layers:
	-	`sha256:a1ccf0b6e281f68ad5456f3d21f0e79af627d63704b775206ea14b97ba1c8e79`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 4.0 MB (3981866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bb151702c9684a91eed9c9c2fc2a055c224853180288b990915ffba4edcf7c8`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-trixie`

```console
$ docker pull rust@sha256:bf5a9aa29062a6cb03c49bd59a46eb55e3cc770caf598a221a7866e500be3082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:1.98-trixie` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; s390x

```console
$ docker pull rust@sha256:8976c89ddd209120ba32ed2238038673e10ce67cbc4da797789e12606b776f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647250018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4bbc9fc3b3f616c72e26889bbd1edbbe5ecdd58812de5b1bddb589c1c9e7f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 05:25:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 05:25:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 05:25:20 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808857b26fbae6c0ec9368abea76e69ecd5dac93a6ab6a9746b807be9ae78831`  
		Last Modified: Tue, 25 Aug 2026 05:26:31 GMT  
		Size: 295.5 MB (295530618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c02af3bff48a96f24a4a79faac1ba2a721bdaf43f372f3dbe448e2334409e9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502c8e951c994b6f1b9cc1bfb74e32c1de5dc2f0a371dcb50491890a6156b982`

```dockerfile
```

-	Layers:
	-	`sha256:c1b5dfa918e00bebf407423f6b4ff58e14a96679109c15a449914614439cbc1f`  
		Last Modified: Tue, 25 Aug 2026 05:26:26 GMT  
		Size: 17.0 MB (16983825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7dd7797a8059a7c0366cd6e67151fba30819bbdd5ed3ab9f4718c229a57fb37`  
		Last Modified: Tue, 25 Aug 2026 05:26:25 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1`

```console
$ docker pull rust@sha256:462a9af3c54fb4718850d3c602fc0e54452c20b1c12a4e4080fdb001d4b9acbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
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

### `rust:1.98.1` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98.1-alpine` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.21`

```console
$ docker pull rust@sha256:88a07cc2e9b783133cddf0ea84e759a1185eb6e7ff104deea18e985d84503af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98.1-alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:2a7e9f2ab5a0b7fb28b088ce9e195450a79c52859dc0a583a9442b115c2fea07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338865708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e615b7f15a013b1102c85e70abf6ca03ff8b0316781e4bfa583d53b9e348f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a8ae5cfc82b74b2380be54de41697dcfca64715aa3d2b0d79d9787df3eb5`  
		Last Modified: Wed, 09 Sep 2026 00:11:00 GMT  
		Size: 65.0 MB (65028740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9734da7067fb8c170c70089fc298562b8d7c4ed96428043b2a86e23729c5e3bc`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:88a16e04c95191ff8ac1b7330e7fb066173511b845c90e28dcb6848885d02597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.7 KB (971730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0405b93b441b3a6f146b2403bb6a5388a72cd992acd0c4ff27836636c40939e`

```dockerfile
```

-	Layers:
	-	`sha256:28d8281e8da62dd282de1017edccb43a4dff9d6928ee8e4e56c2dffe684de9b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 959.5 KB (959544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e87345956f2944f701ca7e2bedadfa4c0cc5d9f32ab881eb58972b3031b8add`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a2e766ffdc2170ef78ae2f5cc2fdd71e29dcdf0af74fc58a8886756ee76c7e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (342951840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ab2d7c56c31a652ee6ed692ba36832480cb5fff3b0311cdd4d97805d7e2471`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:46 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecf52a650a332215628425802f2003e541f2fa5c79235acf52d21a11d3e51d1`  
		Last Modified: Wed, 09 Sep 2026 00:10:36 GMT  
		Size: 61.7 MB (61700190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562c05355e125216c8c7d234cffad04e2f8998073863c75f2b8fc909141bb8f`  
		Last Modified: Wed, 09 Sep 2026 00:10:40 GMT  
		Size: 277.3 MB (277257185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:83a515bd206b2fbc2626d50e2853fd4689095a8db6a35fa991d230bd904c385a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1051173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaaefd2bc52193ba46149b5b6fc247444e2a853f77981b9e2e57d28f644f134`

```dockerfile
```

-	Layers:
	-	`sha256:f72502588978d217ada5a9728ceebc42062e7b0cfe715463ece22313a4c6b017`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 1.0 MB (1038868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90eb94686e2f78fe8e44be5dbff90446128aec8d956cd9dadcaa41577bfb8919`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:8380b55902785ce0e0958a5bede38b2ab12b045a08dba98f69bd4dcda3ef375a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358835584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:504f5cee3b816f1764d1c4eb42c8a3dafe98b1829f90e5cec33d75dfeb054c3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca8361ff0e6bf57e766f29cf1c9c6112c17490c01f1b621b24101ab6291e06a`  
		Last Modified: Wed, 09 Sep 2026 00:22:57 GMT  
		Size: 61.5 MB (61512255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f584a6aedd3eae5abea7f66952d4ec38db5551f34e372c223b30758667987c`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:a1700ca13de9de40245a09d19586069975b836354bef51cfa458bd6b292eb43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6acc9d6b8b4c5fec60219631dc99b48964dfd43f1813717f4e3b5d98a2937134`

```dockerfile
```

-	Layers:
	-	`sha256:85ffb3877ff0a88859c298cbc39461e806ca01f18b2787d84cc5769777239694`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b558f39ce9c6576642030a6966f22acd3719fc80ad7e95eba42bf5ec79b76b8a`  
		Last Modified: Wed, 09 Sep 2026 00:22:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.22`

```console
$ docker pull rust@sha256:b42001307cfa41fcf31bd1530dfc7d712104b61c8e2150b2f02e75415f3d501a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98.1-alpine3.22` - linux; amd64

```console
$ docker pull rust@sha256:2f16d6eecba5f73faa542a93060339a1441cfffc14a5a24a7257289cf4dda327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (339015474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b2c6d24ece8c2f9375d3eee956dd8cbda8b975cf1de161f212f2ba7874ae3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:19 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:36 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab511efd3e06e23dee3bb6a59c1a8610fef3ff5ce48e314b9e59b2eafa5e34b7`  
		Last Modified: Wed, 09 Sep 2026 00:11:12 GMT  
		Size: 65.0 MB (65037714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d8d997c6fc90d4fc430de9c2f21651d189760c4982047a320db7ba6db5d34e`  
		Last Modified: Wed, 09 Sep 2026 00:11:15 GMT  
		Size: 270.2 MB (270190165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:338681bc8d6101e97e855e6d41bc1635e31171492a6aca48b1f0f1dcc918f8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.6 KB (955618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1212e8669ee4aeba719fdd1e8d32b05de8b889fdacf408e321707b784508b01`

```dockerfile
```

-	Layers:
	-	`sha256:8185f2bdd7bf8bd38abcd600d84d9c245da01fbaf1b453a8433772f76e41555c`  
		Last Modified: Wed, 09 Sep 2026 00:11:09 GMT  
		Size: 943.4 KB (943432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d69d402f099d4459bd178d1d0bfb368d93d77d7a9a05816216b001c429e9c1`  
		Last Modified: Wed, 09 Sep 2026 00:11:08 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:7d7f9019e920f9dcfe7932ba1f8916e63237358396bf895dc90639b6a9063c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.1 MB (343090891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc818a5359210206e53f7145c677480692a3f6cf3c0d2b7a3b6713dff4fcf4d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:36 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a21f5ec861f582e525a21ffd00648b4e2a661e239b5186257e3c0a65c1bc350`  
		Last Modified: Wed, 09 Sep 2026 00:10:24 GMT  
		Size: 61.7 MB (61713135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e604ebc073f78edc233b6128b9f04dedb1be7c814b455b0933c600670edd0bba`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 277.3 MB (277257270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:5129fa3245537c8b28b9749c868427ea2255554e38c562bded0504bc34297c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1cfb6ec59d52d689f6a2084d7847fb7f50ad172b8ba32734da31a87418619e`

```dockerfile
```

-	Layers:
	-	`sha256:74ef0f225a7dba933e6eed4449dc155838ea9bc3548d246e1372d1913626228d`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 1.0 MB (1022756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf33695791efb310136d1de7c2f0e0ff7455ba98572f4baf7c407283edaf46c`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:9fa9e709e9b757083c524edf31c2a100e819b18dc6addc7a3e658748ddae108c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358981958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b277e2e19abef6f5a63e912747396ba98ff3dd43a66c16003b9acbffa2c9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:01 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce00360eff5fce600bf5eba4e8bb77bdee90ee7f3021c6833fadcf5f87deb33`  
		Last Modified: Wed, 09 Sep 2026 00:22:58 GMT  
		Size: 61.5 MB (61518367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79f3eac81af87918d8942715d0d96decde630c45f96039252136c3df6b0fa6e`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:841eb80c82beef7fd4c1c884c4b64b02bef09ee3aad24c92c62452299c3780d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4b3425fa9175d9ef1c6845f49edb84d45eae14e79ef956b17fff2f41c062e9`

```dockerfile
```

-	Layers:
	-	`sha256:d1ca0b736d4900317cb15136eb6054bc44b114cff9921d75cb562345838e1c48`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 957.3 KB (957281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f857d48d328daa34accabbdcdebdde15d2c88d2239fd9992d7c83e16452d8f29`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.23`

```console
$ docker pull rust@sha256:737ba17e6a2ffe14475b59861cd69f3d7152c29c75140bdbf6750befcfda7e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98.1-alpine3.23` - linux; amd64

```console
$ docker pull rust@sha256:1c59350394c5ab50a64d211c45dfce114fe3bb1d3d2fc45b75e622090bfecab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349101133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd9609a0fdde93bb1903a7bff8ce72e1292aa1ba704af60f5b780177bc495ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:35 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513c9852106ac509374725ab1bfac27877f05353580b1f5f0949569c4588ef6e`  
		Last Modified: Wed, 09 Sep 2026 00:11:34 GMT  
		Size: 75.1 MB (75066434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bb6663a88626d2e17f8ba55ec708dad372a5a4f9bbb0c5b81fd17ea4618d2f`  
		Last Modified: Wed, 09 Sep 2026 00:11:38 GMT  
		Size: 270.2 MB (270190278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:13805d85e8e44b4c31e27d8da42d2a9fb97d98cbc3907e6a37996e27c951f819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **999.2 KB (999245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff096ce16233f2e8ddaf430dc7e6ca20fb7668d670a690211172d871de24889`

```dockerfile
```

-	Layers:
	-	`sha256:677e6221b2b1fe7f41ebca4c01ce95dd4918cc60387a9dd9ebdd846917f223d9`  
		Last Modified: Wed, 09 Sep 2026 00:11:32 GMT  
		Size: 987.1 KB (987059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e05e2c153ed96ede95fcd044c1e55b483221cae3033b5b77069bccd31d0e3d35`  
		Last Modified: Wed, 09 Sep 2026 00:11:31 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:827f14ef7096163eba40620c9fa3bffebd83d8b94fd0c71bc49209c5a0400928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0708488973f094a4ff7c38f87debf1d316fc1e21e7fcd6d7fb3951c43e66df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc66ad239f060b9a6c0e0a5e7ae9f60b81bdc5e910c08306eef371f855b09818`  
		Last Modified: Wed, 09 Sep 2026 00:11:01 GMT  
		Size: 66.5 MB (66493105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88539a604a57261bab7ebc9ff3a557877a8944c80ec940b6eadeb5ec2d27aeba`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 277.3 MB (277257212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:bb4aa68cace0507c4915bd14c86a88057cacaf490c8bf3d3cd371613fbbac3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1058373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f438cb13cd3beaa86f3c5298f35c579303816f19b5b2cc2f08464fa46f7e6a0`

```dockerfile
```

-	Layers:
	-	`sha256:b14a25bf438155830b52495c5e91b7f75e0df21db9d0c067238b8fe13364dd34`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 1.0 MB (1046068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9096a5d62b9dc745365c96d0350b5793cf21a3f64b9232d92151019983fd7b53`  
		Last Modified: Wed, 09 Sep 2026 00:10:58 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:2ffad206a95eae3135e0b1bc58d637902ab3eb44b117e7fe94ffe6658ac322e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.9 MB (363931510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916b152390f45aa8abf0d62dfb853ac83332bff71ac92599358afc3ff9ed4a3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:14 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19725d8294404895d30305d3e42543bcc167c7352fd6660d178d39b46c76906`  
		Last Modified: Wed, 09 Sep 2026 00:28:07 GMT  
		Size: 66.4 MB (66374583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b157d67323e0f595e7245af2a3962adc73555fd07fe9deea8dc306fab4fddbb`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:6f2900b30dff8ed0e057ece8e80a5b226b2e6d7cc6872378514681e8ada7eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108ed5dfdf834e591949fe8ebc9ab7203b4e3ab89803133f74ef5a25b4147b20`

```dockerfile
```

-	Layers:
	-	`sha256:9deb0b56516d3b6d4a4c7d3e502d8066f94557a8f000848ffe8424eebee44dc1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 980.7 KB (980686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5d4a6d670e4d727d4e60bb6cad191a76e13e34775df30c4a814d434c202bf80`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.24`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98.1-alpine3.24` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-bookworm`

```console
$ docker pull rust@sha256:9a73a5088750b4c95158ab26629c854c3d6fc4b173cb7bc8079ad252d8ed7bfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98.1-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:cdb2da72943ec036bf0c731ef5ac9e5fb2b1d17d3a9256a581bad64cf6fc093d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.4 MB (562439009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef460ef3675d3011ccfbd2bfd1c9239f04c044eee0cc0a3de6aecfd9f390bf26`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6a9ffe665b63ea18491fedb646423413ae3fdefcf7776ee25a2eaff8a673e`  
		Last Modified: Tue, 25 Aug 2026 02:17:34 GMT  
		Size: 211.7 MB (211662335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a9a21d5067abcf6df5c1099fbdd9852b78315b3004e47d487c24342c163c32`  
		Last Modified: Wed, 09 Sep 2026 00:09:57 GMT  
		Size: 213.8 MB (213810000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:7296b208667c941eda0fad1c6aad38e54b5fc9f82461c98b31e51dcd06891272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15885337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e33e1dd04cf31e7287e07cc6c2151395639c961509b899403c61b7ff193762`

```dockerfile
```

-	Layers:
	-	`sha256:17cfe5e0c98cb21915821e90fa9e8b64ae6959ce6fa1220f9081b30b88172b1f`  
		Last Modified: Wed, 09 Sep 2026 00:09:54 GMT  
		Size: 15.9 MB (15872241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c877cabb33a7cb6d447bb7d9d63692055e35f46e9da39536e18bc813db4bb445`  
		Last Modified: Wed, 09 Sep 2026 00:09:53 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:016156fef27501052af6ec5346801f259d49ab90b8578db85192a6116c047eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.3 MB (559344527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a33a9304cc3ecffaf3d5aa5df1c0be23662c0cabe6c3e480f8c1422e340068`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:54 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:54 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a5a707a569b0307f2e17db86af2421559f53f4647206901eae8593c6fe2fb2`  
		Last Modified: Tue, 25 Aug 2026 03:14:21 GMT  
		Size: 175.6 MB (175579748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03d0324e79668e855e8e2af081ddf02dad16417b35d6d3632104affbd2c4a6`  
		Last Modified: Wed, 09 Sep 2026 00:09:40 GMT  
		Size: 257.9 MB (257936983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:1e5392aedd974e57ca9f4188d137f80bae1d5932991e2b8dc13d2144751437c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9effdf190480d001a1ab838cee2f1ee76f231bc0d891428d54873966a7a129`

```dockerfile
```

-	Layers:
	-	`sha256:9df2079345490313be2c13156afb3a7b7af82f9b4f733dbfefa2b6eb4f300b2c`  
		Last Modified: Wed, 09 Sep 2026 00:09:35 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1f83aa63df0839b3470f361ac97b6bc2dcbb858de3375d7b5059bdec1cd83cd`  
		Last Modified: Wed, 09 Sep 2026 00:09:34 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:09e98f39fa15751de9476fefafe4be0e4ef92b292d608410595bbbde9ebdd375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521745920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690e6fc7bbfdeff8f8d3cd808062a58c0afe5416ca5aaf8e32cb94ad1d995bc7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9873f9cf3f97d8317bea39be5130389ca496910902e4c4327c227d606b57511d`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 203.2 MB (203190462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8fe434ff680a26b9e7ef5bf768dce7b45822269aeb251afc29ec66eed39a75`  
		Last Modified: Wed, 09 Sep 2026 00:09:26 GMT  
		Size: 182.0 MB (182042971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:dd5acfc238c54a7b855d2f712c28161c705095d6eba18e2ef3ce6856ef4a06a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57b2ad6535da2074198a7b42c7cf1ee57c6ae149837971755b749cee754edc2`

```dockerfile
```

-	Layers:
	-	`sha256:75587e37482da126c0686ea069b30149182070bdcf764449463053b98df3b2c1`  
		Last Modified: Wed, 09 Sep 2026 00:09:23 GMT  
		Size: 15.9 MB (15900767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1262e0f831b0d8f957b02c836101ff1784094cffc55ab70aba3519c2b7ae839`  
		Last Modified: Wed, 09 Sep 2026 00:09:22 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; 386

```console
$ docker pull rust@sha256:52ee3001113f3a66874af4fed85fcbce2f8f2ef7347aa8a575074f2a81e35be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592078672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6476e7ae0b3be7ca3e22faf6a82dcec0f8b655cd396971f21a5703b5bfa54b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:17:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:09 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bccc271fd741e5cc3ed1753eed6a6dc384881a8e08fe9349c59d8e5d2980fe`  
		Last Modified: Tue, 25 Aug 2026 02:17:49 GMT  
		Size: 210.6 MB (210581947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecac752c8087d1d33d2eb3f5001ef0a7b449b1d3c833f03552bd2b542d394fc`  
		Last Modified: Wed, 09 Sep 2026 00:09:56 GMT  
		Size: 240.9 MB (240868513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:b47838deb148a881e2d8628d5b0e3d2b0f70101f80553c4249654e056e44c6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15863523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6ba1df76f2209c9bb1e58241ba97ed38814ebace0a307725d56c4623292550`

```dockerfile
```

-	Layers:
	-	`sha256:b68ac8ff48190fb408334c5109c12eede90a2216aa73a08757ea32eb10bded1a`  
		Last Modified: Wed, 09 Sep 2026 00:09:52 GMT  
		Size: 15.9 MB (15850459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48943ffe092c0166c70db452ac33d39f92722bc76bdc76d41150e4b977c6611`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:911ba86634f42f9d24d5a62159d5847e727e68d0463f987cb8dc350eb3f6f205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.2 MB (657191037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec2495489be0391d0a0dd5cafe132c523f749e35ccc9f241f33fa6e4194dda8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:36:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9546012095f5835af9399f34fb6731784e64c61cf8a22462e2f59024e39605e5`  
		Last Modified: Tue, 25 Aug 2026 12:38:18 GMT  
		Size: 214.7 MB (214736789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247cee998bf5fc42601c45e635320fbe2071475c1c303ab2888a2e341efc9c53`  
		Last Modified: Wed, 09 Sep 2026 00:12:09 GMT  
		Size: 294.6 MB (294552747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:20bdf992fb917849f8e3454add3aaa90003ae265eda88a7e7cee3bc0135373ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4e01e7a05347ac9d5a37e6da6d023d5064efe385dbd9338bfa692929033940`

```dockerfile
```

-	Layers:
	-	`sha256:6d742174c62aa38ee7f88da2c55d12da9e03a59a1ce1e80bf42f4647f8edabec`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e8ccaaf8adb4245ab97cdd73320f680e839427bb073298d01af8e73517aa7d1`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 13.1 KB (13139 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-slim`

```console
$ docker pull rust@sha256:ce84a5edd80c5f91e05c5533b1e53eb1da54028f33734dc06aa6b49fa190462d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
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

### `rust:1.98.1-slim` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-slim-bookworm`

```console
$ docker pull rust@sha256:ebd900bae66fd508b466cef82d64a83a5fb34682e4c8b2797a42908bddc95a57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:1.98.1-slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:6ac25dcaa81e06721043f9a815b6000c87ba2f56bf7b82a3ad0e65ae71067e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312820430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff09915dc81b6088d47b9428ce47034436cc77ce893afbdd186e9e73f6d11087`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e61d2df41b0c8246b0ecae10e62233657071fe9469319cbaeb5a62fd22aa5e`  
		Last Modified: Wed, 09 Sep 2026 00:10:07 GMT  
		Size: 284.6 MB (284587775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:3702731e0653e2c55792c427daaa1e2e302b124203c80c3ec85ab68a193267ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b038fe067ebd5eb5504a987b63fd42fc0d37d6be05a8a70c84d24402926fb7`

```dockerfile
```

-	Layers:
	-	`sha256:71c33c1ec425dc29e78d5d4d7a6c1dc9da7f96e4bea244ac36a725f357556307`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 4.1 MB (4099461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291587921a8caf0c42218e0a7007d4debe8ad3ec225c7eb9fd4cb1437785fee7`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:50a6510e663c05e01720788845d709d73ed354f472212b81319110435ff74b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.7 MB (329722935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0364f78756b8b4cd00e23f1bfdc0442b864a7c57f8f8cae7d9b1385f51a0c83d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414c8f92a825401b733fc77e1fbf39e5c458313b146cddd2eb604c5345c47a59`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 305.8 MB (305783091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:602f7de5f8cea653c778171b48dc340836a26f2ce523fa44ac18b54646bc387b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8397e23d65480011e848111b1e76178b21f212e7b0a090e40f0b3fa41cfd61e7`

```dockerfile
```

-	Layers:
	-	`sha256:49ff1caa08096ab253bbead350734d71c7d2af5b316e99673a710ab89a563503`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 3.9 MB (3913848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f554f39ce686838e2494f8600894f5b952f01e15db28fbc3276361d9ee8d472`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:aedeeec296c1880a094f5fedafd95c981a953fcec11e530d12e83ae44e29ae75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276048675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e687b7adb9547359d8ee51a8fe37d6ea569484b73deaed5582f5e53b740a725`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de33fdb188fb9e526b27d973f4269f7bb173229e9d32dfc9ae0f322f4a6d7e39`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 247.9 MB (247931386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:0a59e0d130fb267a4ccbc5eb21b66337940925d5e343ae2392e968b7250aed12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fa72e92b08e86fb2f0f2adf547cbd25caf409ea80d6f6b34ed5f309351dc6e`

```dockerfile
```

-	Layers:
	-	`sha256:470f5556bcf63f1c7e52a3c0af3ae9822a5f25ec1909ae9b4a19b2a55b7d680d`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 4.1 MB (4121755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed535be3ba8d4c23a3206fb6e0abbc813b8964d41ced5c49d2da386a994b83b5`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:617433dd2f0cf24d26e47b33bc49fb1b1b831d632d3337dfb5c6490d6828d9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337715392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615bcf95e2a298ac466aac8777a30b728b6fbf7cc8c2e7937086753d3ecd11a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71ecbbb0661d561d8c977d053ba750086b60779d1ebba2d34385c1a88a21874`  
		Last Modified: Wed, 09 Sep 2026 00:10:25 GMT  
		Size: 308.5 MB (308494340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:658e254c967ed89c22101f02d4a11dca1a7f9447a038b1bdc2ccf15021ddd58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb6fc6f1b2f760cd14a4ef5e6dbd2d66418ac51167cca2f66e410cd35c37b82`

```dockerfile
```

-	Layers:
	-	`sha256:8d64b1638078b9e2bbf0c58c86191ef1df4fcd43a8c39f2fd8192a97a99ec2b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 4.1 MB (4080147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c647e2e88cfc1c89a00bf1e0c291ef673b7a7362728b8089f60ced300941642`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:f0a414a98dc2e8339b6fc66e2dd0fe7c4dadba6627bff98ad8c1385b15ea7e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395424860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2acafea7089207a9b29308448ff56f52876066436a6b89310112b7b17677645`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:14:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:48 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc76823127f96be2ccb714ea1fb06f9f0d8d3f3ca5450315dd917166c8c8630e`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 363.3 MB (363348383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:23c3151382b71cc3759c85df69d059c8f2eaa7da33c3875cc14153bf4f256b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fba437a4ea6a9088e74ba69769ec6225950ace2bc299f1660edfab269829bbf`

```dockerfile
```

-	Layers:
	-	`sha256:64580a6c7b53988b0b687fecaff67a922e20a6df801d595d30a5159f326487e9`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faedc50f4e3172e2bfe992f551bf47796463f6fc7c15e8d304740c7d5e41a97e`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-slim-trixie`

```console
$ docker pull rust@sha256:ce84a5edd80c5f91e05c5533b1e53eb1da54028f33734dc06aa6b49fa190462d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
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

### `rust:1.98.1-slim-trixie` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-trixie`

```console
$ docker pull rust@sha256:462a9af3c54fb4718850d3c602fc0e54452c20b1c12a4e4080fdb001d4b9acbf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
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

### `rust:1.98.1-trixie` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.21`

```console
$ docker pull rust@sha256:88a07cc2e9b783133cddf0ea84e759a1185eb6e7ff104deea18e985d84503af7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:2a7e9f2ab5a0b7fb28b088ce9e195450a79c52859dc0a583a9442b115c2fea07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338865708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1e615b7f15a013b1102c85e70abf6ca03ff8b0316781e4bfa583d53b9e348f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8849a8ae5cfc82b74b2380be54de41697dcfca64715aa3d2b0d79d9787df3eb5`  
		Last Modified: Wed, 09 Sep 2026 00:11:00 GMT  
		Size: 65.0 MB (65028740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9734da7067fb8c170c70089fc298562b8d7c4ed96428043b2a86e23729c5e3bc`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:88a16e04c95191ff8ac1b7330e7fb066173511b845c90e28dcb6848885d02597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.7 KB (971730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0405b93b441b3a6f146b2403bb6a5388a72cd992acd0c4ff27836636c40939e`

```dockerfile
```

-	Layers:
	-	`sha256:28d8281e8da62dd282de1017edccb43a4dff9d6928ee8e4e56c2dffe684de9b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 959.5 KB (959544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e87345956f2944f701ca7e2bedadfa4c0cc5d9f32ab881eb58972b3031b8add`  
		Last Modified: Wed, 09 Sep 2026 00:10:57 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a2e766ffdc2170ef78ae2f5cc2fdd71e29dcdf0af74fc58a8886756ee76c7e1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (342951840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86ab2d7c56c31a652ee6ed692ba36832480cb5fff3b0311cdd4d97805d7e2471`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:46 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cecf52a650a332215628425802f2003e541f2fa5c79235acf52d21a11d3e51d1`  
		Last Modified: Wed, 09 Sep 2026 00:10:36 GMT  
		Size: 61.7 MB (61700190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8562c05355e125216c8c7d234cffad04e2f8998073863c75f2b8fc909141bb8f`  
		Last Modified: Wed, 09 Sep 2026 00:10:40 GMT  
		Size: 277.3 MB (277257185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:83a515bd206b2fbc2626d50e2853fd4689095a8db6a35fa991d230bd904c385a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1051173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eaaefd2bc52193ba46149b5b6fc247444e2a853f77981b9e2e57d28f644f134`

```dockerfile
```

-	Layers:
	-	`sha256:f72502588978d217ada5a9728ceebc42062e7b0cfe715463ece22313a4c6b017`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 1.0 MB (1038868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90eb94686e2f78fe8e44be5dbff90446128aec8d956cd9dadcaa41577bfb8919`  
		Last Modified: Wed, 09 Sep 2026 00:10:33 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:8380b55902785ce0e0958a5bede38b2ab12b045a08dba98f69bd4dcda3ef375a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358835584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:504f5cee3b816f1764d1c4eb42c8a3dafe98b1829f90e5cec33d75dfeb054c3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:00 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ca8361ff0e6bf57e766f29cf1c9c6112c17490c01f1b621b24101ab6291e06a`  
		Last Modified: Wed, 09 Sep 2026 00:22:57 GMT  
		Size: 61.5 MB (61512255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f584a6aedd3eae5abea7f66952d4ec38db5551f34e372c223b30758667987c`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:a1700ca13de9de40245a09d19586069975b836354bef51cfa458bd6b292eb43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6acc9d6b8b4c5fec60219631dc99b48964dfd43f1813717f4e3b5d98a2937134`

```dockerfile
```

-	Layers:
	-	`sha256:85ffb3877ff0a88859c298cbc39461e806ca01f18b2787d84cc5769777239694`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b558f39ce9c6576642030a6966f22acd3719fc80ad7e95eba42bf5ec79b76b8a`  
		Last Modified: Wed, 09 Sep 2026 00:22:54 GMT  
		Size: 12.2 KB (12231 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.22`

```console
$ docker pull rust@sha256:b42001307cfa41fcf31bd1530dfc7d712104b61c8e2150b2f02e75415f3d501a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine3.22` - linux; amd64

```console
$ docker pull rust@sha256:2f16d6eecba5f73faa542a93060339a1441cfffc14a5a24a7257289cf4dda327
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.0 MB (339015474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b2c6d24ece8c2f9375d3eee956dd8cbda8b975cf1de161f212f2ba7874ae3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:19 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:36 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab511efd3e06e23dee3bb6a59c1a8610fef3ff5ce48e314b9e59b2eafa5e34b7`  
		Last Modified: Wed, 09 Sep 2026 00:11:12 GMT  
		Size: 65.0 MB (65037714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d8d997c6fc90d4fc430de9c2f21651d189760c4982047a320db7ba6db5d34e`  
		Last Modified: Wed, 09 Sep 2026 00:11:15 GMT  
		Size: 270.2 MB (270190165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:338681bc8d6101e97e855e6d41bc1635e31171492a6aca48b1f0f1dcc918f8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.6 KB (955618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1212e8669ee4aeba719fdd1e8d32b05de8b889fdacf408e321707b784508b01`

```dockerfile
```

-	Layers:
	-	`sha256:8185f2bdd7bf8bd38abcd600d84d9c245da01fbaf1b453a8433772f76e41555c`  
		Last Modified: Wed, 09 Sep 2026 00:11:09 GMT  
		Size: 943.4 KB (943432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91d69d402f099d4459bd178d1d0bfb368d93d77d7a9a05816216b001c429e9c1`  
		Last Modified: Wed, 09 Sep 2026 00:11:08 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:7d7f9019e920f9dcfe7932ba1f8916e63237358396bf895dc90639b6a9063c77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.1 MB (343090891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc818a5359210206e53f7145c677480692a3f6cf3c0d2b7a3b6713dff4fcf4d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:09:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:36 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:09:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a21f5ec861f582e525a21ffd00648b4e2a661e239b5186257e3c0a65c1bc350`  
		Last Modified: Wed, 09 Sep 2026 00:10:24 GMT  
		Size: 61.7 MB (61713135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e604ebc073f78edc233b6128b9f04dedb1be7c814b455b0933c600670edd0bba`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 277.3 MB (277257270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:5129fa3245537c8b28b9749c868427ea2255554e38c562bded0504bc34297c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1cfb6ec59d52d689f6a2084d7847fb7f50ad172b8ba32734da31a87418619e`

```dockerfile
```

-	Layers:
	-	`sha256:74ef0f225a7dba933e6eed4449dc155838ea9bc3548d246e1372d1913626228d`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 1.0 MB (1022756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf33695791efb310136d1de7c2f0e0ff7455ba98572f4baf7c407283edaf46c`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:9fa9e709e9b757083c524edf31c2a100e819b18dc6addc7a3e658748ddae108c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358981958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b277e2e19abef6f5a63e912747396ba98ff3dd43a66c16003b9acbffa2c9850`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:19:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:19:47 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:19:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:21:01 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce00360eff5fce600bf5eba4e8bb77bdee90ee7f3021c6833fadcf5f87deb33`  
		Last Modified: Wed, 09 Sep 2026 00:22:58 GMT  
		Size: 61.5 MB (61518367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79f3eac81af87918d8942715d0d96decde630c45f96039252136c3df6b0fa6e`  
		Last Modified: Wed, 09 Sep 2026 00:23:02 GMT  
		Size: 293.7 MB (293744359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:841eb80c82beef7fd4c1c884c4b64b02bef09ee3aad24c92c62452299c3780d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4b3425fa9175d9ef1c6845f49edb84d45eae14e79ef956b17fff2f41c062e9`

```dockerfile
```

-	Layers:
	-	`sha256:d1ca0b736d4900317cb15136eb6054bc44b114cff9921d75cb562345838e1c48`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 957.3 KB (957281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f857d48d328daa34accabbdcdebdde15d2c88d2239fd9992d7c83e16452d8f29`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.23`

```console
$ docker pull rust@sha256:737ba17e6a2ffe14475b59861cd69f3d7152c29c75140bdbf6750befcfda7e6c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine3.23` - linux; amd64

```console
$ docker pull rust@sha256:1c59350394c5ab50a64d211c45dfce114fe3bb1d3d2fc45b75e622090bfecab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349101133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd9609a0fdde93bb1903a7bff8ce72e1292aa1ba704af60f5b780177bc495ad`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:35 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513c9852106ac509374725ab1bfac27877f05353580b1f5f0949569c4588ef6e`  
		Last Modified: Wed, 09 Sep 2026 00:11:34 GMT  
		Size: 75.1 MB (75066434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92bb6663a88626d2e17f8ba55ec708dad372a5a4f9bbb0c5b81fd17ea4618d2f`  
		Last Modified: Wed, 09 Sep 2026 00:11:38 GMT  
		Size: 270.2 MB (270190278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:13805d85e8e44b4c31e27d8da42d2a9fb97d98cbc3907e6a37996e27c951f819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **999.2 KB (999245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff096ce16233f2e8ddaf430dc7e6ca20fb7668d670a690211172d871de24889`

```dockerfile
```

-	Layers:
	-	`sha256:677e6221b2b1fe7f41ebca4c01ce95dd4918cc60387a9dd9ebdd846917f223d9`  
		Last Modified: Wed, 09 Sep 2026 00:11:32 GMT  
		Size: 987.1 KB (987059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e05e2c153ed96ede95fcd044c1e55b483221cae3033b5b77069bccd31d0e3d35`  
		Last Modified: Wed, 09 Sep 2026 00:11:31 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:827f14ef7096163eba40620c9fa3bffebd83d8b94fd0c71bc49209c5a0400928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347932177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0708488973f094a4ff7c38f87debf1d316fc1e21e7fcd6d7fb3951c43e66df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc66ad239f060b9a6c0e0a5e7ae9f60b81bdc5e910c08306eef371f855b09818`  
		Last Modified: Wed, 09 Sep 2026 00:11:01 GMT  
		Size: 66.5 MB (66493105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88539a604a57261bab7ebc9ff3a557877a8944c80ec940b6eadeb5ec2d27aeba`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 277.3 MB (277257212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:bb4aa68cace0507c4915bd14c86a88057cacaf490c8bf3d3cd371613fbbac3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1058373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f438cb13cd3beaa86f3c5298f35c579303816f19b5b2cc2f08464fa46f7e6a0`

```dockerfile
```

-	Layers:
	-	`sha256:b14a25bf438155830b52495c5e91b7f75e0df21db9d0c067238b8fe13364dd34`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 1.0 MB (1046068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9096a5d62b9dc745365c96d0350b5793cf21a3f64b9232d92151019983fd7b53`  
		Last Modified: Wed, 09 Sep 2026 00:10:58 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:2ffad206a95eae3135e0b1bc58d637902ab3eb44b117e7fe94ffe6658ac322e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.9 MB (363931510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916b152390f45aa8abf0d62dfb853ac83332bff71ac92599358afc3ff9ed4a3e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:14 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19725d8294404895d30305d3e42543bcc167c7352fd6660d178d39b46c76906`  
		Last Modified: Wed, 09 Sep 2026 00:28:07 GMT  
		Size: 66.4 MB (66374583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b157d67323e0f595e7245af2a3962adc73555fd07fe9deea8dc306fab4fddbb`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:6f2900b30dff8ed0e057ece8e80a5b226b2e6d7cc6872378514681e8ada7eeb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108ed5dfdf834e591949fe8ebc9ab7203b4e3ab89803133f74ef5a25b4147b20`

```dockerfile
```

-	Layers:
	-	`sha256:9deb0b56516d3b6d4a4c7d3e502d8066f94557a8f000848ffe8424eebee44dc1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 980.7 KB (980686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5d4a6d670e4d727d4e60bb6cad191a76e13e34775df30c4a814d434c202bf80`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.24`

```console
$ docker pull rust@sha256:1716b3aa042d735f4566d14dc54e8037de9d69556e2d5dd58131d93a613d173d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:alpine3.24` - linux; amd64

```console
$ docker pull rust@sha256:a5163321b170835916201861dbe70a7f92e8cc822531ee3830dbc0a113b1ad54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349115712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93bce90b2b026a81c88842e7489e666e61a6d9d3c920682b739e8b288a91bc7d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:06 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:06 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:06 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b5f8c39bc3fc3b330ee4b8bc81af9aec120015b29697c6f4c7c8763948a3b7`  
		Last Modified: Wed, 09 Sep 2026 00:10:59 GMT  
		Size: 75.1 MB (75079231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e7f7a766d250bfbfe055f3e06e3742de2ff3ee2d87dbd9f5ed1b9a1012ba415`  
		Last Modified: Wed, 09 Sep 2026 00:11:03 GMT  
		Size: 270.2 MB (270190090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:ab98888f06c799b997bb85fd0e4123f4bdb83780963ca5b887b23af962f5eea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000bf0a35c5ec930f476987ddf72108e492bd82d3ffe73a394746316d8132da4`

```dockerfile
```

-	Layers:
	-	`sha256:f2ec09d4a4f8ac2e0703c6b6452072ca9947d886f28d477778fe3e80a65932d8`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 989.2 KB (989196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32233bc5cd33644069f08b4653c36931de5aa75b360b6fa3cb2ad43a081fc8ed`  
		Last Modified: Wed, 09 Sep 2026 00:10:56 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e2a251f8482ab6d9d9a3c1cdacfa0824440b5fdb826cd1a069c490ad1288f197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347947447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b0fb119103a600403b4092381bf7cb9e1dba8b14aaf545bfacc1668e6a077f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:10:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:10:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:31 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad29c5e24c1cd2e87bdf9a09949344c1f99250eedc257aab9bc9cb0815e8bbb`  
		Last Modified: Wed, 09 Sep 2026 00:11:07 GMT  
		Size: 66.5 MB (66507193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21479c418769728737769e6321fcabb78a757ab833503bdc08603d41e19f172f`  
		Last Modified: Wed, 09 Sep 2026 00:11:10 GMT  
		Size: 277.3 MB (277257217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:fb41d2a27fc6491c0a354adc7bc2d6a0473f89a350dc376da3b0aa440485fbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751038f9e3a99a36f5592a4ae6b657a4a6f9bba00aaf14bbe04da9024b2f88c0`

```dockerfile
```

-	Layers:
	-	`sha256:b44ec357b249f00e8fdfa8017215fe10b613bef4c24aa8c222cd45170e797826`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 1.0 MB (1048147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3f3724f450b9ccba57d2ae54003f7cb9c01f351721403f5e9fdf9f1a81212f4`  
		Last Modified: Wed, 09 Sep 2026 00:11:04 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:4c0c07141723c71dfcffb3e345f316587909de491480a62edbcf78fe2d122614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.0 MB (363952670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb3b7105c8a1f13d37476d857408a3a626983dd1c63d128eea2caf077e55181`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Wed, 09 Sep 2026 00:25:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:25:00 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 09 Sep 2026 00:25:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3f066117a8b32a37a9f5dc473f4676de31a2b7df6facba11d6b30fb703bdb`  
		Last Modified: Wed, 09 Sep 2026 00:28:08 GMT  
		Size: 66.4 MB (66394641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a75cf07c6ded8c5a945f54e9c2caec11f54d216d682c0008bb2adcf12c28831`  
		Last Modified: Wed, 09 Sep 2026 00:28:12 GMT  
		Size: 293.7 MB (293744629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:9bbf2ca21c902d5ec0dbb480653c55a2380fdd35eff9a460e38a1e2c7669ed77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a54f0686fd5d7536ddda69c0cd99299ca9bbae9546fa758bf5f144fe26f42924`

```dockerfile
```

-	Layers:
	-	`sha256:2507d3dcc7fd1f23080a8544cfb184d04ae1611c265cec4c635aff9c26567ca1`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a04a61bfc407bad99a5d70aee96cdc994a792381a65b685a8365f3c032d057`  
		Last Modified: Wed, 09 Sep 2026 00:28:04 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:bookworm`

```console
$ docker pull rust@sha256:9a73a5088750b4c95158ab26629c854c3d6fc4b173cb7bc8079ad252d8ed7bfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:bookworm` - linux; amd64

```console
$ docker pull rust@sha256:cdb2da72943ec036bf0c731ef5ac9e5fb2b1d17d3a9256a581bad64cf6fc093d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.4 MB (562439009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef460ef3675d3011ccfbd2bfd1c9239f04c044eee0cc0a3de6aecfd9f390bf26`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:38:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08457856946d74c8aede7d750e185d1e479a79b8123d1b805182a580d224a6e2`  
		Last Modified: Tue, 25 Aug 2026 00:51:17 GMT  
		Size: 24.1 MB (24056247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cab6ce149c24516f80b26a762b6b9aaebcaf4fbe51d4c6844af7d7dbc372f2d`  
		Last Modified: Tue, 25 Aug 2026 01:38:25 GMT  
		Size: 64.4 MB (64413065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a6a9ffe665b63ea18491fedb646423413ae3fdefcf7776ee25a2eaff8a673e`  
		Last Modified: Tue, 25 Aug 2026 02:17:34 GMT  
		Size: 211.7 MB (211662335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a9a21d5067abcf6df5c1099fbdd9852b78315b3004e47d487c24342c163c32`  
		Last Modified: Wed, 09 Sep 2026 00:09:57 GMT  
		Size: 213.8 MB (213810000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:7296b208667c941eda0fad1c6aad38e54b5fc9f82461c98b31e51dcd06891272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15885337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e33e1dd04cf31e7287e07cc6c2151395639c961509b899403c61b7ff193762`

```dockerfile
```

-	Layers:
	-	`sha256:17cfe5e0c98cb21915821e90fa9e8b64ae6959ce6fa1220f9081b30b88172b1f`  
		Last Modified: Wed, 09 Sep 2026 00:09:54 GMT  
		Size: 15.9 MB (15872241 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c877cabb33a7cb6d447bb7d9d63692055e35f46e9da39536e18bc813db4bb445`  
		Last Modified: Wed, 09 Sep 2026 00:09:53 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:016156fef27501052af6ec5346801f259d49ab90b8578db85192a6116c047eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.3 MB (559344527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a33a9304cc3ecffaf3d5aa5df1c0be23662c0cabe6c3e480f8c1422e340068`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:32:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:36:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 03:13:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:54 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:54 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f34a2bdae3eadbac864ccf45cb15b796471ec889c8ee7890ef006e1d1d2844ea`  
		Last Modified: Mon, 24 Aug 2026 23:20:15 GMT  
		Size: 44.2 MB (44203124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddce92283d0a5e3f72b169dd7bcd4e4fc63e74707cbf8d82ce1b207f53fd7bfa`  
		Last Modified: Tue, 25 Aug 2026 01:32:47 GMT  
		Size: 22.0 MB (21961670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ca08be0fd7d081e4e78483a7fa3f9237219740d03869baa583db09e6007a80`  
		Last Modified: Tue, 25 Aug 2026 02:36:28 GMT  
		Size: 59.7 MB (59663002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a5a707a569b0307f2e17db86af2421559f53f4647206901eae8593c6fe2fb2`  
		Last Modified: Tue, 25 Aug 2026 03:14:21 GMT  
		Size: 175.6 MB (175579748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c03d0324e79668e855e8e2af081ddf02dad16417b35d6d3632104affbd2c4a6`  
		Last Modified: Wed, 09 Sep 2026 00:09:40 GMT  
		Size: 257.9 MB (257936983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:1e5392aedd974e57ca9f4188d137f80bae1d5932991e2b8dc13d2144751437c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9effdf190480d001a1ab838cee2f1ee76f231bc0d891428d54873966a7a129`

```dockerfile
```

-	Layers:
	-	`sha256:9df2079345490313be2c13156afb3a7b7af82f9b4f733dbfefa2b6eb4f300b2c`  
		Last Modified: Wed, 09 Sep 2026 00:09:35 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1f83aa63df0839b3470f361ac97b6bc2dcbb858de3375d7b5059bdec1cd83cd`  
		Last Modified: Wed, 09 Sep 2026 00:09:34 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:09e98f39fa15751de9476fefafe4be0e4ef92b292d608410595bbbde9ebdd375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521745920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690e6fc7bbfdeff8f8d3cd808062a58c0afe5416ca5aaf8e32cb94ad1d995bc7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:52:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:08:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:08:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:08:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fea2228218a869ae6619766dc4aae2d5e251700ebac01541d63cafea4bc7fc7`  
		Last Modified: Tue, 25 Aug 2026 00:52:53 GMT  
		Size: 23.6 MB (23628261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742d423df6ec83a05afd11c678f055935985f615115c46681d670810438c3732`  
		Last Modified: Tue, 25 Aug 2026 01:43:21 GMT  
		Size: 64.5 MB (64500577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9873f9cf3f97d8317bea39be5130389ca496910902e4c4327c227d606b57511d`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 203.2 MB (203190462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8fe434ff680a26b9e7ef5bf768dce7b45822269aeb251afc29ec66eed39a75`  
		Last Modified: Wed, 09 Sep 2026 00:09:26 GMT  
		Size: 182.0 MB (182042971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:dd5acfc238c54a7b855d2f712c28161c705095d6eba18e2ef3ce6856ef4a06a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57b2ad6535da2074198a7b42c7cf1ee57c6ae149837971755b749cee754edc2`

```dockerfile
```

-	Layers:
	-	`sha256:75587e37482da126c0686ea069b30149182070bdcf764449463053b98df3b2c1`  
		Last Modified: Wed, 09 Sep 2026 00:09:23 GMT  
		Size: 15.9 MB (15900767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1262e0f831b0d8f957b02c836101ff1784094cffc55ab70aba3519c2b7ae839`  
		Last Modified: Wed, 09 Sep 2026 00:09:22 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; 386

```console
$ docker pull rust@sha256:52ee3001113f3a66874af4fed85fcbce2f8f2ef7347aa8a575074f2a81e35be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592078672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6476e7ae0b3be7ca3e22faf6a82dcec0f8b655cd396971f21a5703b5bfa54b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:50:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:41:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:17:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:09 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:87896a92d6ed96e4c8127d574fb44191e126b11d1a05b77306bc1034c455ec5d`  
		Last Modified: Mon, 24 Aug 2026 23:20:08 GMT  
		Size: 49.5 MB (49485396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e667f089dfad67bed8f75b85559d08d30af99795a5da5d45e73bef386a85ea20`  
		Last Modified: Tue, 25 Aug 2026 00:50:36 GMT  
		Size: 24.9 MB (24890438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900bdd75b1bff668db87c57193fc93484238fbbc250f83a36df417cadc73eb32`  
		Last Modified: Tue, 25 Aug 2026 01:42:05 GMT  
		Size: 66.3 MB (66252378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bccc271fd741e5cc3ed1753eed6a6dc384881a8e08fe9349c59d8e5d2980fe`  
		Last Modified: Tue, 25 Aug 2026 02:17:49 GMT  
		Size: 210.6 MB (210581947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecac752c8087d1d33d2eb3f5001ef0a7b449b1d3c833f03552bd2b542d394fc`  
		Last Modified: Wed, 09 Sep 2026 00:09:56 GMT  
		Size: 240.9 MB (240868513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:b47838deb148a881e2d8628d5b0e3d2b0f70101f80553c4249654e056e44c6b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15863523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6ba1df76f2209c9bb1e58241ba97ed38814ebace0a307725d56c4623292550`

```dockerfile
```

-	Layers:
	-	`sha256:b68ac8ff48190fb408334c5109c12eede90a2216aa73a08757ea32eb10bded1a`  
		Last Modified: Wed, 09 Sep 2026 00:09:52 GMT  
		Size: 15.9 MB (15850459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f48943ffe092c0166c70db452ac33d39f92722bc76bdc76d41150e4b977c6611`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:911ba86634f42f9d24d5a62159d5847e727e68d0463f987cb8dc350eb3f6f205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.2 MB (657191037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec2495489be0391d0a0dd5cafe132c523f749e35ccc9f241f33fa6e4194dda8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 03:35:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:47:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:36:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b5cb8c52004f6a91d118309e28cbaf33c7aeec9fae708d5fcc09c38fffccf0d`  
		Last Modified: Tue, 25 Aug 2026 03:36:10 GMT  
		Size: 25.7 MB (25706335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d593bbbc0b5465b54adbcb93bc425eace3b89a83d8cc7b8dcd0b9d1ae61a51e7`  
		Last Modified: Tue, 25 Aug 2026 09:48:06 GMT  
		Size: 69.9 MB (69853402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9546012095f5835af9399f34fb6731784e64c61cf8a22462e2f59024e39605e5`  
		Last Modified: Tue, 25 Aug 2026 12:38:18 GMT  
		Size: 214.7 MB (214736789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247cee998bf5fc42601c45e635320fbe2071475c1c303ab2888a2e341efc9c53`  
		Last Modified: Wed, 09 Sep 2026 00:12:09 GMT  
		Size: 294.6 MB (294552747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:20bdf992fb917849f8e3454add3aaa90003ae265eda88a7e7cee3bc0135373ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4e01e7a05347ac9d5a37e6da6d023d5064efe385dbd9338bfa692929033940`

```dockerfile
```

-	Layers:
	-	`sha256:6d742174c62aa38ee7f88da2c55d12da9e03a59a1ce1e80bf42f4647f8edabec`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e8ccaaf8adb4245ab97cdd73320f680e839427bb073298d01af8e73517aa7d1`  
		Last Modified: Wed, 09 Sep 2026 00:12:03 GMT  
		Size: 13.1 KB (13139 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:latest`

```console
$ docker pull rust@sha256:bf5a9aa29062a6cb03c49bd59a46eb55e3cc770caf598a221a7866e500be3082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:latest` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; s390x

```console
$ docker pull rust@sha256:8976c89ddd209120ba32ed2238038673e10ce67cbc4da797789e12606b776f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647250018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4bbc9fc3b3f616c72e26889bbd1edbbe5ecdd58812de5b1bddb589c1c9e7f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 05:25:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 05:25:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 05:25:20 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808857b26fbae6c0ec9368abea76e69ecd5dac93a6ab6a9746b807be9ae78831`  
		Last Modified: Tue, 25 Aug 2026 05:26:31 GMT  
		Size: 295.5 MB (295530618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:c02af3bff48a96f24a4a79faac1ba2a721bdaf43f372f3dbe448e2334409e9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502c8e951c994b6f1b9cc1bfb74e32c1de5dc2f0a371dcb50491890a6156b982`

```dockerfile
```

-	Layers:
	-	`sha256:c1b5dfa918e00bebf407423f6b4ff58e14a96679109c15a449914614439cbc1f`  
		Last Modified: Tue, 25 Aug 2026 05:26:26 GMT  
		Size: 17.0 MB (16983825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7dd7797a8059a7c0366cd6e67151fba30819bbdd5ed3ab9f4718c229a57fb37`  
		Last Modified: Tue, 25 Aug 2026 05:26:25 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim`

```console
$ docker pull rust@sha256:bce1476d4be4d78b83705bc5f428b86d640eeeea33e9dadafbc037b5703a53bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:slim` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; s390x

```console
$ docker pull rust@sha256:638c3bf6e5d394d591f8c7d3e60a602e0074f7b89ce29eefbf3edcaab814cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377770604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232e886ca3d118618bfd6a97ee4cfd19a913c9efc1fe8547473f653b976635fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:03:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 02:03:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 02:03:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750387b638b582311c60ba4fa6bd608762d8e411ca1966ce0c9a016e7756938b`  
		Last Modified: Tue, 25 Aug 2026 02:04:47 GMT  
		Size: 347.9 MB (347902885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:df3d96e28c47a2a848bfe885daa6cefec7b5fb36cabf35debaf7e1624664c0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3997499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7c2947377186675bc342a8629738ff34df397f84f8c06842944937417bd063`

```dockerfile
```

-	Layers:
	-	`sha256:a1ccf0b6e281f68ad5456f3d21f0e79af627d63704b775206ea14b97ba1c8e79`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 4.0 MB (3981866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bb151702c9684a91eed9c9c2fc2a055c224853180288b990915ffba4edcf7c8`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-bookworm`

```console
$ docker pull rust@sha256:ebd900bae66fd508b466cef82d64a83a5fb34682e4c8b2797a42908bddc95a57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `rust:slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:6ac25dcaa81e06721043f9a815b6000c87ba2f56bf7b82a3ad0e65ae71067e0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.8 MB (312820430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff09915dc81b6088d47b9428ce47034436cc77ce893afbdd186e9e73f6d11087`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e61d2df41b0c8246b0ecae10e62233657071fe9469319cbaeb5a62fd22aa5e`  
		Last Modified: Wed, 09 Sep 2026 00:10:07 GMT  
		Size: 284.6 MB (284587775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:3702731e0653e2c55792c427daaa1e2e302b124203c80c3ec85ab68a193267ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b038fe067ebd5eb5504a987b63fd42fc0d37d6be05a8a70c84d24402926fb7`

```dockerfile
```

-	Layers:
	-	`sha256:71c33c1ec425dc29e78d5d4d7a6c1dc9da7f96e4bea244ac36a725f357556307`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 4.1 MB (4099461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291587921a8caf0c42218e0a7007d4debe8ad3ec225c7eb9fd4cb1437785fee7`  
		Last Modified: Wed, 09 Sep 2026 00:10:02 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:50a6510e663c05e01720788845d709d73ed354f472212b81319110435ff74b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.7 MB (329722935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0364f78756b8b4cd00e23f1bfdc0442b864a7c57f8f8cae7d9b1385f51a0c83d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:414c8f92a825401b733fc77e1fbf39e5c458313b146cddd2eb604c5345c47a59`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 305.8 MB (305783091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:602f7de5f8cea653c778171b48dc340836a26f2ce523fa44ac18b54646bc387b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8397e23d65480011e848111b1e76178b21f212e7b0a090e40f0b3fa41cfd61e7`

```dockerfile
```

-	Layers:
	-	`sha256:49ff1caa08096ab253bbead350734d71c7d2af5b316e99673a710ab89a563503`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 3.9 MB (3913848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f554f39ce686838e2494f8600894f5b952f01e15db28fbc3276361d9ee8d472`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:aedeeec296c1880a094f5fedafd95c981a953fcec11e530d12e83ae44e29ae75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276048675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e687b7adb9547359d8ee51a8fe37d6ea569484b73deaed5582f5e53b740a725`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:15 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de33fdb188fb9e526b27d973f4269f7bb173229e9d32dfc9ae0f322f4a6d7e39`  
		Last Modified: Wed, 09 Sep 2026 00:09:51 GMT  
		Size: 247.9 MB (247931386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:0a59e0d130fb267a4ccbc5eb21b66337940925d5e343ae2392e968b7250aed12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fa72e92b08e86fb2f0f2adf547cbd25caf409ea80d6f6b34ed5f309351dc6e`

```dockerfile
```

-	Layers:
	-	`sha256:470f5556bcf63f1c7e52a3c0af3ae9822a5f25ec1909ae9b4a19b2a55b7d680d`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 4.1 MB (4121755 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed535be3ba8d4c23a3206fb6e0abbc813b8964d41ced5c49d2da386a994b83b5`  
		Last Modified: Wed, 09 Sep 2026 00:09:46 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:617433dd2f0cf24d26e47b33bc49fb1b1b831d632d3337dfb5c6490d6828d9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337715392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:615bcf95e2a298ac466aac8777a30b728b6fbf7cc8c2e7937086753d3ecd11a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71ecbbb0661d561d8c977d053ba750086b60779d1ebba2d34385c1a88a21874`  
		Last Modified: Wed, 09 Sep 2026 00:10:25 GMT  
		Size: 308.5 MB (308494340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:658e254c967ed89c22101f02d4a11dca1a7f9447a038b1bdc2ccf15021ddd58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb6fc6f1b2f760cd14a4ef5e6dbd2d66418ac51167cca2f66e410cd35c37b82`

```dockerfile
```

-	Layers:
	-	`sha256:8d64b1638078b9e2bbf0c58c86191ef1df4fcd43a8c39f2fd8192a97a99ec2b3`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 4.1 MB (4080147 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c647e2e88cfc1c89a00bf1e0c291ef673b7a7362728b8089f60ced300941642`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:f0a414a98dc2e8339b6fc66e2dd0fe7c4dadba6627bff98ad8c1385b15ea7e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395424860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2acafea7089207a9b29308448ff56f52876066436a6b89310112b7b17677645`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 00:14:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:48 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc76823127f96be2ccb714ea1fb06f9f0d8d3f3ca5450315dd917166c8c8630e`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 363.3 MB (363348383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:23c3151382b71cc3759c85df69d059c8f2eaa7da33c3875cc14153bf4f256b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fba437a4ea6a9088e74ba69769ec6225950ace2bc299f1660edfab269829bbf`

```dockerfile
```

-	Layers:
	-	`sha256:64580a6c7b53988b0b687fecaff67a922e20a6df801d595d30a5159f326487e9`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faedc50f4e3172e2bfe992f551bf47796463f6fc7c15e8d304740c7d5e41a97e`  
		Last Modified: Wed, 09 Sep 2026 00:17:18 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-trixie`

```console
$ docker pull rust@sha256:bce1476d4be4d78b83705bc5f428b86d640eeeea33e9dadafbc037b5703a53bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:slim-trixie` - linux; amd64

```console
$ docker pull rust@sha256:a2de23e559fd8afd260d22beb00f3987073ea0dcc2ba2646cccdaeda6a62a095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.0 MB (321993690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b886ad7431930ba887022c12b2184006163493875059c3d7422259369f1202bc`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756848bd054d2f76b89fe17f84697518334c0a91ff1178170b5dae97b5af7c5a`  
		Last Modified: Wed, 09 Sep 2026 00:11:13 GMT  
		Size: 292.2 MB (292201032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:e89945e30cb1430d4fe2d13a5333931b1f548ba8a661443cf840e8293ffc185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4179749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85adec64fe9b6cd27cb5660b6413b63d0d94dbdda33169403f6c70b6ddf8c9c`

```dockerfile
```

-	Layers:
	-	`sha256:59e4066ef718a14c1822823a5038a364a40b9128a5c5a9347b6a4e6112eb1c2e`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 4.2 MB (4164116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a69874110df18caf4143990d7dbda1b1812e4c7b115a46720ccf25550929af8`  
		Last Modified: Wed, 09 Sep 2026 00:11:05 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:146c00bb10a48e6384295bc15fc3cfd7d634411d6b0f8e758e550110da15b3a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336627722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0f4483ae8a0fe8206e27a84c8bea452a8fe5616fc4f13678640aa1c07079fe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1129624795a07aec2ff977e671d758ddeec5563ce51c7409b198316854b9967e`  
		Last Modified: Wed, 09 Sep 2026 00:10:48 GMT  
		Size: 310.4 MB (310408581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c679101e8e494d6acd9c5f9f8d106854dc036706a00b8606e0648ec84aa9429e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3984727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5c8106223b7548e1d62d0ea2acd7517d4c8ec0a1d4882afd0ece3457171766`

```dockerfile
```

-	Layers:
	-	`sha256:5df53834cf7f41061b2947904236de1ad48285a7baf4a689ba6c718c4c36e2d4`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 4.0 MB (3968982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ecc0d2a1e0a01d4fba0ebf33d55d583aa5c88211fbb788bf218a69001bd4318`  
		Last Modified: Wed, 09 Sep 2026 00:10:42 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:971ddc02ea935f18f5e1cdfc311f9b07306bda0fc83e2517c3fb51ea68cfa8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.2 MB (285188473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce62125955fec399273830493d6b90e5212e05f89f9e4c09f614ebb946fa1f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:09:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c532bd4a724e004c512ff843c71f8e2aecad718abaa5ed0f9d1aeca79e2ecdd2`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 255.0 MB (255028891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:879252da350f69c2f142b52404ac457871a270f72475d38be0997082f96053b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7646f5af58b0f512d0438acb0356b2537c8e2ce12b045c38f593a13e32612a`

```dockerfile
```

-	Layers:
	-	`sha256:6ab95655163f464d746fa94975b6f883c47703409c34ba5ba752094e7af1646a`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 4.3 MB (4255322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ece4345e78c70f5fc78a8f9cb36364989ea3d10d2c097efab9458b9549620d2`  
		Last Modified: Wed, 09 Sep 2026 00:10:13 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:8c412ab2323b08284a52012c1b4ca8ea4a9e244106316526294a24e451403756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347565888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e17ea2461567e0f461a1325a7ce6e7cd5ef7a72f3e3d61eac6af6d8b647817c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:10:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add9e74659f4ccb5b73a0354b2622ee1649f10401497ecba3b33fd228fcedb5b`  
		Last Modified: Wed, 09 Sep 2026 00:10:47 GMT  
		Size: 316.3 MB (316262491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:31c12415d2f0ea18cc46b7e867969de2b49070a74e34c96afaaa06a043907d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc70ac0aee606008b22ccb63c8b6ba7aebc0a6928cbce5c71d7e78a3f1ebd4d0`

```dockerfile
```

-	Layers:
	-	`sha256:28ab59162c6b5dee86eb8f08b7ff5775c4daed0563f28557ada5dcc2e04b9c1e`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 4.1 MB (4138932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b54318cbc0ff7f89fd81b647b1530efd2678132ef4202e601e7a72dfb72742a`  
		Last Modified: Wed, 09 Sep 2026 00:10:41 GMT  
		Size: 15.6 KB (15580 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:92ee7e377ebe9c81f71cc1f6f495ef187d65618c3a1b082629e0933c2d9c38cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398260753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53a0c2bdd289459e2ba592e380c1f4735a6b6542ac92d1110b922ac218502c15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:14:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:14:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:14:53 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96cf292e69e216b8e0c4dfcd2124fa65de7a1fa83c909681f6e590540703d2f`  
		Last Modified: Wed, 09 Sep 2026 00:17:26 GMT  
		Size: 364.6 MB (364645292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:aea72199d7b9c821bde724cef648743191e160b80e425248cbd4aa8274c0804c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4176268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431c4afd7a176f6d77f4bb907c890dbd1a96a1c5606a5ce636ec73a11b4ad238`

```dockerfile
```

-	Layers:
	-	`sha256:3a46300708e63345484e77f8dbd7989c73ec8fa2b56145b837b5c7286e20d1ba`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 4.2 MB (4160567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e688eb2c546fa796755e3b177ccb3a697430034ee6f0b8bf962bc4cde35c78ab`  
		Last Modified: Wed, 09 Sep 2026 00:17:19 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:1bb8b84c79aa36b3589f520b8a57c06b45609acb52417ac08716a1a43ee4421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.8 MB (393753342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ae515dcfcf00ea08898754eab464c4b43a27ddf5167f36fa815e000064b97d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 00:26:51 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:26:51 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:26:51 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aefd9eb4b5acfeeb87a88a4cbf775776ea5ed8560af3ed2659820a5f693c9006`  
		Last Modified: Wed, 09 Sep 2026 00:37:47 GMT  
		Size: 365.5 MB (365456879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b648b2ea7e91193cad5f6ecc361e0c10371ac97c827fcafce8f7df537430ac78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4254228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd20e5d72f19aadb9670f8b94f3901d4c39adef85b7aaaf53b7a83cbd421af0`

```dockerfile
```

-	Layers:
	-	`sha256:f7939284950fd6561a917e2c37630ca164637886c9d721a7d0b5f30e172cff31`  
		Last Modified: Wed, 09 Sep 2026 00:36:56 GMT  
		Size: 4.2 MB (4238527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f36bbba906961694220e39062c48271e415e4c3a4165035c8793757b076ab3`  
		Last Modified: Wed, 09 Sep 2026 00:36:55 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:638c3bf6e5d394d591f8c7d3e60a602e0074f7b89ce29eefbf3edcaab814cd06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377770604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232e886ca3d118618bfd6a97ee4cfd19a913c9efc1fe8547473f653b976635fd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:03:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 02:03:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 02:03:44 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750387b638b582311c60ba4fa6bd608762d8e411ca1966ce0c9a016e7756938b`  
		Last Modified: Tue, 25 Aug 2026 02:04:47 GMT  
		Size: 347.9 MB (347902885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:df3d96e28c47a2a848bfe885daa6cefec7b5fb36cabf35debaf7e1624664c0cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3997499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7c2947377186675bc342a8629738ff34df397f84f8c06842944937417bd063`

```dockerfile
```

-	Layers:
	-	`sha256:a1ccf0b6e281f68ad5456f3d21f0e79af627d63704b775206ea14b97ba1c8e79`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 4.0 MB (3981866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bb151702c9684a91eed9c9c2fc2a055c224853180288b990915ffba4edcf7c8`  
		Last Modified: Tue, 25 Aug 2026 02:04:41 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:trixie`

```console
$ docker pull rust@sha256:bf5a9aa29062a6cb03c49bd59a46eb55e3cc770caf598a221a7866e500be3082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `rust:trixie` - linux; amd64

```console
$ docker pull rust@sha256:af753e6e729c839de28010e323abc550eceaa9572bdaa765429d4f585e2e43dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.9 MB (592925923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368f61cc00d0a9e74136edda066899db7c109d1d54ff4742eb7897e077e91496`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:38:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:19:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f78834a2fef03250be89a7741ff39d0e6bbd860298ea129a84ce5eadda1f6d`  
		Last Modified: Tue, 25 Aug 2026 00:51:08 GMT  
		Size: 25.6 MB (25639590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc19164244e861d91ebd80a17e2c78c5be43a8059a32ab6fc459a92002b22f2`  
		Last Modified: Tue, 25 Aug 2026 01:38:48 GMT  
		Size: 67.8 MB (67800074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fed46b68cf907ddf6afb6bc4211842f016a0876b02fc27912582de4c2fed3b`  
		Last Modified: Tue, 25 Aug 2026 02:19:48 GMT  
		Size: 236.3 MB (236338551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15aea166af4c06ac701265b64f50d4a32d7cc86d86fe8c94a54aa6783c31833b`  
		Last Modified: Wed, 09 Sep 2026 00:10:32 GMT  
		Size: 213.8 MB (213809880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:bfc88c5c1d0f7c12985b26d2ece6f5518d1a18ab6f1bc78d99e6d70711f2345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7150ac6ba13a0a70df20c9108d1f2b3d7ca42e0a5308afd59e60337b4e0e7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2225c65ff2e6841900b43326a7f43e9bf405bd9e7289f1d1de4219d3c824d4df`  
		Last Modified: Wed, 09 Sep 2026 00:10:28 GMT  
		Size: 17.2 MB (17206592 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23bc6dcfb24c8eea107643ad6b871b714002b74c5361d17d681778f73d6dd559`  
		Last Modified: Wed, 09 Sep 2026 00:10:27 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:6eb75893c667b70ce1c16c5330578088c3211494e391e07cf54be78c2b19c7ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.7 MB (583709435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c7b7430be54d68e82c8bf7788041f3da770778f38133a1a150bd88de589f8e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:33:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:36:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:15:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cdac0eac0749288813a078c4279ee1e58b9f6a38246ae0d43ef25f305013e0fc`  
		Last Modified: Mon, 24 Aug 2026 23:20:50 GMT  
		Size: 45.8 MB (45764051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae11486f16a4a24e28283020d5361fb5a7863e1f116ef0dd9df4c0c234a82e9`  
		Last Modified: Tue, 25 Aug 2026 01:33:16 GMT  
		Size: 23.6 MB (23637061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990008fd0376eedb7a7400308f614aa553c4160bfe5804a99217456a931b9b98`  
		Last Modified: Tue, 25 Aug 2026 02:37:11 GMT  
		Size: 62.7 MB (62745385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1728466a7e6bf4d4d069bf3a43c9542cda7f5ade8e960e3e732c42c1198844ab`  
		Last Modified: Tue, 25 Aug 2026 03:16:19 GMT  
		Size: 193.6 MB (193625957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c42ee357b3769de564ffb49bdc55a7765f4effee41a514bc52021299d82349f`  
		Last Modified: Wed, 09 Sep 2026 00:10:43 GMT  
		Size: 257.9 MB (257936981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:87400f89d34697cc0097f965cfe2dd9735040d9070956d8a67c20c3932562d8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4c5ccf4e59166dcfa2a10a39ef0805859bd6c13ee760bd68cf76aacb576d07`

```dockerfile
```

-	Layers:
	-	`sha256:159b727bec5ae369dfcad4d50564f6bcae5e466e6eb1a7fe7464fc5d16b780cc`  
		Last Modified: Wed, 09 Sep 2026 00:10:39 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd204f9dcfa78166a5bdcf106674c0adbeefb40b2a9b9b19f630d64a55e160ae`  
		Last Modified: Wed, 09 Sep 2026 00:10:38 GMT  
		Size: 15.5 KB (15506 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:f4afe6d7edbfd62fbb0d090ba65ca5202c5bfa97ed650f5dfba1500dc1ec035c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.9 MB (550852736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904a2b6e4f4bd36c333b9bbf2b490d60d51fc48d9f857887107ea7d1fca82c5b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:53:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:43:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:21:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:41 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:41 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:41 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa3c72c6402ef534e043b1dca6fc0ab99e044c333c7679d2508eac3817a8570`  
		Last Modified: Tue, 25 Aug 2026 00:53:19 GMT  
		Size: 25.0 MB (25027916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fd700369b465b3f57ff668eea94fc0b0e67029df25a71600d2c522a452406d`  
		Last Modified: Tue, 25 Aug 2026 01:43:41 GMT  
		Size: 67.6 MB (67604531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa764f06969872033af6eed9ac02aa9c93e7ab8553fce36b92dc116408dd79ec`  
		Last Modified: Tue, 25 Aug 2026 02:21:56 GMT  
		Size: 226.5 MB (226472467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f60601b5ef41f628c943d47dfdffede6b85388807313e402f1d9cf798d0215b`  
		Last Modified: Wed, 09 Sep 2026 00:10:22 GMT  
		Size: 182.0 MB (182042969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:8b6d1a86d14445b61ee0554ae8947018f1b9999f9a1bb9c12f622c7f35dac11d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12ea4e2d8a1782648e6bb42af3572992a7b4352b9ac944668fde13851e39aea`

```dockerfile
```

-	Layers:
	-	`sha256:76f08bae54bef062be2f9d2a08ab91484c1bc62ac695b879fe352564feb8e9da`  
		Last Modified: Wed, 09 Sep 2026 00:10:19 GMT  
		Size: 17.3 MB (17290309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac711f16a63c59a8551346f2405f1bebe4e96900b545e2ad69a166d13dd8e06`  
		Last Modified: Wed, 09 Sep 2026 00:10:18 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; 386

```console
$ docker pull rust@sha256:a080e6c0a9eadcf1f7e9d60f4fe6f4b4b4f028dd2f772e68eb7a3ea7670c9bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.8 MB (628815834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeef8dcfef7ba81da298fbd0c0c328c88792917d7a9f533a3692bcd74495b62`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:50:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:42:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:17:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:10:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:10:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:10:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b893e4e8ae50bbe3f6f662d089d78bdcec599d1f4f6ffcc53ea4c77eba1418a5`  
		Last Modified: Mon, 24 Aug 2026 23:21:29 GMT  
		Size: 50.8 MB (50849582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3d6a9e0e8ddbd4b412b0ad592c01d91f7767a3f5d47a973f905c2abd8535165`  
		Last Modified: Tue, 25 Aug 2026 00:51:07 GMT  
		Size: 26.8 MB (26801487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f786c5c6711279dd7e937949c535eb18515f9760e66ef3ebd7e8bff5946d35`  
		Last Modified: Tue, 25 Aug 2026 01:42:46 GMT  
		Size: 69.8 MB (69837054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4860aa9c02b0b9d945911e3308bb8eb2b759306cd0b3ff1a16a17041539ab1`  
		Last Modified: Tue, 25 Aug 2026 02:17:58 GMT  
		Size: 240.5 MB (240459233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af78e14957f12e11ca785eeac456a98bb1660adb6c5d9c3fe04ad09bf09939e2`  
		Last Modified: Wed, 09 Sep 2026 00:10:50 GMT  
		Size: 240.9 MB (240868478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:d766605ec6bafccd2fe5af660f2652ea8e55a0ba5373506821b6204262fc2eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17191514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59a2e10d5154a56eaffd7e6bc1dc21e6a26d3f1a1555ac7b8e2985ee8a6fb83`

```dockerfile
```

-	Layers:
	-	`sha256:71c18cb90aa1bf49c24b8aba94182f43437d2420bb04d611b711fc61cbbeafca`  
		Last Modified: Wed, 09 Sep 2026 00:10:46 GMT  
		Size: 17.2 MB (17176170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81459f9c6e1c958812f86eff80d3bda086ea623d1cd5154de08f59ac6b9d2f45`  
		Last Modified: Wed, 09 Sep 2026 00:10:45 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:32312c0260cca2429e33a4b14562f0f26ea38bf01a17599f65dae0e2e01278c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.3 MB (679296403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6522db672559dac98027987fedccb8b069c1f379855bbac60528fce9592d36df`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 03:37:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:49:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:41:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1442b53cb90baed6c48b291e1a0a38334a0f6d974b82a480e299611a8fb76e6e`  
		Last Modified: Tue, 25 Aug 2026 03:38:18 GMT  
		Size: 27.0 MB (27022202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689900c76da5590e58792b7505c0dbe058be0e1d5c657629bbb7e6fc3cdf33e3`  
		Last Modified: Tue, 25 Aug 2026 09:50:52 GMT  
		Size: 73.1 MB (73076336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfffa691c5e437f0411bd968f8f505d3dcff76645c555ae217270824c1bc408`  
		Last Modified: Tue, 25 Aug 2026 12:42:46 GMT  
		Size: 231.5 MB (231480777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c93b054d7f6d6b74d52adb74c6b4f36751fcd72b06e5d180a6106be00841f73`  
		Last Modified: Wed, 09 Sep 2026 00:12:11 GMT  
		Size: 294.6 MB (294552805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ab43474c128115c0c09cdf7755cd52baff5d00c06fffcc80992b0e7f9aa1f65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d32b80bb690e48ed5fe6c35a750045f6692d85a42ad29b4095615cf877ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:58fcafc83c6e998a3f5a01bd91740f65b73a6146b91664c67f1d226ccbbc6257`  
		Last Modified: Wed, 09 Sep 2026 00:12:06 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efbeeb0c375492ace441bd2b25d491bf6746c21d044121794067bb850a75585d`  
		Last Modified: Wed, 09 Sep 2026 00:12:05 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; riscv64

```console
$ docker pull rust@sha256:22e79827694c1e76d31fac450fcf07cce8be4588be677eebfb1905974b655d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **735.0 MB (735024020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5bf10449ce0a7f2bb3954887c5bc4b5c6575e998c97fb35da2632fe04ef36a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 00:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 04:51:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sun, 30 Aug 2026 13:32:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 09 Sep 2026 00:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 09 Sep 2026 00:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Wed, 09 Sep 2026 00:09:04 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acb3599234922b1535fad7591ba58ef476824d3d5c601ad25d9d566dd92a573a`  
		Last Modified: Mon, 24 Aug 2026 23:36:32 GMT  
		Size: 47.8 MB (47830880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b00426f7e0166f533550f928ed9a27165dd3e03cde499c3bb141c9a58e343c8`  
		Last Modified: Thu, 27 Aug 2026 00:25:30 GMT  
		Size: 28.1 MB (28149730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5c877eebe30544548ad1f38b12e3615f826fa71f90844cbdce21d0843f1b1b`  
		Last Modified: Sat, 29 Aug 2026 04:54:43 GMT  
		Size: 66.7 MB (66698099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f0e4f4847aca696948816bf39be8a482706afef9adf8f12ea510ffeef66a1a`  
		Last Modified: Sun, 30 Aug 2026 13:48:32 GMT  
		Size: 323.4 MB (323376726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ebb2abeb3ce1027d2d753c919d5595a306b8bc0eddeb8817e9638a93dc516b`  
		Last Modified: Wed, 09 Sep 2026 00:23:36 GMT  
		Size: 269.0 MB (268968585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7af8d5e6eb74c45156f95090ab0f10b1e0568aefde8f52cdb899bebbbcdc2bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c375b5907324be93c79352e051f243ad116d62cc47021833417a072ee578cc`

```dockerfile
```

-	Layers:
	-	`sha256:70ca06984e22f1a3830deeb39eabc5e96b1fd9ecceca350ec5ae14b109baf82a`  
		Last Modified: Wed, 09 Sep 2026 00:22:59 GMT  
		Size: 17.3 MB (17262740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762f8a9d165ee58e2e5ade2922bb2ae1050f6dc9f180071743531807afafbe67`  
		Last Modified: Wed, 09 Sep 2026 00:22:55 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; s390x

```console
$ docker pull rust@sha256:8976c89ddd209120ba32ed2238038673e10ce67cbc4da797789e12606b776f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647250018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec4bbc9fc3b3f616c72e26889bbd1edbbe5ecdd58812de5b1bddb589c1c9e7f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:52:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 03:13:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 05:25:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 25 Aug 2026 05:25:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.0
# Tue, 25 Aug 2026 05:25:20 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcc139358c0f126bea1e88fe19d9b62a4fedcd110ee450f995e2961ed24b16d`  
		Last Modified: Tue, 25 Aug 2026 01:25:12 GMT  
		Size: 26.8 MB (26805114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1398c9084f07ed882b54eeab4eff13a12a949c611fe5ec44e503d987b450f`  
		Last Modified: Tue, 25 Aug 2026 02:52:35 GMT  
		Size: 68.7 MB (68651115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f02eb650e6d3a1b20cda6143a62d3d2b8950fa5ee12c27f84b77ce7982741`  
		Last Modified: Tue, 25 Aug 2026 03:14:00 GMT  
		Size: 206.9 MB (206856474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808857b26fbae6c0ec9368abea76e69ecd5dac93a6ab6a9746b807be9ae78831`  
		Last Modified: Tue, 25 Aug 2026 05:26:31 GMT  
		Size: 295.5 MB (295530618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c02af3bff48a96f24a4a79faac1ba2a721bdaf43f372f3dbe448e2334409e9fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:502c8e951c994b6f1b9cc1bfb74e32c1de5dc2f0a371dcb50491890a6156b982`

```dockerfile
```

-	Layers:
	-	`sha256:c1b5dfa918e00bebf407423f6b4ff58e14a96679109c15a449914614439cbc1f`  
		Last Modified: Tue, 25 Aug 2026 05:26:26 GMT  
		Size: 17.0 MB (16983825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7dd7797a8059a7c0366cd6e67151fba30819bbdd5ed3ab9f4718c229a57fb37`  
		Last Modified: Tue, 25 Aug 2026 05:26:25 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json
