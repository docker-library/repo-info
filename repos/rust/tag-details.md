<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rust`

-	[`rust:1`](#rust1)
-	[`rust:1-alpine`](#rust1-alpine)
-	[`rust:1-alpine3.21`](#rust1-alpine321)
-	[`rust:1-alpine3.22`](#rust1-alpine322)
-	[`rust:1-alpine3.23`](#rust1-alpine323)
-	[`rust:1-alpine3.24`](#rust1-alpine324)
-	[`rust:1-bookworm`](#rust1-bookworm)
-	[`rust:1-bullseye`](#rust1-bullseye)
-	[`rust:1-slim`](#rust1-slim)
-	[`rust:1-slim-bookworm`](#rust1-slim-bookworm)
-	[`rust:1-slim-bullseye`](#rust1-slim-bullseye)
-	[`rust:1-slim-trixie`](#rust1-slim-trixie)
-	[`rust:1-trixie`](#rust1-trixie)
-	[`rust:1.97`](#rust197)
-	[`rust:1.97-alpine`](#rust197-alpine)
-	[`rust:1.97-alpine3.21`](#rust197-alpine321)
-	[`rust:1.97-alpine3.22`](#rust197-alpine322)
-	[`rust:1.97-alpine3.23`](#rust197-alpine323)
-	[`rust:1.97-alpine3.24`](#rust197-alpine324)
-	[`rust:1.97-bookworm`](#rust197-bookworm)
-	[`rust:1.97-bullseye`](#rust197-bullseye)
-	[`rust:1.97-slim`](#rust197-slim)
-	[`rust:1.97-slim-bookworm`](#rust197-slim-bookworm)
-	[`rust:1.97-slim-bullseye`](#rust197-slim-bullseye)
-	[`rust:1.97-slim-trixie`](#rust197-slim-trixie)
-	[`rust:1.97-trixie`](#rust197-trixie)
-	[`rust:1.97.0`](#rust1970)
-	[`rust:1.97.0-alpine`](#rust1970-alpine)
-	[`rust:1.97.0-alpine3.21`](#rust1970-alpine321)
-	[`rust:1.97.0-alpine3.22`](#rust1970-alpine322)
-	[`rust:1.97.0-alpine3.23`](#rust1970-alpine323)
-	[`rust:1.97.0-alpine3.24`](#rust1970-alpine324)
-	[`rust:1.97.0-bookworm`](#rust1970-bookworm)
-	[`rust:1.97.0-bullseye`](#rust1970-bullseye)
-	[`rust:1.97.0-slim`](#rust1970-slim)
-	[`rust:1.97.0-slim-bookworm`](#rust1970-slim-bookworm)
-	[`rust:1.97.0-slim-bullseye`](#rust1970-slim-bullseye)
-	[`rust:1.97.0-slim-trixie`](#rust1970-slim-trixie)
-	[`rust:1.97.0-trixie`](#rust1970-trixie)
-	[`rust:alpine`](#rustalpine)
-	[`rust:alpine3.21`](#rustalpine321)
-	[`rust:alpine3.22`](#rustalpine322)
-	[`rust:alpine3.23`](#rustalpine323)
-	[`rust:alpine3.24`](#rustalpine324)
-	[`rust:bookworm`](#rustbookworm)
-	[`rust:bullseye`](#rustbullseye)
-	[`rust:latest`](#rustlatest)
-	[`rust:slim`](#rustslim)
-	[`rust:slim-bookworm`](#rustslim-bookworm)
-	[`rust:slim-bullseye`](#rustslim-bullseye)
-	[`rust:slim-trixie`](#rustslim-trixie)
-	[`rust:trixie`](#rusttrixie)

## `rust:1`

```console
$ docker pull rust@sha256:1f0dbad1df66647807e6952d1db85d0b2bda7606cb2139d82517e4f009967376
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
$ docker pull rust@sha256:897292968f3e2c7aaba68bf8e6239b61994a8adbdd09e49bd866b69822b98af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.2 MB (594233199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b053325bdcbf2850bdc9b030b14b7fb90a06b55c1f5d2c68472a26c03b7431`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:42:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0252e6abaf0ff12562710faa97dc617e372a424bf144947f39dcb38700423e9f`  
		Last Modified: Wed, 24 Jun 2026 03:18:31 GMT  
		Size: 236.2 MB (236248824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc49ee9b89969feddc8aa9c2cf6d31259a1f342cfd1fcc6994549e54aa9f1be`  
		Last Modified: Tue, 30 Jun 2026 23:43:14 GMT  
		Size: 215.3 MB (215254048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:93e7c2a35a703cdde12cfcdf761f31c6bd589ef852e8740b63b19c2d84a44090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45bb6a3be29e7025e643971924fa6c505008921670eef1c0bf86eb1721d994b`

```dockerfile
```

-	Layers:
	-	`sha256:429cc57424c27f25065c931373e8700b840f0e0e1c9f32326d495aca7411d391`  
		Last Modified: Tue, 30 Jun 2026 23:43:09 GMT  
		Size: 17.2 MB (17206481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14745203cfed0c7b0fbbe25c2828940b02e489e1e9d429fb5fe731de13ae289c`  
		Last Modified: Tue, 30 Jun 2026 23:43:08 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm variant v7

```console
$ docker pull rust@sha256:bdc1b5fcb37c10310a5844d5c6f3c9df256d647bd5c1b6027bbe36e821125d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.5 MB (583476715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b280c7920655c34cd4334e8e02c7c5651679277bf85ae8a9fa817d744213a1d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:25:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:55:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6ec13525e08787ad79558c5631e8f1a1fa24a87872974d31cec094e902b73822`  
		Last Modified: Wed, 24 Jun 2026 00:28:39 GMT  
		Size: 45.7 MB (45748717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5391dda58327007b323e3f3d892147e59e5e36215f08b370a235cf10aaf0a`  
		Last Modified: Wed, 24 Jun 2026 02:25:20 GMT  
		Size: 23.6 MB (23635872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0beb5aedec8fb711aa9d2285593f5263bc56957c577c835eda5256d1d6cc6`  
		Last Modified: Wed, 24 Jun 2026 03:55:30 GMT  
		Size: 62.7 MB (62746374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81014ff6d39652608f3ee3bca486e5b5f5c50c1757e0aafe38294d09eda10abd`  
		Last Modified: Wed, 24 Jun 2026 04:18:44 GMT  
		Size: 193.5 MB (193514005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba69b34e04b8afa5eafb637ed0ccef1c4122086be3ab9b43143a87978ca13c6`  
		Last Modified: Tue, 30 Jun 2026 23:36:23 GMT  
		Size: 257.8 MB (257831747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:5f97424319e880128282d509507174ec9aed3c7c5e56da6f316ac16d55ca07a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768784e85d2f0742810e3987af89da11119303591e256b4a3d93b1aaae1d408f`

```dockerfile
```

-	Layers:
	-	`sha256:1eeb0033dc66811baed0ea0dded58909e0729074c77ce798910b035533c6edb1`  
		Last Modified: Tue, 30 Jun 2026 23:36:19 GMT  
		Size: 17.0 MB (16974519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:330ea69940dd7c904be9431f97b4f304f1b23628601e0b27a0c5034277f3dac2`  
		Last Modified: Tue, 30 Jun 2026 23:36:18 GMT  
		Size: 15.5 KB (15508 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a5f124a141e54e2527df4defa1631f8f878b48f7e818b203c30e27a50c513a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.9 MB (548867888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14955d2873d61e78c7e98d7c4dad1d10d1fc92cde2ba40df106a94c183e66be6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:40:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646ad84cb24eb29e047f2b410af92e39c7ab4bd62a2d2ab0a6ff6a0ef84ba33`  
		Last Modified: Wed, 24 Jun 2026 03:18:10 GMT  
		Size: 226.4 MB (226363204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d279118456a88ddeef77741a5a0296f92edd6f73c67dfa2ab638f0a217ab2003`  
		Last Modified: Tue, 30 Jun 2026 23:41:17 GMT  
		Size: 180.2 MB (180206781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:cdb10a2fe7b464561722a115633ab21b356a4f9c0d7ada17389a81155dfff793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06aea1c7cdf21f5d389553e4070d649da72a7801746536c208286298d2344520`

```dockerfile
```

-	Layers:
	-	`sha256:4189cea91b89dbf3bbec6779e85885c3e88a93ee268bf0793e9a4f04824ec3d3`  
		Last Modified: Tue, 30 Jun 2026 23:41:13 GMT  
		Size: 17.3 MB (17290200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24d3dbfeee36b815c6e994e25cb10dedea82235cc57afa7040091698a7dce86b`  
		Last Modified: Tue, 30 Jun 2026 23:41:12 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; 386

```console
$ docker pull rust@sha256:4c00964120be4fd18d36a85fce82872329a7fe48e2cc14d5ee8556bc4e3cce56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.3 MB (629274575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38af10dfb6adce189ec7aa6871310f765f2bf6feea7d35fd2c9458e4d953de0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:27 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429f3d50e84943497f0eadc90e14107210f6f5e2fba29257d54a1c7858400bdf`  
		Last Modified: Wed, 24 Jun 2026 01:44:16 GMT  
		Size: 26.8 MB (26797404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296cd1d205c61c3d8ebf0c638f588eaec576bb036a91f5b50f8b6183fc3010e8`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 69.8 MB (69817498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6e82ba1179651cb39d5405dee0f1cffd2cdb6f76d07dbb5eec6979464f01c0`  
		Last Modified: Wed, 24 Jun 2026 03:18:40 GMT  
		Size: 240.4 MB (240351717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108a325eb114922c90f4c1b92395c087293745faa6c9873a6bae91eb6c3a9e46`  
		Last Modified: Tue, 30 Jun 2026 23:36:15 GMT  
		Size: 241.5 MB (241472301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:481a426fdcf86a10a731985d2f5940fc44fb0dce68ace91ebc098a440fb6821a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17190096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9865dba149b45ffe7f7ddce8e00377e054ad2e840d8919cd64181460db63079c`

```dockerfile
```

-	Layers:
	-	`sha256:a225faa709ce59802b598e9dffe9ef52c01c88a57e600070f5285a68a57ed6fc`  
		Last Modified: Tue, 30 Jun 2026 23:36:10 GMT  
		Size: 17.2 MB (17174752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7e5d2427931f5e7569c88bde283e9648195ff83666f32873ccf006f14d4f49`  
		Last Modified: Tue, 30 Jun 2026 23:36:09 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; ppc64le

```console
$ docker pull rust@sha256:6c3e213557fed69cdbb085460f4211b643acd308e058758290dda567f7175b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.9 MB (678902914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307061aa6d25e90cce41adec5f008fc9d1d9f70b345d9fbb65a2271d49ad2ac3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:42:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:44:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:44:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:44:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6b290a040690185dcb63185c594c9a890b9bb513b83a709420a3abd8f7b678`  
		Last Modified: Wed, 24 Jun 2026 11:43:40 GMT  
		Size: 231.4 MB (231374483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f7cb5946d46a47c677d5ef2e71a7d0225512495d812461e965db46840d1b8a`  
		Last Modified: Tue, 30 Jun 2026 23:46:19 GMT  
		Size: 294.3 MB (294325603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:29491e61f8b3d0f0968d37c5ce14003d9fe42ca9ac99a371ecb238d7fa010b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5604ac607c046c5a8620893809ab50695e79be2942277f2ca09ee90f8192552`

```dockerfile
```

-	Layers:
	-	`sha256:09d77f335786e4b6bc8bee679ece598720dc42ddc7d4104076dc62b7c40183b4`  
		Last Modified: Tue, 30 Jun 2026 23:46:13 GMT  
		Size: 17.2 MB (17192058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3633ac6fd0d6bbdec3715466f90812addb20a01dcad2cc7ef77c47a782d06f3`  
		Last Modified: Tue, 30 Jun 2026 23:46:12 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; riscv64

```console
$ docker pull rust@sha256:00755eb6a8fcc675a1d1707d2dcf3cb1de988b29899bdce7e677d56847969acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **731.1 MB (731105672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bad2bd6682650eda11ed05cb11247103a13f11697fb7a10d6155653cc8fa07`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 16:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:50:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:50:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:50:45 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8297be2994f3c17113807c9b0aaadf1cd94ee74872bd4fcbcef79f2a21f4fd9`  
		Last Modified: Mon, 29 Jun 2026 16:36:45 GMT  
		Size: 323.2 MB (323188888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88db8447ee10671d01ca0e91e4d0248ed08d5e32118112ad7e0581c3e866f6e`  
		Last Modified: Wed, 01 Jul 2026 00:05:18 GMT  
		Size: 268.5 MB (268471925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:0c152575f35afd594fa5f34a05be40f53bc303f0af889445a1c46211db6fad93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46381de298b5d040f14b43476db1450d3fe0b8fd37dda86db24b12da27d91340`

```dockerfile
```

-	Layers:
	-	`sha256:8fa68cbcfab7685cc4b7a26cf35358b275a4a40a939f0ef0e703ba1cbdff76ca`  
		Last Modified: Wed, 01 Jul 2026 00:04:39 GMT  
		Size: 17.3 MB (17262697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e549ea23def2680a385deff187093063d823d2a48b019088023f93c7df32a58e`  
		Last Modified: Wed, 01 Jul 2026 00:04:34 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; s390x

```console
$ docker pull rust@sha256:e2d9723122d97ab5d15a6613bbfb56bc83f9ef167f5ad2f5cba181b040f8f28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.9 MB (646880478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8fbfa176b7e92c5832a65f1bd2515f764a5cf5631d7ed0880b9e42b58a4dae`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 05:17:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:32:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26ad8b668881e5b88baa7f13010c93f1bce4021cd7e873db608fc3d64c83f78`  
		Last Modified: Wed, 24 Jun 2026 02:46:45 GMT  
		Size: 26.8 MB (26803945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467c361ab8894fdba8935a4c045eb8f691562f8d8866636ae12b0e066b40329`  
		Last Modified: Wed, 24 Jun 2026 04:30:46 GMT  
		Size: 68.6 MB (68645672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fffb153b40577970ef862743ac9f3be7998a409d21a818e83c91335b8440e1`  
		Last Modified: Wed, 24 Jun 2026 05:18:51 GMT  
		Size: 206.7 MB (206745343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7b3b363f51dd5e41ffcde36003e19b3096b7f451e47d84ed9fbb739b7ae58d`  
		Last Modified: Tue, 30 Jun 2026 23:34:14 GMT  
		Size: 295.3 MB (295299458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:3f71bee2acfbea705d9fcef71116d85cc77f45c29c61803d78afe622859f424b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1e450b2708a0a5652eb081049f8a497b4d83bfae45f859837ee97e6b47a23c`

```dockerfile
```

-	Layers:
	-	`sha256:a304c9389109840d9bd3d23640633c932ee992b35dac297e6d0306cfabb23881`  
		Last Modified: Tue, 30 Jun 2026 23:34:08 GMT  
		Size: 17.0 MB (16983712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30d1b82dbc0c71a0a08bd671b650ecd631c7b8d6a465660f31b440e671e1ccee`  
		Last Modified: Tue, 30 Jun 2026 23:34:07 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine`

```console
$ docker pull rust@sha256:a41f7740f8b45d45795624eec13a8b42263cc700f19f7e4e86e04d3dda08a479
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
$ docker pull rust@sha256:f5c84c3751de59f0f318acfbed8b2d04693a12d9171f15835d9c11c9ddcf52db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349455443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be1484b093e4b27fa7de92c29073126617f6a72d428586fe4b782a6e21dccdd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:40 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b9a4131e96b01688c4e6fd3400fd8ec85f23f1cb606d1b92364345a6b96764`  
		Last Modified: Tue, 30 Jun 2026 23:44:34 GMT  
		Size: 75.1 MB (75079295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43c54cb9b8ea310a3730234455f912038e9194b4bce20da9e9f9448e2d9eb42`  
		Last Modified: Tue, 30 Jun 2026 23:44:38 GMT  
		Size: 270.5 MB (270529757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:3dd723e42e6af08c5dcfb40433f2a58f4411c15bb7cb79ded382be29a38b20c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed7c7e96ffa1ea7014399a702938a07dd185a692928f13cf7b2e1b2136e2097`

```dockerfile
```

-	Layers:
	-	`sha256:4f80505f251702d1930721db6ad88480158d927e3891c690b982336cfca297b7`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 990.5 KB (990501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbd4740e108a6e36df2b81a7c549ebd1100e4af96ca70aeae1649c954960226`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 13.4 KB (13388 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:ccba3c5d98fc76a5ac6eade9bcbbb946635657457c3d269982396633a66da08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345077547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd3d45841e4e3dc66a46f939ce846575a08024b3af496986e404112a47e7051`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:10 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538661f218cd4e60de084491e8e3a35de6a046b1bf6629a2cfcd7e071a475733`  
		Last Modified: Tue, 30 Jun 2026 23:42:03 GMT  
		Size: 66.5 MB (66507131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5d354fe3e18cefa9d6abb58dbd1ee8b94e686655bc442974054ad13f931ec4`  
		Last Modified: Tue, 30 Jun 2026 23:42:08 GMT  
		Size: 274.4 MB (274387379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:f5abec2d2b9b8cf81fe03f9d842839bf846720844d2893c1f1dc9496b4fe871f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1063011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed991754e793a88e038ca5715b9d55f306c11173b10ac856b93260d8079429e`

```dockerfile
```

-	Layers:
	-	`sha256:c9bfc4f94fb748a26fd763c53b5e0dabd4ec59c9e7d8faffe6e211b9f0f3be2b`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 1.0 MB (1049454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d51ad22e1685e782f46c191678357cce2ea818aa2ed540f42d43a33aecc573e`  
		Last Modified: Tue, 30 Jun 2026 23:41:59 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:4140e5804a1f62768698069c2132af1cd6b2396f73801132a2e14b6739bc886e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363644421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b07d4ced549c71179c5957900257e588cca0d3638f1cb40d88547762c01fcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:49:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:49:03 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:49:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:49:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62da8e3dccbc51c69986848041d9e9ae77da645be996989fed8e9cca52cdc69c`  
		Last Modified: Tue, 30 Jun 2026 23:50:34 GMT  
		Size: 66.4 MB (66394546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a83b12f2bec426b14c69a573217921b8544047753ecf84ccce093456ea3f046`  
		Last Modified: Tue, 30 Jun 2026 23:50:38 GMT  
		Size: 293.4 MB (293436475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:c79ef3fe7e8b5d73feaf84c1104cb14100c0e13b2444f4c3ed952b649e12552f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f992c1703b33a154de6dcc47951553e902cec4612190df5d07a4114d8e2834`

```dockerfile
```

-	Layers:
	-	`sha256:b791b0a4ac011c8f09e1fcead5e43569e035503ba000deb161ddf7440e30854f`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dbe751a497ee8bf364f0dd4ab26601a917239c51ee804e9d7d1abf385f5fa63`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:bdd51fa1f2ff1b9accee5224246e39f4817228ee1c20e335635e8e55badec324
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
$ docker pull rust@sha256:138d97c279ad440ac738f2d21d955d4d7301c68574742ef27a8e0265db5fa038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339205399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fade43faf35675821a6105724d6af6e75429028bd8afa5d693cb880d3b1e6528`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:30 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:30 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:49 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15c387f739445af4a538b39f85c9a8b306c9552db06af7d7bc14fe04de2f1a2`  
		Last Modified: Tue, 30 Jun 2026 23:44:29 GMT  
		Size: 65.0 MB (65028721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09161f1ca7cc3f589e76dbb84d09b82c14d5d31d62bd2f754f3d9d541f4c9bb`  
		Last Modified: Tue, 30 Jun 2026 23:44:33 GMT  
		Size: 270.5 MB (270529803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:4aeb6ea4a2ec5cc4d0dcdcde7f86387ba3b4f2615e69c5c11f3c8379df96d6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **973.0 KB (973035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b006475ebbc2c0222f8d7c96cb0a1be5a3ee1a96bb3e9cb023fba0b8dd905506`

```dockerfile
```

-	Layers:
	-	`sha256:b144cad7dd5b66ac0edc394abb14344a0a36f72a66ec904f79a79a9c6a9acdea`  
		Last Modified: Tue, 30 Jun 2026 23:44:26 GMT  
		Size: 960.8 KB (960849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23f9cca1adc4a813dd10874b3699000fa1da383f624979f031fbbd7d61f812b0`  
		Last Modified: Tue, 30 Jun 2026 23:44:26 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e43795e70a61d90a365422a2caaa2523e36c0ee17e2bdb947ebac8852259c10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340082104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0237c1eadb3e068c6a0168d866eb1bcb56016b26adbef5da799ebc3f07a2ba1f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:48 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:02 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6e446fc5543c05c8e67db707e7961d2605a06d77075e530e8527ef7b00a200`  
		Last Modified: Tue, 30 Jun 2026 23:42:40 GMT  
		Size: 61.7 MB (61700223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63875bd581d12fa423eac144a42c48a9964e49ddc616d03edec54b63920681de`  
		Last Modified: Tue, 30 Jun 2026 23:42:43 GMT  
		Size: 274.4 MB (274387416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:7c91fdf19310223f04e80926fbe96ed4866f3934e313e0697a23d1c1dd28c22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1052479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b46979ed91bdec6714a215cecbd40cc04d7835c542c7905200fdb23c06a6c0`

```dockerfile
```

-	Layers:
	-	`sha256:0505aab31f67fdbcea04491186733493f043d7698175c896c8e0001b208f403f`  
		Last Modified: Tue, 30 Jun 2026 23:42:37 GMT  
		Size: 1.0 MB (1040175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e28f28e019b67e641f4173a32b86d77ca27e8d1a87acd0862a3e56069ff8fd9`  
		Last Modified: Tue, 30 Jun 2026 23:42:37 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:9b2fe155572da4ae6a9a69b2c4cf2c96e5c0410c4dcb7a9addb69428afd5fd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.5 MB (358527711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9313226ecc03e77d96c99ad1ece37f38e3319f8b9be12cd15840d132d9d3ded2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:46:39 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:46:39 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:46:39 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:46:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421da62b2f652ea46b355c8ac0e33872ceaa7128513aa1ced01021f6356e1db7`  
		Last Modified: Tue, 30 Jun 2026 23:48:11 GMT  
		Size: 61.5 MB (61512260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902357bb24da9a937516b79d1492b548f83aac12f08437e9d77ec1058bd025a5`  
		Last Modified: Tue, 30 Jun 2026 23:48:16 GMT  
		Size: 293.4 MB (293436531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:b8b1b7af7110113b6511d023e9f1d34e169d67d46106ea1759b291eefeb79de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e397eae4196b395184d340547c0277846581306ebc8aac1c095d1ed962cb20`

```dockerfile
```

-	Layers:
	-	`sha256:0c16b234330aabb2dd8ebc8a06f6e54246a26c752076f78e28d674878be2b200`  
		Last Modified: Tue, 30 Jun 2026 23:48:08 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47a71d42d9bc8fdd870c2bd2ec268bafc5f21c96fc64d618486fce82c6b22b47`  
		Last Modified: Tue, 30 Jun 2026 23:48:08 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.22`

```console
$ docker pull rust@sha256:fa16d058a94f0f1cf86cbbbd181a2ea2a0001e1fba1e93c366821a58f3e6c8a1
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
$ docker pull rust@sha256:8b5aee3b8fb41756d8447a47f96edc87a21f1e0c2b5ad2f3059542637d6c9b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339354577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47642e1259584d131aa2fb81b4d0090a7332f7ac4b564af0a41b53d0f5d3da10`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:04 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5f57d73b85dc79de4c10db12a401a0405464fbdd4f54354d987ae7a14a5de3`  
		Last Modified: Tue, 30 Jun 2026 23:44:03 GMT  
		Size: 65.0 MB (65037685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d5d4de8d61f8e743150c006aa23ef8518f63409f4948bd35b7c4314c07711b`  
		Last Modified: Tue, 30 Jun 2026 23:44:07 GMT  
		Size: 270.5 MB (270529297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:72c978925b3eba9fa7f8674613b056c5e52d61f8b3580642e66dd118b5275cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.9 KB (956923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e54c1e0e2c4eab0aa1b0eabbd423b938c3554a739f39fde750ce4f9cc071262`

```dockerfile
```

-	Layers:
	-	`sha256:9f0d26f2f1990fb5bbad5b904606ee9fc8b1e9fa9ef5d9c634ebd41b93238d04`  
		Last Modified: Tue, 30 Jun 2026 23:43:59 GMT  
		Size: 944.7 KB (944737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19da99927c8bea0963db258cf34823166e50ed3f9e7a53e8df8c5a446d8bc78e`  
		Last Modified: Tue, 30 Jun 2026 23:43:59 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:48a6b2b25ee4940672e3d178c73a07ddd7de54358a52ad5ddf4ffbec390f888f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340221057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6abd980fee62a21f48e66f5a2d39b7294bd1a804ee7cfb2c8a4752a2c51f11fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:12 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:26 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610525cb754ed0590f9fff1f1c31bc9d8f2ff94be998ac3707995ee78fd9db07`  
		Last Modified: Tue, 30 Jun 2026 23:42:03 GMT  
		Size: 61.7 MB (61713175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c41552b3cad42b6b596ebee759906ccc6883134d705c89d5447e8f92374f33`  
		Last Modified: Tue, 30 Jun 2026 23:42:08 GMT  
		Size: 274.4 MB (274387396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:c8f66933cfc326aee2ced414b3eff55939ac22a52a6a928a99fa7584570b0fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7e81494908e8c40e6a3ce6efed7f75d3b739dd70d8cf2cef4e9b13ebe379cb`

```dockerfile
```

-	Layers:
	-	`sha256:8d8a934c817525542e80c35abcb8a37b8fa60fcc70511b660b94e886c9b93067`  
		Last Modified: Tue, 30 Jun 2026 23:42:01 GMT  
		Size: 1.0 MB (1024063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac098e5dfe502a289eaef6753a39e9673212367f0bef6d498eaab540757c08d3`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:c9d52959b798b3882b9c097ccf510fda5ad6cb6c3c6c230032026d4948ea038d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.7 MB (358674151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a337c090769a98238dde3e7e2a9e40ba96dd5b8f9bc00100a4e31c4399118eca`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:47:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:47:04 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:47:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:47:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f4e8a2d47b12c8068b87265b2bea3fbeb0e94e1364ff1ec1fed936b57ae3d8`  
		Last Modified: Tue, 30 Jun 2026 23:48:35 GMT  
		Size: 61.5 MB (61518385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34db11dec3ca468dbc6ce74a694ab98a9984bf4ac5957429795bdf225942cb5`  
		Last Modified: Tue, 30 Jun 2026 23:48:39 GMT  
		Size: 293.4 MB (293436534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:ac02b9fa594ed9f7034410979403f7643736ffd774038a4c6ab67be18089abb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b25d1a13d5a2d1a3f04b79e2b6ab3e22646dcdd9c0980f10e93ef1d54166471`

```dockerfile
```

-	Layers:
	-	`sha256:27070b5c5d419d859588c8580c6c63ab07d51a81fedba59732f61d5be80f5de6`  
		Last Modified: Tue, 30 Jun 2026 23:48:33 GMT  
		Size: 957.3 KB (957281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6e62399bcf53b34cbdd767182cfc22d1cae418d6ba97c5fc27ad45138d5569c`  
		Last Modified: Tue, 30 Jun 2026 23:48:32 GMT  
		Size: 12.2 KB (12230 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.23`

```console
$ docker pull rust@sha256:14b9b5f47dcc6644d0f0c1b35a2c2c5d0124f67159aaee28a348627523459b55
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
$ docker pull rust@sha256:addffc00fc29651ab600b411be00775753252125b017a92513f76ca12c0b9624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.4 MB (349440860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4650a3742549ca0501aa1e4156ddb05f620330240a531f8c434c1a3fdb1f4ce`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35681aa166ddb968c12a105f82e8f146bc28953236a49f5abff7fe2e950ddb6a`  
		Last Modified: Tue, 30 Jun 2026 23:44:38 GMT  
		Size: 75.1 MB (75066624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47babbed243d5495ea144b6f0cccc187e862ef0a818211ca63b221e31c58711c`  
		Last Modified: Tue, 30 Jun 2026 23:44:42 GMT  
		Size: 270.5 MB (270529815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:459cf7a45621dbb1a5953326eb83449c345f1c19743d11bf5b89341575082208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1000.5 KB (1000550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e47557dd342a2d05052645627d5fe0a974c998f2bdb3a706996d02e10cb7a17`

```dockerfile
```

-	Layers:
	-	`sha256:2870097f15500aa0c4d0b65e66ba6580b8443400e1f4ada03e3826989475e915`  
		Last Modified: Tue, 30 Jun 2026 23:44:35 GMT  
		Size: 988.4 KB (988364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f92180ac36a238e93f9a80de2a1684a5e59f4e1b841d82e5797f3db0af31c8f`  
		Last Modified: Tue, 30 Jun 2026 23:44:35 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b38e527af9cd485d62885dcf64a7842e8d127e94d8b43fa6dc67347675a94d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345062288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538ba2d6cbea49494bebcdf22f30d05042234ca90bec514343268858f57b7c54`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:26 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acab90dd04abbcc6f19c5159e47037a20695133fc287933b431fa81ab12d38c`  
		Last Modified: Tue, 30 Jun 2026 23:42:04 GMT  
		Size: 66.5 MB (66493005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e88dd3f2644e1dc33d0cccd8c425a8ac3eee4104753bdc925bf6cf84b23a33`  
		Last Modified: Tue, 30 Jun 2026 23:42:07 GMT  
		Size: 274.4 MB (274387423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:29f4f40867bb142b3e31bd5fd3b0b85cc53148a083b4a1d5aa768a0023e53735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1059680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa25b8c005010d764c45c4f6469a8d51953dfdad144a1daabd65e28fbac9206e`

```dockerfile
```

-	Layers:
	-	`sha256:eb83a37eabd331d370b3962fa5139326d3029ca59306112f6f9331631d571198`  
		Last Modified: Tue, 30 Jun 2026 23:42:01 GMT  
		Size: 1.0 MB (1047375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad8cff0c17577d73de4fb62d3f7aca3d949b59c1d585083943cb5092bf840ca1`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:4620fb49410d4d5fbb176f8f33040c76e1c3faf0e1fc2f2b29eb37ce932b4435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363623289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7b68ba083548b8e8edb5d6fcc58df9c02a22dc0ce139a5e4e4b98a33d32043`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:48:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:48:34 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:48:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:48:52 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488209299366ce8085ef0275c2af8ef458cce94116b41960ddabac9037b4f29e`  
		Last Modified: Tue, 30 Jun 2026 23:50:07 GMT  
		Size: 66.4 MB (66374525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eab5ebd5143fbfbdf9a084b9416a27c88ac77255a12144ca894beef0325a094`  
		Last Modified: Tue, 30 Jun 2026 23:50:11 GMT  
		Size: 293.4 MB (293436465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:3b07d5b79c0876dc7b23c4232f53bd5a5592a98a657e62c635b5d83e82696322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74934d28d52cddf55738cf980ed3fc71c0aea07c3433df129856c50bf67ad8df`

```dockerfile
```

-	Layers:
	-	`sha256:31cab00042815a6a7b6e54bc188f20e2fe028e46d39d93088bec9711df8e896e`  
		Last Modified: Tue, 30 Jun 2026 23:50:04 GMT  
		Size: 980.7 KB (980686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa1a91e60dc8f3bef3d82ec42e5fd561d6dfa80bafab22a06809052f1a54f298`  
		Last Modified: Tue, 30 Jun 2026 23:50:04 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.24`

```console
$ docker pull rust@sha256:a41f7740f8b45d45795624eec13a8b42263cc700f19f7e4e86e04d3dda08a479
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
$ docker pull rust@sha256:f5c84c3751de59f0f318acfbed8b2d04693a12d9171f15835d9c11c9ddcf52db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349455443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be1484b093e4b27fa7de92c29073126617f6a72d428586fe4b782a6e21dccdd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:40 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b9a4131e96b01688c4e6fd3400fd8ec85f23f1cb606d1b92364345a6b96764`  
		Last Modified: Tue, 30 Jun 2026 23:44:34 GMT  
		Size: 75.1 MB (75079295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43c54cb9b8ea310a3730234455f912038e9194b4bce20da9e9f9448e2d9eb42`  
		Last Modified: Tue, 30 Jun 2026 23:44:38 GMT  
		Size: 270.5 MB (270529757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:3dd723e42e6af08c5dcfb40433f2a58f4411c15bb7cb79ded382be29a38b20c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed7c7e96ffa1ea7014399a702938a07dd185a692928f13cf7b2e1b2136e2097`

```dockerfile
```

-	Layers:
	-	`sha256:4f80505f251702d1930721db6ad88480158d927e3891c690b982336cfca297b7`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 990.5 KB (990501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbd4740e108a6e36df2b81a7c549ebd1100e4af96ca70aeae1649c954960226`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 13.4 KB (13388 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:ccba3c5d98fc76a5ac6eade9bcbbb946635657457c3d269982396633a66da08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345077547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd3d45841e4e3dc66a46f939ce846575a08024b3af496986e404112a47e7051`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:10 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538661f218cd4e60de084491e8e3a35de6a046b1bf6629a2cfcd7e071a475733`  
		Last Modified: Tue, 30 Jun 2026 23:42:03 GMT  
		Size: 66.5 MB (66507131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5d354fe3e18cefa9d6abb58dbd1ee8b94e686655bc442974054ad13f931ec4`  
		Last Modified: Tue, 30 Jun 2026 23:42:08 GMT  
		Size: 274.4 MB (274387379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:f5abec2d2b9b8cf81fe03f9d842839bf846720844d2893c1f1dc9496b4fe871f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1063011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed991754e793a88e038ca5715b9d55f306c11173b10ac856b93260d8079429e`

```dockerfile
```

-	Layers:
	-	`sha256:c9bfc4f94fb748a26fd763c53b5e0dabd4ec59c9e7d8faffe6e211b9f0f3be2b`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 1.0 MB (1049454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d51ad22e1685e782f46c191678357cce2ea818aa2ed540f42d43a33aecc573e`  
		Last Modified: Tue, 30 Jun 2026 23:41:59 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:4140e5804a1f62768698069c2132af1cd6b2396f73801132a2e14b6739bc886e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363644421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b07d4ced549c71179c5957900257e588cca0d3638f1cb40d88547762c01fcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:49:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:49:03 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:49:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:49:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62da8e3dccbc51c69986848041d9e9ae77da645be996989fed8e9cca52cdc69c`  
		Last Modified: Tue, 30 Jun 2026 23:50:34 GMT  
		Size: 66.4 MB (66394546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a83b12f2bec426b14c69a573217921b8544047753ecf84ccce093456ea3f046`  
		Last Modified: Tue, 30 Jun 2026 23:50:38 GMT  
		Size: 293.4 MB (293436475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:c79ef3fe7e8b5d73feaf84c1104cb14100c0e13b2444f4c3ed952b649e12552f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f992c1703b33a154de6dcc47951553e902cec4612190df5d07a4114d8e2834`

```dockerfile
```

-	Layers:
	-	`sha256:b791b0a4ac011c8f09e1fcead5e43569e035503ba000deb161ddf7440e30854f`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dbe751a497ee8bf364f0dd4ab26601a917239c51ee804e9d7d1abf385f5fa63`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-bookworm`

```console
$ docker pull rust@sha256:a339861ae23e9abb272cea45dfafde21760d2ce6577a70f8a926153677902663
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
	-	linux; s390x
	-	unknown; unknown

### `rust:1-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:d99f7b31f49909348dc59b51f3c95d1efded1701ffb222f095aaab7de3c4abd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **563.8 MB (563806610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c395291aeff1aadcfe3f4cb4238a3ffd2e36388c74a4638febbe7688892fb8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:17:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:41:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb598f63f1e9867f81313f86224109c84b2af9646d8fca29113217b94315956`  
		Last Modified: Wed, 24 Jun 2026 03:18:16 GMT  
		Size: 211.6 MB (211602331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0085f6fd51ee58df30ebdbdafea5daa893b49a5593c90327224e7bbc597138d`  
		Last Modified: Tue, 30 Jun 2026 23:42:33 GMT  
		Size: 215.3 MB (215254006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5bf78d50dae4cd5bb24c0c62c7a6be05efff738b8d383cd600d2de4fe3d4eebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15881870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17acde4f27a19c63c021384d1171328626e5e80829d46ebef402c7ebed03b02`

```dockerfile
```

-	Layers:
	-	`sha256:dd0fcc69ca3f53465a28f028e7c9de725893672ec53d0b6c38c77d9eae1402e8`  
		Last Modified: Tue, 30 Jun 2026 23:42:29 GMT  
		Size: 15.9 MB (15868197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a761bb8aa2a65db3398802ee6618e51fc6ae9151f73c527915a2162f31ff665`  
		Last Modified: Tue, 30 Jun 2026 23:42:28 GMT  
		Size: 13.7 KB (13673 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:7113930bd9ec13edc2103de1c875f326b87a682eff63f3970968e2e6884afcf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.2 MB (559154492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3976e21b88ec976b34304121b809f1ea51ccd710143800bb673fa5fd1aaffbd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:17:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:35:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:13 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0df8de55f365d832099cabf27409104999d59b26292d91202ca6e160c4b513`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 21.9 MB (21949935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16c85bf5ff1b42ae66f83fdb64a6cd05a854ea2289dfe1b0ae9e4ee6a806d0a`  
		Last Modified: Wed, 24 Jun 2026 03:54:41 GMT  
		Size: 59.7 MB (59661949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8aeb3259226bf05c8cdeb78f528aef9d5e19adf28e71540d132fb654168072`  
		Last Modified: Wed, 24 Jun 2026 04:18:20 GMT  
		Size: 175.5 MB (175502691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5c90a48a91092ca45fb0a3c3d8714c5050196cb62d66c4c35c2070a62d9a64`  
		Last Modified: Tue, 30 Jun 2026 23:36:01 GMT  
		Size: 257.8 MB (257831772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:834c6d306effa1fa45d703b46faf158309012ffa5f7d3f5bcf9912bb3a7d1868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15684436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3042f73a593d9cd9a67912651a61868d2cb605de4eb860017b17ab9dac4801b`

```dockerfile
```

-	Layers:
	-	`sha256:ff843af115e01263b254a16d9ecc12ec9edd4cd49ba1b040dbd42c45c43fc8aa`  
		Last Modified: Tue, 30 Jun 2026 23:35:56 GMT  
		Size: 15.7 MB (15670683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeab8b6f95f44719849efeca4229effe4932c913439354348c23d951b9133995`  
		Last Modified: Tue, 30 Jun 2026 23:35:55 GMT  
		Size: 13.8 KB (13753 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:809725748b728a8e1f8621a3c76e49fba8780c16d99ceda20abdb44d32665c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **519.8 MB (519829945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422353f1e5252fa8746e9ec7e5db42e30536f5473e74664607eb70308bf1d087`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:16:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:39:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:39:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:39:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cae401c24fa4bb4f22bb94674a5eb530bff1cfd2e063ec20053ecb9a5509556`  
		Last Modified: Wed, 24 Jun 2026 03:17:13 GMT  
		Size: 203.1 MB (203132913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee12c59ca20791f2c458459dec2c5395cacb997a44879ff1f9ffdb4213eec60`  
		Last Modified: Tue, 30 Jun 2026 23:40:28 GMT  
		Size: 180.2 MB (180206809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:a5971222543ca842849d5af35f49dc70a1359c919b3efe1cdfbaeab9d10a3086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15910502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7604a923914e7193acf1d48c0f423aaf70bebada418201fe084c059b92c1a3`

```dockerfile
```

-	Layers:
	-	`sha256:68cbcb214f5d84facfa0f4a83061ab166decb43dcf4b13d65e5755d6553842ca`  
		Last Modified: Tue, 30 Jun 2026 23:40:25 GMT  
		Size: 15.9 MB (15896725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9c4711c9f0c7d26fcf516c125d10b4c60827b956562d5df59ddb2b4e4948ba9`  
		Last Modified: Tue, 30 Jun 2026 23:40:24 GMT  
		Size: 13.8 KB (13777 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; 386

```console
$ docker pull rust@sha256:2fda75de145f232aee1d94bc0fda9c0649cde5af96db1e5ab8eaea8a02e38c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 MB (592622494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6831f8dd2550bf5caf0297cc5112899c9dfde6a411ed34ac04b1f171b829e77b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:35:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:16 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45c9ce5ae5ea6ab37787312be8b0a9732642c1221f97d5689baacac874b4cd`  
		Last Modified: Wed, 24 Jun 2026 01:43:48 GMT  
		Size: 24.9 MB (24879740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db0110899c29fd647e62f912bfb740fc8af5310cdc227454d8f086f16cba33e`  
		Last Modified: Wed, 24 Jun 2026 02:35:05 GMT  
		Size: 66.2 MB (66244204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d35d0ef7b0d342bb15591580b2f53dedb16d47cf8b5adeb9bc453fd0b71b9b`  
		Last Modified: Wed, 24 Jun 2026 03:18:51 GMT  
		Size: 210.5 MB (210534885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5dc6b96236163fdec1e51e30c1101b3e67edc4314cb3873ca0f3d7b228642`  
		Last Modified: Tue, 30 Jun 2026 23:36:02 GMT  
		Size: 241.5 MB (241472287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:715a9d67901fb1e9db73b6504f273b497db5cb02a3f007c835acf0a1fcb5fd91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887dee3c2f3d30177aae30f13872003f639a193e68f0719815ad9d87fe00b1c3`

```dockerfile
```

-	Layers:
	-	`sha256:f870d7ce177b0cdb7e22ae8e40ab660d4471c12bff07031198fc7b50658d618f`  
		Last Modified: Tue, 30 Jun 2026 23:35:58 GMT  
		Size: 15.8 MB (15845112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:460e498bad37af1f4cca3510bc9ce8cd201afb3ebfa7f90552f3021d00288617`  
		Last Modified: Tue, 30 Jun 2026 23:35:57 GMT  
		Size: 13.6 KB (13641 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:d9b06603e05b0e722b862808e22eb771752c2e041b304153c18d86e12bce399a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.9 MB (656859371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ef07e2b933a1e8df6c06ae396497c2a1b29a5970d2254bacd9b3fae950187a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:25:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 09:09:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 11:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:41:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217268ac6656bd05839d5770fe7b3c0c976d29750b0c5635d099e473a789a10`  
		Last Modified: Wed, 24 Jun 2026 03:25:44 GMT  
		Size: 25.7 MB (25687048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6542f967f29885e49bf508e83dceee1eda4fdb044dcd68c1237588f15b795e2b`  
		Last Modified: Wed, 24 Jun 2026 09:10:08 GMT  
		Size: 69.9 MB (69853519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2d0228e0a63503bc4fc587e09e362154291abcffaef8e63e71bd8a6dbcd861`  
		Last Modified: Wed, 24 Jun 2026 11:39:56 GMT  
		Size: 214.6 MB (214646362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a49234c911dba2d02cc3c443921f7ed6a2a2afb901ac3a08290a36e5216587`  
		Last Modified: Tue, 30 Jun 2026 23:43:52 GMT  
		Size: 294.3 MB (294325595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:4211376dbde0487da8fc72013e0a07e44ada97233101ff17cbaa2b150e9be954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850b1e5602f2fb3156d64ff68e2579e37d74a31654a159a936d9dff334a92ed6`

```dockerfile
```

-	Layers:
	-	`sha256:24c65c1f84f5de33c6d323d9f7eda854ee096c2a47e0c5f316672129cc82dd8e`  
		Last Modified: Tue, 30 Jun 2026 23:43:46 GMT  
		Size: 15.8 MB (15844722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3082de44cb2eb2be1278a977e21ea773a6590a7735b38abffa52505a1387139`  
		Last Modified: Tue, 30 Jun 2026 23:43:45 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; s390x

```console
$ docker pull rust@sha256:90117b296d6564b42b1fe534743346b9ae5eb9a830000e7151f396cc2be006f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.6 MB (613622375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1347948acda40582540ecd1dd67f82424fb3f8941b2f93cb8b972257f6ca23`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:45:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:29:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 05:17:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:32:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075239c7f31ef6bc9923503289fbabd4a216a0cc1314ab546cdb22b3aa178273`  
		Last Modified: Wed, 24 Jun 2026 02:46:07 GMT  
		Size: 24.0 MB (24038997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98bfd0e5e3c41d5610549c351f2a214a1057c70f21ae763c153398d8481275e`  
		Last Modified: Wed, 24 Jun 2026 04:29:51 GMT  
		Size: 63.5 MB (63498267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99167449a185592a85feb187a60fc4d1a3ea3909348ca45a213cf5735904d1d5`  
		Last Modified: Wed, 24 Jun 2026 05:18:36 GMT  
		Size: 183.6 MB (183624001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80782d2d1f6c77f1065ae2eb35ddda3b3158224258e4406834ae5a1113519cf`  
		Last Modified: Tue, 30 Jun 2026 23:34:15 GMT  
		Size: 295.3 MB (295299435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:3c90269f859d289b45fa2249566843f963084664855d9b1f21b026a8c11036a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15689465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040ba7172b0304b3ddb0f6677831a375c6a103fa8f49f341cee3d0ac3506322c`

```dockerfile
```

-	Layers:
	-	`sha256:b7806e249f9430d377616e550f55af0d15cfa558627ecac526ebea454f5abfc8`  
		Last Modified: Tue, 30 Jun 2026 23:34:09 GMT  
		Size: 15.7 MB (15675793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fda0121971cc7ee5f0c411cf538810c50bb93a8d5f6dedc43b2ddcf31171ca1a`  
		Last Modified: Tue, 30 Jun 2026 23:34:08 GMT  
		Size: 13.7 KB (13672 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-bullseye`

```console
$ docker pull rust@sha256:21d112adb6ab370d39eef8f861f10b42342419b9569e7a05dac15e19eb65a3b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `rust:1-bullseye` - linux; amd64

```console
$ docker pull rust@sha256:65136b30fc6b10112cbae63a868da085a878679a80d562272e485ecaaad3276a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.9 MB (536895700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1180171a45255830dd6c52f737fc6e25d6468de8a20abb315a6280fbd26435`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:40:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816526a6d4acf81b392ec5a1e6d8d402fbc4bf0460323c5ad45b376b247ca6fc`  
		Last Modified: Wed, 24 Jun 2026 01:41:36 GMT  
		Size: 15.8 MB (15790805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3cf50c221acb61e259a7ecd20caf425597eca7d93e329dde2640ca7ec8aaf4`  
		Last Modified: Wed, 24 Jun 2026 02:28:36 GMT  
		Size: 54.7 MB (54742897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a160e6d2c8242d5f49a2c1be818ab0f47647e5cc5cf1fcb068e6618846d778`  
		Last Modified: Wed, 24 Jun 2026 03:18:13 GMT  
		Size: 197.3 MB (197335039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143375a08243397d86927c703a00ab22a648e2f813240e1e05719cb7383c77a0`  
		Last Modified: Tue, 30 Jun 2026 23:41:41 GMT  
		Size: 215.3 MB (215253950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:ec8ceb17da7bf86bcdcbbbfe3689fcc0d7a15d4021dba8d08751944a0e8a30f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15485967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9716a5e3356553c446c08a476c3f841033958cdcd1856fa5845d53a0d93cb619`

```dockerfile
```

-	Layers:
	-	`sha256:5e9c93ccb0be10a5c5b0446ac035ce53cd7fd7d681d35f7778896bece0bfea8a`  
		Last Modified: Tue, 30 Jun 2026 23:41:36 GMT  
		Size: 15.5 MB (15473464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2ac5232581b181939c4054932b7451c284e52403ab6b3d3d3311594acb4ec36`  
		Last Modified: Tue, 30 Jun 2026 23:41:35 GMT  
		Size: 12.5 KB (12503 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bullseye` - linux; arm variant v7

```console
$ docker pull rust@sha256:95a74f9adefda719bd334b1a528a3a43512bead1809e7bc2c5a7490a2db1cf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **540.2 MB (540239546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6775eef0b711785686fd04abcef8569671f0d64ca4d61f1d74c7df3de5aaaa4d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 02:23:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:34:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:34:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:34:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fc5ae1e57bd12fc3393aea9c4c883b87d2ec58e18ce0892f8effba71fbfcd039`  
		Last Modified: Wed, 24 Jun 2026 00:28:02 GMT  
		Size: 49.1 MB (49064073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354f5593b138af5d5b60d8e82c822aa52fd74f6a603db24886e0573d60561397`  
		Last Modified: Wed, 24 Jun 2026 02:23:28 GMT  
		Size: 14.9 MB (14905363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf4cfcfd51cd63cbc0a86a0ed17f661e5157a3b24f24a750cdb7ac4191f84c2`  
		Last Modified: Wed, 24 Jun 2026 03:55:06 GMT  
		Size: 50.7 MB (50659165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd7e6cd4f6193c57c8019ecd8089fc02e4912acb7efee4fe62122766c0d5356`  
		Last Modified: Wed, 24 Jun 2026 04:18:24 GMT  
		Size: 167.8 MB (167779320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ccb2c5532e8317abd9d28cc20cee6c76b6945b86842364b5d9db45ffc39d09`  
		Last Modified: Tue, 30 Jun 2026 23:34:59 GMT  
		Size: 257.8 MB (257831625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:9c6e754615103c37abf3e54d5a8a7771886a0f4c7ae2595c087222b25ea1bb67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15285391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9272eb6c240a0ac0f31145e7d84c3676a2f6290d1a03894af68c11173223d6`

```dockerfile
```

-	Layers:
	-	`sha256:c274dc1c21e1b306c9e99683912f75107adcd16297875963418f997f7178ee29`  
		Last Modified: Tue, 30 Jun 2026 23:34:54 GMT  
		Size: 15.3 MB (15272808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bf6c002a70180b99a53a683043b9e0abb745f6cb24d7234e8ef597d4906963c`  
		Last Modified: Tue, 30 Jun 2026 23:34:53 GMT  
		Size: 12.6 KB (12583 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bullseye` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:69e444ec65a82386d041a4a3d15e47a797967b90ae24aa342bd8a3600dd9e244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.3 MB (493348034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9004b62c7b6149259e3eb6b2c69f4f9f7837a0aa57865d5dd32bcb4a9dac21`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:16:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:38:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:38:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:38:40 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf305d6ad7bad47ee0696c3db8b8fed8e9c2a42c53b57d047f8ab32f5d9b546`  
		Last Modified: Wed, 24 Jun 2026 01:44:59 GMT  
		Size: 15.8 MB (15774954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95f37219bba62c0b4908476dc3cf7f0f98f1c87e8908c188797b1dc1f610c77`  
		Last Modified: Wed, 24 Jun 2026 02:35:29 GMT  
		Size: 54.9 MB (54879567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e939dc6537087193b54cb28550f30706346c9eb7faf3f1da018845a5675ef09`  
		Last Modified: Wed, 24 Jun 2026 03:17:29 GMT  
		Size: 190.2 MB (190229454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a0e470da3354fabe932b34f5b265cfccfecd385c7de2d3e80cf8af7a4fc0d5`  
		Last Modified: Tue, 30 Jun 2026 23:39:20 GMT  
		Size: 180.2 MB (180206840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:3a16b6fa6d7f7326f84132917f56208b2dd93e8d8d72ea4ab8d5b940a50b1c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15488042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ce822070b5746c7a4e1adb31bd15b7fe20e217746af6afe90da484d1d6cfec`

```dockerfile
```

-	Layers:
	-	`sha256:6fac9f294c13891db25cd8d803dae3da587351f89101ad0af1b4944336c3966d`  
		Last Modified: Tue, 30 Jun 2026 23:39:16 GMT  
		Size: 15.5 MB (15475435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3899c7202655db8c83a23541e4edd239746c728f1433ba296f6e6e3c407f982d`  
		Last Modified: Tue, 30 Jun 2026 23:39:15 GMT  
		Size: 12.6 KB (12607 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bullseye` - linux; 386

```console
$ docker pull rust@sha256:e853e2725695c8048a8b138db56e64d1b0da5843e4b94f24a986c39d1147e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **568.8 MB (568772449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad9866b38bd033f3577434311d7d2c79341519729e55b13fdd0ffb0ce8171cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:17:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:34:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:34:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:34:09 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f059b391cd2cd82464a697d38282bb9c5437ac5b83e7b92cde4d9a0644a137f5`  
		Last Modified: Wed, 24 Jun 2026 01:44:13 GMT  
		Size: 16.3 MB (16295718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18472033acd6c573e081fc2a3814994e7ab4e4ca2f812052bd6f7c4b0286c5cd`  
		Last Modified: Wed, 24 Jun 2026 02:35:09 GMT  
		Size: 56.0 MB (56047273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6beec4254dd6d9d54bec111217bc6634d6c5d7b5ceaa6029ae996278552695`  
		Last Modified: Wed, 24 Jun 2026 03:18:33 GMT  
		Size: 200.2 MB (200244154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e703af94c4533fc68c2687f9c5ff0a94b0c1df2ca33aebc5f9cba7b40d6911`  
		Last Modified: Tue, 30 Jun 2026 23:34:54 GMT  
		Size: 241.5 MB (241472420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:0bc00ae08e242feb6b1551177815e2bbe26937b6f7549f4316e9bc85d1f07e22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15472636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357caaa60d17674ced144726abb2b757649ba6bde0bbeda1288045d6856f5971`

```dockerfile
```

-	Layers:
	-	`sha256:27e3fea3fa845f1a2634be032b6332e7f1ece4da6d83470bc9aa8ab40a5a2438`  
		Last Modified: Tue, 30 Jun 2026 23:34:49 GMT  
		Size: 15.5 MB (15460166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb2c2c23ffc6732ec924cddb79e6969a864a88c140fa765530a75f50e37cac25`  
		Last Modified: Tue, 30 Jun 2026 23:34:48 GMT  
		Size: 12.5 KB (12470 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim`

```console
$ docker pull rust@sha256:31ee7fc65186be7e0e0ccb3f2ca305f14e4739e7642a1ae65753aa5d7b874523
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
$ docker pull rust@sha256:d8f0d5c09580253ecdd6d6894ff112b2b760683ff2a74585e5189f2578728ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.5 MB (320462817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7774afa8fa5ea5aedfbfdfd3684d130a9c824508cfc0d373e7c3eaa8b546af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:43:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5169cf74e23b4eb5efada4feddccfe1372ad72000179e789555e16a4739b3cfa`  
		Last Modified: Tue, 30 Jun 2026 23:43:47 GMT  
		Size: 290.7 MB (290677398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:cb3cc9dca8bb10018f9053aabc7314ee70b8044349044bb0f1a93feeb7d01690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4180813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd95d495aff47b22e1b29309b7dea7fa7b32f1d4ab805b8985e4060643a34e80`

```dockerfile
```

-	Layers:
	-	`sha256:1d3e799027176ce724c193484b07272e9e43fcd07143f6a96e137783a89ff441`  
		Last Modified: Tue, 30 Jun 2026 23:43:41 GMT  
		Size: 4.2 MB (4165181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b332e57a057c6fbd37127e9e26a17e45504d8e6a42b91304fab1f0187744128f`  
		Last Modified: Tue, 30 Jun 2026 23:43:40 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:d8bbece1bbb94edc50dd3aaebd6db6906a8708406cae246336a2a6d5d982d5b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 MB (334306918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a44f63b86e6d2df4306e3c141aca74d706a09cd362fcaaee6056f1bcb440374`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:17 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbed8fc27cc2e57aa37e54edccbeca68ab0064fdb2e220aa86d6539f843f6dca`  
		Last Modified: Tue, 30 Jun 2026 23:37:00 GMT  
		Size: 308.1 MB (308095867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:31288bbc0bd624f9ef9a075839e6b56bfc962b85df14158d642867a25409aa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7235ade987dfe21348a579741ba48e27e3c87b39218e0ae1a249c710a22287f`

```dockerfile
```

-	Layers:
	-	`sha256:0b08f54c46e1bb018fa82f3bed76118b02519ca2abf88b8fee7cdc9109613a96`  
		Last Modified: Tue, 30 Jun 2026 23:36:54 GMT  
		Size: 4.0 MB (3970057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c2d74cdbb5e81c47df6fcdcf0506dc3e529cf120768dbd5a739223bfddda24`  
		Last Modified: Tue, 30 Jun 2026 23:36:53 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bfa306c18b2e778a21782d0ac2f1ae7442c6261409bfff086867a736396cafe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280037021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d0599a9e72e980be6e5e2c8f5b7bd4527ee7cae3dc9cb856b6f3bcb78fe5bb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:41:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06f4d21cd23f8b3b2051580f857db82c3ecc0344a1dd61937b45c6e0136596a`  
		Last Modified: Tue, 30 Jun 2026 23:41:40 GMT  
		Size: 249.9 MB (249888470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:580c5e9ae884d53f62947e73dccbe2755d928ce5015b17ed6058f32051eeaed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28ca1537d64fbb42b753bbca060bd3af72d8a8ea79e215639fb408ea14a80ec`

```dockerfile
```

-	Layers:
	-	`sha256:ad14d04f4f25022fb981e732a582a7bea9db76ca62a17f8cc280d829acb283f5`  
		Last Modified: Tue, 30 Jun 2026 23:41:35 GMT  
		Size: 4.3 MB (4256389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfbeb26bafa5a931c4a905890c97fc5e2af63c967676d1544be8ef0ac611c843`  
		Last Modified: Tue, 30 Jun 2026 23:41:34 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:2e9387cd3957094ac433d5195fa8b3303a927b776c55a5616556ade166126666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345268333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5695d4ee44f7c9e67d9aedd34783f715caaa68496705cd22e0f1dc970a240e8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:21 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:21 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:21 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e39aa2cb81cc9de4f8e8a62a93e0424a9cf059df3a61fe8c6997709aafe8c8`  
		Last Modified: Tue, 30 Jun 2026 23:37:10 GMT  
		Size: 314.0 MB (313967123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:f411c5f9ae123b68e5900939df2f83f8ea2f6a66092e64ed170a7bebd31549e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652dcff9f53175950374a6cf80cdc09a14c6d2cee0fbc374b9c787ad54c40e4e`

```dockerfile
```

-	Layers:
	-	`sha256:68c0104fc98af4a0baa5a7886a29adef44730b841731045adb6654933d1ec1ef`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 4.1 MB (4138694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ffa2f2236a1926b38bfccc2311a4f3c1e6ec7fa80c4b09b937e1e5a935a7b5`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:6cccfaff8b5e435353bdd1584bb779cc3462a7e6ebf0310f9e3a91f511516cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.8 MB (394794662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9808328e9d7a7086a80ad49829787737640cd8f9c6a5b027f8471db9f8c39e0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:45:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:45:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:45:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a1b9586b8df8c7b48a10cb239c8dc121612c6b2334ede9029441341a3a1aeb`  
		Last Modified: Tue, 30 Jun 2026 23:46:42 GMT  
		Size: 361.2 MB (361188274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:7b3da06d488d047d5f5ccf6310847d0cb4cc3e74c30264da20feeb30af356a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27a004bd43a0b0db613494e459ae5ad050b9cdd7f74b088f8d9ec7005e09cdf`

```dockerfile
```

-	Layers:
	-	`sha256:871b5e01a06417652ce71f8fc2e4801fcf5e89353dfbbfa8de5309f4e86c7f0c`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 4.2 MB (4161642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e425d7e83750e5382336978b8f35be6d832a2217ff61a8e1c0279ed4ffab833`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:6de76d48bfa215d4acfafe83b3a995c541169c07e58f0875df3011be1654907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.6 MB (390622308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2aa4ab7fac655f70dbabe7b479a77fc1422e1d7ec52f5b7ecb9da60d08ffdd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 01 Jul 2026 00:08:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 01 Jul 2026 00:08:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Wed, 01 Jul 2026 00:08:50 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741b3e17a86e6fc7485362d4b2330dd099ace7baef05c6ee938ab23b69df819d`  
		Last Modified: Wed, 01 Jul 2026 00:20:19 GMT  
		Size: 362.3 MB (362339930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:86d7753e8cfc6e83ce8cda22a09ba52bd57d667dc289be1f0f2151b92bfd3fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4255299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154d9138453eb7cf2ddc62d93359648e55e7e0b00b346f50ab392f7e2ccc35a9`

```dockerfile
```

-	Layers:
	-	`sha256:1f775781ebbe44e5272f2cd49401babaee6f32315b81861d38525d178127b35e`  
		Last Modified: Wed, 01 Jul 2026 00:19:15 GMT  
		Size: 4.2 MB (4239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65854b22ee921bfff704d344af5be5b90a6df3af462e8793572ad096ab3555b0`  
		Last Modified: Wed, 01 Jul 2026 00:19:13 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; s390x

```console
$ docker pull rust@sha256:6d030b3966486a507584fe3ca14771a3671616a56b00d579d5c4ae174168c719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.5 MB (377522130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa078bd7e0a1077a2ef029e95ad87a41169ca69d70e54a22ed7fdedb248a4427`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:33:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:33:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:33:02 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a217a5960c58b3cfbf8274a06f1dd8394cdac82fe111339631190c625224dc`  
		Last Modified: Tue, 30 Jun 2026 23:34:11 GMT  
		Size: 347.7 MB (347670749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:e321d4f9eeef3ee561a68964bbaaef56f138e78113ec6715cae03d768a156d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3998562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ac54263bcb8c912f1564455b0d90250a6f53da98b84ce1afd13de0e51b25a5`

```dockerfile
```

-	Layers:
	-	`sha256:98c8714b9945a7008c62559d08ecb9f78776eb2c5cb86f3e92620295c54bf7b1`  
		Last Modified: Tue, 30 Jun 2026 23:34:05 GMT  
		Size: 4.0 MB (3982929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a10e0ec21d242417fdb7ead873cb4e93ddcd432584200c2d1b148868c1463b6`  
		Last Modified: Tue, 30 Jun 2026 23:34:04 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-bookworm`

```console
$ docker pull rust@sha256:e18a79fc84dfcfc3ab5ba72290398a644c135c97eaa881447fddc354ee4701a3
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
	-	linux; s390x
	-	unknown; unknown

### `rust:1-slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:39decc9f9f4a87e03db5069b2424c0ee13c3d7e4116010980d4f96849e823bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314280160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440a1e7c9fd47777de824f16eb02f205a6eb35b23cc3dcde16610853f4a7ea04`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:42:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:13 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f7747eb17edcb95ba3a91f280fd7d821befec4e2f234f0b8955cf481a04a89`  
		Last Modified: Tue, 30 Jun 2026 23:42:55 GMT  
		Size: 286.0 MB (286042521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:bbe4cf43e4f7689f59728fabf1076d546ff499b04295dd66dd9e49681aec2419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4109408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403f1e839e96d521591f1b38f5dede9d9308157901f22322e35a2a3957eb770e`

```dockerfile
```

-	Layers:
	-	`sha256:056578202cc47ce79e90019c961b651e364523c524e275266c863306aadd2a27`  
		Last Modified: Tue, 30 Jun 2026 23:42:49 GMT  
		Size: 4.1 MB (4095525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312e7a24b003e62770653e21cf48a283d342042bb39d6460673c4911030b237a`  
		Last Modified: Tue, 30 Jun 2026 23:42:49 GMT  
		Size: 13.9 KB (13883 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:be20a3bf952d87ca76d6ce4bb38b171b01cf2a6fac02a58687818956efe91666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329613246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7399fa7e2dab73e5eb8332cef3850c30bd0d195a5127d2202d84a898e438a902`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:35:28 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:28 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:28 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c126e1f53edddeebbcde3db8b1ebecca5f95e2522be909ce9946920ac14eb6ee`  
		Last Modified: Tue, 30 Jun 2026 23:36:12 GMT  
		Size: 305.7 MB (305668714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:09fd2b979f52d94f71ba5caeb0365caeea1ec4737c0a98859edd6ff551e91dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3923886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2d16aefb5dcb2cb73a4d0965d1a282ae0631c15a8e57c52f831008187de709`

```dockerfile
```

-	Layers:
	-	`sha256:64c3662b3bed84416a1e5ff1b351c657826d4894e04e329de4a6ff2f931b0b89`  
		Last Modified: Tue, 30 Jun 2026 23:36:05 GMT  
		Size: 3.9 MB (3909922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5c5d30ef63ae0b12d6058b9735ecf746995a4e7f5461174dac8c89feda0d6b5`  
		Last Modified: Tue, 30 Jun 2026 23:36:04 GMT  
		Size: 14.0 KB (13964 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e42d574c21b0e1348205dc0e8994086cf73088596e999f67fce215f8406881a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274211618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da06955dad36226b9e63d751d2c39100cfa9c79c1f8aa636f32c5b04fc937606`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:40:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:24 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83713e62fc8cb64bcf4d3f833dcbc779ad67ea93de1b3bdfa0a9cfa793eef967`  
		Last Modified: Tue, 30 Jun 2026 23:41:02 GMT  
		Size: 246.1 MB (246089200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:83ba71ecaaae2740757a0d260f5de33e3c638bbd83b07c4ed051825829b97cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4131809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dc0bc1f03ebdb4c7d176f05178d5bd1360e751cbfa06a341039dbb582d1d4d`

```dockerfile
```

-	Layers:
	-	`sha256:f196955a1f199f84b0797dd4ed20ee3e66e0b93b1d84da5fd1935f71ed59686b`  
		Last Modified: Tue, 30 Jun 2026 23:40:55 GMT  
		Size: 4.1 MB (4117821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c04bd4485035b33d0c76f936d81d5fd201c78e86f2bacd50c3b2a733370d7687`  
		Last Modified: Tue, 30 Jun 2026 23:40:55 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:f6079b4826ac7062c6a29d8cc67d9ef22a8a7d82b967250df3ccc6643611c939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338298198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34d39b4e5fb89930fc4c730a503142262599195291b0c3c97d696263738854c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:35:30 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:30 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff990000b20e34eb02cb3df23598a28fae1a68f06a3a4f2a6f86bb6f0af5625`  
		Last Modified: Tue, 30 Jun 2026 23:36:19 GMT  
		Size: 309.1 MB (309072389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:f2966f532c02842a5a237a2bc0f6f7f91183002d9a10df3354006d039a2c50fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4088760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55083d0cf33be56db70d95e9d7596e9059cc3016803b6585a608765e9b414039`

```dockerfile
```

-	Layers:
	-	`sha256:cb3584f6a32e9e3efaa3349f2c42030c32b5b47a7746f112903a85dd3c04b417`  
		Last Modified: Tue, 30 Jun 2026 23:36:12 GMT  
		Size: 4.1 MB (4074908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e152dadca2ff10204645b0203785194f04ad552ff3d6d0af709a878e841938`  
		Last Modified: Tue, 30 Jun 2026 23:36:11 GMT  
		Size: 13.9 KB (13852 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:c5307bff50aede4b0de0c2066a8272f29569b1dfec6b162e6ad7a1001e167cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395166254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b34e10158f7184f8c3e7a000bb210b9f018d80b68c5068ab90804bc343b4f83`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:42:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:36 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ec90dd45380a1bdd19051eecd4fc490c11bdc82ffab12709205d7be225aeec`  
		Last Modified: Tue, 30 Jun 2026 23:44:04 GMT  
		Size: 363.1 MB (363084276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:562ebd154437b1e5f0d43cf40d0fd8c0d6f091e8b1bef8b65e3e5229803ef409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4083055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467720f89d79d6c6671d59a3302ab7684c5292f6543ceee797978af3a6f951ac`

```dockerfile
```

-	Layers:
	-	`sha256:5a4bbaf72d3d095df8a8f3d117cd8a08733bc9a64d6874df3c17f0c5e2b7e825`  
		Last Modified: Tue, 30 Jun 2026 23:43:56 GMT  
		Size: 4.1 MB (4069127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b0f36502b7eb6c4af20e66fbe75f6a4bf5ff348913c65275317c7fe67035014`  
		Last Modified: Tue, 30 Jun 2026 23:43:56 GMT  
		Size: 13.9 KB (13928 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; s390x

```console
$ docker pull rust@sha256:908e0c4d5788b29dc1133b6ca45a744ce0c75dded0d7dfa52c65d1e8ce59abf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.3 MB (372336890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081089f2b7cb5e9ed52dd9254d1341fa4cf00fb5bf68323a37bdcfc3434a18f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:32:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:58 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49501c12806c779d1a0eddbfbab2bda28a553d692b5afc91fd1392efae8e538a`  
		Last Modified: Tue, 30 Jun 2026 23:34:05 GMT  
		Size: 345.4 MB (345443305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:536afcd6389778b1888b7318f4d9b919a424fcb35b9717ab5e6c16513a339eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473766ec1dfc6191819d58e64ccd7e21a4fd5b8407d77cebc5af26a14b4dd718`

```dockerfile
```

-	Layers:
	-	`sha256:4858545ebe712cd29df65a2ae389322ebe2af8fb8ca5b8bb852cbc2779d5a13d`  
		Last Modified: Tue, 30 Jun 2026 23:34:00 GMT  
		Size: 3.9 MB (3933203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68b0b9f317f14d4fa889e2a650946e8add76d8d34b87fa4d8810e00236c7e84a`  
		Last Modified: Tue, 30 Jun 2026 23:33:59 GMT  
		Size: 13.9 KB (13884 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-bullseye`

```console
$ docker pull rust@sha256:c593596210f729542a92aced6a8b0812bcc8d04c5f1b238e663b800d0e2e17bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `rust:1-slim-bullseye` - linux; amd64

```console
$ docker pull rust@sha256:b1bd9c1f48801b68b585071556d04e4737ff680e5feeb90e585571591236aeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305672436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb27ac28d506a692188e106bd391a48641f12e3714b3922db8ad3bf5df03644`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:41:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2c6a69d039132205a906bf1258d39ecbcd635bdb6dd4745a4e5a70da2cf540`  
		Last Modified: Tue, 30 Jun 2026 23:41:58 GMT  
		Size: 275.4 MB (275412989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:8742be5bb56127510aa0f48527fe6cbfc7f8f9907773c269676a3292c82a3c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef545d60ee189739fc18495f185307a42125118c64d3a18e11bce3b180a19740`

```dockerfile
```

-	Layers:
	-	`sha256:385bd03e9b09ad7e8c07aea3dcf0eaa447830106b5c045d00db4c76ff95e5931`  
		Last Modified: Tue, 30 Jun 2026 23:41:53 GMT  
		Size: 4.3 MB (4312026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b0e53a84e0827d8e079d76b80ad10d77acd91bf4300a3303808b237c3d1c3b3`  
		Last Modified: Tue, 30 Jun 2026 23:41:52 GMT  
		Size: 12.7 KB (12714 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bullseye` - linux; arm variant v7

```console
$ docker pull rust@sha256:85410247dc10acab254df3997278b10a3b0ce3db8a77710b4775ecb1ad6658a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325689542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f604ceec64b559b96929a4e5cbb0d0f01599fc2f800fd07f735bd8f4de7300e5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:34:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:34:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:34:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8ec7789c331459e48d19f428fbcbbcb0b3cc1497798c19c3025d746ad6b457af`  
		Last Modified: Wed, 24 Jun 2026 00:27:55 GMT  
		Size: 25.6 MB (25552772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d688f7fde2657890dd7b50e1ac012b1aee318edbe465a5b1062351c794459d09`  
		Last Modified: Tue, 30 Jun 2026 23:35:30 GMT  
		Size: 300.1 MB (300136770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:0fada9b5917149301e1647482593ad934527c360f8564c2ff1a035795e910f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4132813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d118d34d4d25273668537711e2e98ed7c799f2fca0096e22e63cd81192a4265f`

```dockerfile
```

-	Layers:
	-	`sha256:e195e9ba7842d560d2bdd546fc1c9bc6ef6f913c278a5420da893c43ae879794`  
		Last Modified: Tue, 30 Jun 2026 23:35:24 GMT  
		Size: 4.1 MB (4120019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76cc26ef00858d9c3d60c3209f7c5a878bd873d2b397370332707bb172274c78`  
		Last Modified: Tue, 30 Jun 2026 23:35:24 GMT  
		Size: 12.8 KB (12794 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:1678a5ec8a5cde36b94420fbccb01f95db59fca7539b4d620396c237f54b5a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264687614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a59da720ac4e574e0fa3ea86896f8dbc0319aa5139c23b31406b655ae4142c2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:39:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:39:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:39:32 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc934a844f5bd88866c27f55e3d6b22dd33ced44051f59285320f9c4bb789872`  
		Last Modified: Tue, 30 Jun 2026 23:40:07 GMT  
		Size: 235.9 MB (235940688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:b86b22f5b75047b49c05ac4fa3bb5d2cfe35770c436db0086ac234845b5ed823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4321233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db6252f11ee5ec9e4b21564e24543044b3335093d1333ac53debafd8973f2e45`

```dockerfile
```

-	Layers:
	-	`sha256:8f486fdc210f69297a9ce95e8b052bcd131cc643a17b547ae93434d02e8ea529`  
		Last Modified: Tue, 30 Jun 2026 23:40:02 GMT  
		Size: 4.3 MB (4308415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e1bedf0e6329cc4cac19e8ffb6520ea51a47e1d08ac6bf488c3e26d80bffde`  
		Last Modified: Tue, 30 Jun 2026 23:40:02 GMT  
		Size: 12.8 KB (12818 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bullseye` - linux; 386

```console
$ docker pull rust@sha256:e77958d2ecf27494389076dd15b31a2f8170dacf01a11c9fa2829d942824b236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.4 MB (333442825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33bde8006564220259c687f8b8f28bf43ba9cc07a18a581013ae96c15788733`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:35:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:edbad50f4a6e85b8608c496472f5f48b2e108ebbad0ca8f7c81784396f0c79d6`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 31.2 MB (31196135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6336bcb9a50b6b8beac71dda008d64cc237515b6ece226be1bab261b960dd27`  
		Last Modified: Tue, 30 Jun 2026 23:35:52 GMT  
		Size: 302.2 MB (302246690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:d235abae105d0a04f2ab5aa821efaf6b6d40c0b6ddcbb2ede2a7e18c0ad4d488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4314450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9e8e2b63e15036658fc294a15a129cd5152fc0e11217a13dfd2bc3423185e9`

```dockerfile
```

-	Layers:
	-	`sha256:afa0a7bfb63b4168021eee32f615aec57a50d4986b52a615eab29ac1d8e671c2`  
		Last Modified: Tue, 30 Jun 2026 23:35:46 GMT  
		Size: 4.3 MB (4301768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361abc90976ccb84b39926b743b4d2d08197aaa0853f371969581b10bfa643fb`  
		Last Modified: Tue, 30 Jun 2026 23:35:45 GMT  
		Size: 12.7 KB (12682 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-trixie`

```console
$ docker pull rust@sha256:31ee7fc65186be7e0e0ccb3f2ca305f14e4739e7642a1ae65753aa5d7b874523
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
$ docker pull rust@sha256:d8f0d5c09580253ecdd6d6894ff112b2b760683ff2a74585e5189f2578728ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.5 MB (320462817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7774afa8fa5ea5aedfbfdfd3684d130a9c824508cfc0d373e7c3eaa8b546af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:43:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5169cf74e23b4eb5efada4feddccfe1372ad72000179e789555e16a4739b3cfa`  
		Last Modified: Tue, 30 Jun 2026 23:43:47 GMT  
		Size: 290.7 MB (290677398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:cb3cc9dca8bb10018f9053aabc7314ee70b8044349044bb0f1a93feeb7d01690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4180813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd95d495aff47b22e1b29309b7dea7fa7b32f1d4ab805b8985e4060643a34e80`

```dockerfile
```

-	Layers:
	-	`sha256:1d3e799027176ce724c193484b07272e9e43fcd07143f6a96e137783a89ff441`  
		Last Modified: Tue, 30 Jun 2026 23:43:41 GMT  
		Size: 4.2 MB (4165181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b332e57a057c6fbd37127e9e26a17e45504d8e6a42b91304fab1f0187744128f`  
		Last Modified: Tue, 30 Jun 2026 23:43:40 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:d8bbece1bbb94edc50dd3aaebd6db6906a8708406cae246336a2a6d5d982d5b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 MB (334306918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a44f63b86e6d2df4306e3c141aca74d706a09cd362fcaaee6056f1bcb440374`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:17 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbed8fc27cc2e57aa37e54edccbeca68ab0064fdb2e220aa86d6539f843f6dca`  
		Last Modified: Tue, 30 Jun 2026 23:37:00 GMT  
		Size: 308.1 MB (308095867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:31288bbc0bd624f9ef9a075839e6b56bfc962b85df14158d642867a25409aa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7235ade987dfe21348a579741ba48e27e3c87b39218e0ae1a249c710a22287f`

```dockerfile
```

-	Layers:
	-	`sha256:0b08f54c46e1bb018fa82f3bed76118b02519ca2abf88b8fee7cdc9109613a96`  
		Last Modified: Tue, 30 Jun 2026 23:36:54 GMT  
		Size: 4.0 MB (3970057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c2d74cdbb5e81c47df6fcdcf0506dc3e529cf120768dbd5a739223bfddda24`  
		Last Modified: Tue, 30 Jun 2026 23:36:53 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bfa306c18b2e778a21782d0ac2f1ae7442c6261409bfff086867a736396cafe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280037021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d0599a9e72e980be6e5e2c8f5b7bd4527ee7cae3dc9cb856b6f3bcb78fe5bb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:41:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06f4d21cd23f8b3b2051580f857db82c3ecc0344a1dd61937b45c6e0136596a`  
		Last Modified: Tue, 30 Jun 2026 23:41:40 GMT  
		Size: 249.9 MB (249888470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:580c5e9ae884d53f62947e73dccbe2755d928ce5015b17ed6058f32051eeaed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28ca1537d64fbb42b753bbca060bd3af72d8a8ea79e215639fb408ea14a80ec`

```dockerfile
```

-	Layers:
	-	`sha256:ad14d04f4f25022fb981e732a582a7bea9db76ca62a17f8cc280d829acb283f5`  
		Last Modified: Tue, 30 Jun 2026 23:41:35 GMT  
		Size: 4.3 MB (4256389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfbeb26bafa5a931c4a905890c97fc5e2af63c967676d1544be8ef0ac611c843`  
		Last Modified: Tue, 30 Jun 2026 23:41:34 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:2e9387cd3957094ac433d5195fa8b3303a927b776c55a5616556ade166126666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345268333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5695d4ee44f7c9e67d9aedd34783f715caaa68496705cd22e0f1dc970a240e8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:21 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:21 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:21 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e39aa2cb81cc9de4f8e8a62a93e0424a9cf059df3a61fe8c6997709aafe8c8`  
		Last Modified: Tue, 30 Jun 2026 23:37:10 GMT  
		Size: 314.0 MB (313967123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:f411c5f9ae123b68e5900939df2f83f8ea2f6a66092e64ed170a7bebd31549e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652dcff9f53175950374a6cf80cdc09a14c6d2cee0fbc374b9c787ad54c40e4e`

```dockerfile
```

-	Layers:
	-	`sha256:68c0104fc98af4a0baa5a7886a29adef44730b841731045adb6654933d1ec1ef`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 4.1 MB (4138694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ffa2f2236a1926b38bfccc2311a4f3c1e6ec7fa80c4b09b937e1e5a935a7b5`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:6cccfaff8b5e435353bdd1584bb779cc3462a7e6ebf0310f9e3a91f511516cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.8 MB (394794662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9808328e9d7a7086a80ad49829787737640cd8f9c6a5b027f8471db9f8c39e0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:45:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:45:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:45:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a1b9586b8df8c7b48a10cb239c8dc121612c6b2334ede9029441341a3a1aeb`  
		Last Modified: Tue, 30 Jun 2026 23:46:42 GMT  
		Size: 361.2 MB (361188274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7b3da06d488d047d5f5ccf6310847d0cb4cc3e74c30264da20feeb30af356a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27a004bd43a0b0db613494e459ae5ad050b9cdd7f74b088f8d9ec7005e09cdf`

```dockerfile
```

-	Layers:
	-	`sha256:871b5e01a06417652ce71f8fc2e4801fcf5e89353dfbbfa8de5309f4e86c7f0c`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 4.2 MB (4161642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e425d7e83750e5382336978b8f35be6d832a2217ff61a8e1c0279ed4ffab833`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:6de76d48bfa215d4acfafe83b3a995c541169c07e58f0875df3011be1654907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.6 MB (390622308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2aa4ab7fac655f70dbabe7b479a77fc1422e1d7ec52f5b7ecb9da60d08ffdd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 01 Jul 2026 00:08:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 01 Jul 2026 00:08:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Wed, 01 Jul 2026 00:08:50 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741b3e17a86e6fc7485362d4b2330dd099ace7baef05c6ee938ab23b69df819d`  
		Last Modified: Wed, 01 Jul 2026 00:20:19 GMT  
		Size: 362.3 MB (362339930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:86d7753e8cfc6e83ce8cda22a09ba52bd57d667dc289be1f0f2151b92bfd3fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4255299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154d9138453eb7cf2ddc62d93359648e55e7e0b00b346f50ab392f7e2ccc35a9`

```dockerfile
```

-	Layers:
	-	`sha256:1f775781ebbe44e5272f2cd49401babaee6f32315b81861d38525d178127b35e`  
		Last Modified: Wed, 01 Jul 2026 00:19:15 GMT  
		Size: 4.2 MB (4239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65854b22ee921bfff704d344af5be5b90a6df3af462e8793572ad096ab3555b0`  
		Last Modified: Wed, 01 Jul 2026 00:19:13 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:6d030b3966486a507584fe3ca14771a3671616a56b00d579d5c4ae174168c719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.5 MB (377522130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa078bd7e0a1077a2ef029e95ad87a41169ca69d70e54a22ed7fdedb248a4427`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:33:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:33:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:33:02 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a217a5960c58b3cfbf8274a06f1dd8394cdac82fe111339631190c625224dc`  
		Last Modified: Tue, 30 Jun 2026 23:34:11 GMT  
		Size: 347.7 MB (347670749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:e321d4f9eeef3ee561a68964bbaaef56f138e78113ec6715cae03d768a156d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3998562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ac54263bcb8c912f1564455b0d90250a6f53da98b84ce1afd13de0e51b25a5`

```dockerfile
```

-	Layers:
	-	`sha256:98c8714b9945a7008c62559d08ecb9f78776eb2c5cb86f3e92620295c54bf7b1`  
		Last Modified: Tue, 30 Jun 2026 23:34:05 GMT  
		Size: 4.0 MB (3982929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a10e0ec21d242417fdb7ead873cb4e93ddcd432584200c2d1b148868c1463b6`  
		Last Modified: Tue, 30 Jun 2026 23:34:04 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-trixie`

```console
$ docker pull rust@sha256:1f0dbad1df66647807e6952d1db85d0b2bda7606cb2139d82517e4f009967376
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
$ docker pull rust@sha256:897292968f3e2c7aaba68bf8e6239b61994a8adbdd09e49bd866b69822b98af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.2 MB (594233199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b053325bdcbf2850bdc9b030b14b7fb90a06b55c1f5d2c68472a26c03b7431`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:42:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0252e6abaf0ff12562710faa97dc617e372a424bf144947f39dcb38700423e9f`  
		Last Modified: Wed, 24 Jun 2026 03:18:31 GMT  
		Size: 236.2 MB (236248824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc49ee9b89969feddc8aa9c2cf6d31259a1f342cfd1fcc6994549e54aa9f1be`  
		Last Modified: Tue, 30 Jun 2026 23:43:14 GMT  
		Size: 215.3 MB (215254048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:93e7c2a35a703cdde12cfcdf761f31c6bd589ef852e8740b63b19c2d84a44090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45bb6a3be29e7025e643971924fa6c505008921670eef1c0bf86eb1721d994b`

```dockerfile
```

-	Layers:
	-	`sha256:429cc57424c27f25065c931373e8700b840f0e0e1c9f32326d495aca7411d391`  
		Last Modified: Tue, 30 Jun 2026 23:43:09 GMT  
		Size: 17.2 MB (17206481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14745203cfed0c7b0fbbe25c2828940b02e489e1e9d429fb5fe731de13ae289c`  
		Last Modified: Tue, 30 Jun 2026 23:43:08 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:bdc1b5fcb37c10310a5844d5c6f3c9df256d647bd5c1b6027bbe36e821125d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.5 MB (583476715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b280c7920655c34cd4334e8e02c7c5651679277bf85ae8a9fa817d744213a1d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:25:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:55:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6ec13525e08787ad79558c5631e8f1a1fa24a87872974d31cec094e902b73822`  
		Last Modified: Wed, 24 Jun 2026 00:28:39 GMT  
		Size: 45.7 MB (45748717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5391dda58327007b323e3f3d892147e59e5e36215f08b370a235cf10aaf0a`  
		Last Modified: Wed, 24 Jun 2026 02:25:20 GMT  
		Size: 23.6 MB (23635872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0beb5aedec8fb711aa9d2285593f5263bc56957c577c835eda5256d1d6cc6`  
		Last Modified: Wed, 24 Jun 2026 03:55:30 GMT  
		Size: 62.7 MB (62746374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81014ff6d39652608f3ee3bca486e5b5f5c50c1757e0aafe38294d09eda10abd`  
		Last Modified: Wed, 24 Jun 2026 04:18:44 GMT  
		Size: 193.5 MB (193514005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba69b34e04b8afa5eafb637ed0ccef1c4122086be3ab9b43143a87978ca13c6`  
		Last Modified: Tue, 30 Jun 2026 23:36:23 GMT  
		Size: 257.8 MB (257831747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5f97424319e880128282d509507174ec9aed3c7c5e56da6f316ac16d55ca07a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768784e85d2f0742810e3987af89da11119303591e256b4a3d93b1aaae1d408f`

```dockerfile
```

-	Layers:
	-	`sha256:1eeb0033dc66811baed0ea0dded58909e0729074c77ce798910b035533c6edb1`  
		Last Modified: Tue, 30 Jun 2026 23:36:19 GMT  
		Size: 17.0 MB (16974519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:330ea69940dd7c904be9431f97b4f304f1b23628601e0b27a0c5034277f3dac2`  
		Last Modified: Tue, 30 Jun 2026 23:36:18 GMT  
		Size: 15.5 KB (15508 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a5f124a141e54e2527df4defa1631f8f878b48f7e818b203c30e27a50c513a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.9 MB (548867888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14955d2873d61e78c7e98d7c4dad1d10d1fc92cde2ba40df106a94c183e66be6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:40:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646ad84cb24eb29e047f2b410af92e39c7ab4bd62a2d2ab0a6ff6a0ef84ba33`  
		Last Modified: Wed, 24 Jun 2026 03:18:10 GMT  
		Size: 226.4 MB (226363204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d279118456a88ddeef77741a5a0296f92edd6f73c67dfa2ab638f0a217ab2003`  
		Last Modified: Tue, 30 Jun 2026 23:41:17 GMT  
		Size: 180.2 MB (180206781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:cdb10a2fe7b464561722a115633ab21b356a4f9c0d7ada17389a81155dfff793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06aea1c7cdf21f5d389553e4070d649da72a7801746536c208286298d2344520`

```dockerfile
```

-	Layers:
	-	`sha256:4189cea91b89dbf3bbec6779e85885c3e88a93ee268bf0793e9a4f04824ec3d3`  
		Last Modified: Tue, 30 Jun 2026 23:41:13 GMT  
		Size: 17.3 MB (17290200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24d3dbfeee36b815c6e994e25cb10dedea82235cc57afa7040091698a7dce86b`  
		Last Modified: Tue, 30 Jun 2026 23:41:12 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; 386

```console
$ docker pull rust@sha256:4c00964120be4fd18d36a85fce82872329a7fe48e2cc14d5ee8556bc4e3cce56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.3 MB (629274575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38af10dfb6adce189ec7aa6871310f765f2bf6feea7d35fd2c9458e4d953de0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:27 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429f3d50e84943497f0eadc90e14107210f6f5e2fba29257d54a1c7858400bdf`  
		Last Modified: Wed, 24 Jun 2026 01:44:16 GMT  
		Size: 26.8 MB (26797404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296cd1d205c61c3d8ebf0c638f588eaec576bb036a91f5b50f8b6183fc3010e8`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 69.8 MB (69817498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6e82ba1179651cb39d5405dee0f1cffd2cdb6f76d07dbb5eec6979464f01c0`  
		Last Modified: Wed, 24 Jun 2026 03:18:40 GMT  
		Size: 240.4 MB (240351717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108a325eb114922c90f4c1b92395c087293745faa6c9873a6bae91eb6c3a9e46`  
		Last Modified: Tue, 30 Jun 2026 23:36:15 GMT  
		Size: 241.5 MB (241472301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:481a426fdcf86a10a731985d2f5940fc44fb0dce68ace91ebc098a440fb6821a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17190096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9865dba149b45ffe7f7ddce8e00377e054ad2e840d8919cd64181460db63079c`

```dockerfile
```

-	Layers:
	-	`sha256:a225faa709ce59802b598e9dffe9ef52c01c88a57e600070f5285a68a57ed6fc`  
		Last Modified: Tue, 30 Jun 2026 23:36:10 GMT  
		Size: 17.2 MB (17174752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7e5d2427931f5e7569c88bde283e9648195ff83666f32873ccf006f14d4f49`  
		Last Modified: Tue, 30 Jun 2026 23:36:09 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:6c3e213557fed69cdbb085460f4211b643acd308e058758290dda567f7175b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.9 MB (678902914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307061aa6d25e90cce41adec5f008fc9d1d9f70b345d9fbb65a2271d49ad2ac3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:42:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:44:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:44:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:44:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6b290a040690185dcb63185c594c9a890b9bb513b83a709420a3abd8f7b678`  
		Last Modified: Wed, 24 Jun 2026 11:43:40 GMT  
		Size: 231.4 MB (231374483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f7cb5946d46a47c677d5ef2e71a7d0225512495d812461e965db46840d1b8a`  
		Last Modified: Tue, 30 Jun 2026 23:46:19 GMT  
		Size: 294.3 MB (294325603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:29491e61f8b3d0f0968d37c5ce14003d9fe42ca9ac99a371ecb238d7fa010b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5604ac607c046c5a8620893809ab50695e79be2942277f2ca09ee90f8192552`

```dockerfile
```

-	Layers:
	-	`sha256:09d77f335786e4b6bc8bee679ece598720dc42ddc7d4104076dc62b7c40183b4`  
		Last Modified: Tue, 30 Jun 2026 23:46:13 GMT  
		Size: 17.2 MB (17192058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3633ac6fd0d6bbdec3715466f90812addb20a01dcad2cc7ef77c47a782d06f3`  
		Last Modified: Tue, 30 Jun 2026 23:46:12 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:00755eb6a8fcc675a1d1707d2dcf3cb1de988b29899bdce7e677d56847969acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **731.1 MB (731105672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bad2bd6682650eda11ed05cb11247103a13f11697fb7a10d6155653cc8fa07`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 16:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:50:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:50:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:50:45 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8297be2994f3c17113807c9b0aaadf1cd94ee74872bd4fcbcef79f2a21f4fd9`  
		Last Modified: Mon, 29 Jun 2026 16:36:45 GMT  
		Size: 323.2 MB (323188888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88db8447ee10671d01ca0e91e4d0248ed08d5e32118112ad7e0581c3e866f6e`  
		Last Modified: Wed, 01 Jul 2026 00:05:18 GMT  
		Size: 268.5 MB (268471925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:0c152575f35afd594fa5f34a05be40f53bc303f0af889445a1c46211db6fad93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46381de298b5d040f14b43476db1450d3fe0b8fd37dda86db24b12da27d91340`

```dockerfile
```

-	Layers:
	-	`sha256:8fa68cbcfab7685cc4b7a26cf35358b275a4a40a939f0ef0e703ba1cbdff76ca`  
		Last Modified: Wed, 01 Jul 2026 00:04:39 GMT  
		Size: 17.3 MB (17262697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e549ea23def2680a385deff187093063d823d2a48b019088023f93c7df32a58e`  
		Last Modified: Wed, 01 Jul 2026 00:04:34 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; s390x

```console
$ docker pull rust@sha256:e2d9723122d97ab5d15a6613bbfb56bc83f9ef167f5ad2f5cba181b040f8f28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.9 MB (646880478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8fbfa176b7e92c5832a65f1bd2515f764a5cf5631d7ed0880b9e42b58a4dae`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 05:17:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:32:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26ad8b668881e5b88baa7f13010c93f1bce4021cd7e873db608fc3d64c83f78`  
		Last Modified: Wed, 24 Jun 2026 02:46:45 GMT  
		Size: 26.8 MB (26803945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467c361ab8894fdba8935a4c045eb8f691562f8d8866636ae12b0e066b40329`  
		Last Modified: Wed, 24 Jun 2026 04:30:46 GMT  
		Size: 68.6 MB (68645672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fffb153b40577970ef862743ac9f3be7998a409d21a818e83c91335b8440e1`  
		Last Modified: Wed, 24 Jun 2026 05:18:51 GMT  
		Size: 206.7 MB (206745343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7b3b363f51dd5e41ffcde36003e19b3096b7f451e47d84ed9fbb739b7ae58d`  
		Last Modified: Tue, 30 Jun 2026 23:34:14 GMT  
		Size: 295.3 MB (295299458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:3f71bee2acfbea705d9fcef71116d85cc77f45c29c61803d78afe622859f424b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1e450b2708a0a5652eb081049f8a497b4d83bfae45f859837ee97e6b47a23c`

```dockerfile
```

-	Layers:
	-	`sha256:a304c9389109840d9bd3d23640633c932ee992b35dac297e6d0306cfabb23881`  
		Last Modified: Tue, 30 Jun 2026 23:34:08 GMT  
		Size: 17.0 MB (16983712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30d1b82dbc0c71a0a08bd671b650ecd631c7b8d6a465660f31b440e671e1ccee`  
		Last Modified: Tue, 30 Jun 2026 23:34:07 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.97`

**does not exist** (yet?)

## `rust:1.97-alpine`

**does not exist** (yet?)

## `rust:1.97-alpine3.21`

**does not exist** (yet?)

## `rust:1.97-alpine3.22`

**does not exist** (yet?)

## `rust:1.97-alpine3.23`

**does not exist** (yet?)

## `rust:1.97-alpine3.24`

**does not exist** (yet?)

## `rust:1.97-bookworm`

**does not exist** (yet?)

## `rust:1.97-bullseye`

**does not exist** (yet?)

## `rust:1.97-slim`

**does not exist** (yet?)

## `rust:1.97-slim-bookworm`

**does not exist** (yet?)

## `rust:1.97-slim-bullseye`

**does not exist** (yet?)

## `rust:1.97-slim-trixie`

**does not exist** (yet?)

## `rust:1.97-trixie`

**does not exist** (yet?)

## `rust:1.97.0`

**does not exist** (yet?)

## `rust:1.97.0-alpine`

**does not exist** (yet?)

## `rust:1.97.0-alpine3.21`

**does not exist** (yet?)

## `rust:1.97.0-alpine3.22`

**does not exist** (yet?)

## `rust:1.97.0-alpine3.23`

**does not exist** (yet?)

## `rust:1.97.0-alpine3.24`

**does not exist** (yet?)

## `rust:1.97.0-bookworm`

**does not exist** (yet?)

## `rust:1.97.0-bullseye`

**does not exist** (yet?)

## `rust:1.97.0-slim`

**does not exist** (yet?)

## `rust:1.97.0-slim-bookworm`

**does not exist** (yet?)

## `rust:1.97.0-slim-bullseye`

**does not exist** (yet?)

## `rust:1.97.0-slim-trixie`

**does not exist** (yet?)

## `rust:1.97.0-trixie`

**does not exist** (yet?)

## `rust:alpine`

```console
$ docker pull rust@sha256:a41f7740f8b45d45795624eec13a8b42263cc700f19f7e4e86e04d3dda08a479
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
$ docker pull rust@sha256:f5c84c3751de59f0f318acfbed8b2d04693a12d9171f15835d9c11c9ddcf52db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349455443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be1484b093e4b27fa7de92c29073126617f6a72d428586fe4b782a6e21dccdd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:40 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b9a4131e96b01688c4e6fd3400fd8ec85f23f1cb606d1b92364345a6b96764`  
		Last Modified: Tue, 30 Jun 2026 23:44:34 GMT  
		Size: 75.1 MB (75079295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43c54cb9b8ea310a3730234455f912038e9194b4bce20da9e9f9448e2d9eb42`  
		Last Modified: Tue, 30 Jun 2026 23:44:38 GMT  
		Size: 270.5 MB (270529757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:3dd723e42e6af08c5dcfb40433f2a58f4411c15bb7cb79ded382be29a38b20c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed7c7e96ffa1ea7014399a702938a07dd185a692928f13cf7b2e1b2136e2097`

```dockerfile
```

-	Layers:
	-	`sha256:4f80505f251702d1930721db6ad88480158d927e3891c690b982336cfca297b7`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 990.5 KB (990501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbd4740e108a6e36df2b81a7c549ebd1100e4af96ca70aeae1649c954960226`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 13.4 KB (13388 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:ccba3c5d98fc76a5ac6eade9bcbbb946635657457c3d269982396633a66da08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345077547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd3d45841e4e3dc66a46f939ce846575a08024b3af496986e404112a47e7051`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:10 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538661f218cd4e60de084491e8e3a35de6a046b1bf6629a2cfcd7e071a475733`  
		Last Modified: Tue, 30 Jun 2026 23:42:03 GMT  
		Size: 66.5 MB (66507131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5d354fe3e18cefa9d6abb58dbd1ee8b94e686655bc442974054ad13f931ec4`  
		Last Modified: Tue, 30 Jun 2026 23:42:08 GMT  
		Size: 274.4 MB (274387379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:f5abec2d2b9b8cf81fe03f9d842839bf846720844d2893c1f1dc9496b4fe871f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1063011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed991754e793a88e038ca5715b9d55f306c11173b10ac856b93260d8079429e`

```dockerfile
```

-	Layers:
	-	`sha256:c9bfc4f94fb748a26fd763c53b5e0dabd4ec59c9e7d8faffe6e211b9f0f3be2b`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 1.0 MB (1049454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d51ad22e1685e782f46c191678357cce2ea818aa2ed540f42d43a33aecc573e`  
		Last Modified: Tue, 30 Jun 2026 23:41:59 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:4140e5804a1f62768698069c2132af1cd6b2396f73801132a2e14b6739bc886e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363644421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b07d4ced549c71179c5957900257e588cca0d3638f1cb40d88547762c01fcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:49:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:49:03 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:49:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:49:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62da8e3dccbc51c69986848041d9e9ae77da645be996989fed8e9cca52cdc69c`  
		Last Modified: Tue, 30 Jun 2026 23:50:34 GMT  
		Size: 66.4 MB (66394546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a83b12f2bec426b14c69a573217921b8544047753ecf84ccce093456ea3f046`  
		Last Modified: Tue, 30 Jun 2026 23:50:38 GMT  
		Size: 293.4 MB (293436475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:c79ef3fe7e8b5d73feaf84c1104cb14100c0e13b2444f4c3ed952b649e12552f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f992c1703b33a154de6dcc47951553e902cec4612190df5d07a4114d8e2834`

```dockerfile
```

-	Layers:
	-	`sha256:b791b0a4ac011c8f09e1fcead5e43569e035503ba000deb161ddf7440e30854f`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dbe751a497ee8bf364f0dd4ab26601a917239c51ee804e9d7d1abf385f5fa63`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.21`

```console
$ docker pull rust@sha256:bdd51fa1f2ff1b9accee5224246e39f4817228ee1c20e335635e8e55badec324
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
$ docker pull rust@sha256:138d97c279ad440ac738f2d21d955d4d7301c68574742ef27a8e0265db5fa038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339205399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fade43faf35675821a6105724d6af6e75429028bd8afa5d693cb880d3b1e6528`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:30 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:30 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:49 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15c387f739445af4a538b39f85c9a8b306c9552db06af7d7bc14fe04de2f1a2`  
		Last Modified: Tue, 30 Jun 2026 23:44:29 GMT  
		Size: 65.0 MB (65028721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09161f1ca7cc3f589e76dbb84d09b82c14d5d31d62bd2f754f3d9d541f4c9bb`  
		Last Modified: Tue, 30 Jun 2026 23:44:33 GMT  
		Size: 270.5 MB (270529803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:4aeb6ea4a2ec5cc4d0dcdcde7f86387ba3b4f2615e69c5c11f3c8379df96d6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **973.0 KB (973035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b006475ebbc2c0222f8d7c96cb0a1be5a3ee1a96bb3e9cb023fba0b8dd905506`

```dockerfile
```

-	Layers:
	-	`sha256:b144cad7dd5b66ac0edc394abb14344a0a36f72a66ec904f79a79a9c6a9acdea`  
		Last Modified: Tue, 30 Jun 2026 23:44:26 GMT  
		Size: 960.8 KB (960849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23f9cca1adc4a813dd10874b3699000fa1da383f624979f031fbbd7d61f812b0`  
		Last Modified: Tue, 30 Jun 2026 23:44:26 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e43795e70a61d90a365422a2caaa2523e36c0ee17e2bdb947ebac8852259c10d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.1 MB (340082104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0237c1eadb3e068c6a0168d866eb1bcb56016b26adbef5da799ebc3f07a2ba1f`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:13 GMT
ADD alpine-minirootfs-3.21.7-aarch64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:13 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:48 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:02 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2dd7199cff98a7400e801cbfad6de906972a4e3dd0a749d4c1b80f5a1e3e4108`  
		Last Modified: Thu, 16 Apr 2026 05:32:50 GMT  
		Size: 4.0 MB (3994465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6e446fc5543c05c8e67db707e7961d2605a06d77075e530e8527ef7b00a200`  
		Last Modified: Tue, 30 Jun 2026 23:42:40 GMT  
		Size: 61.7 MB (61700223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63875bd581d12fa423eac144a42c48a9964e49ddc616d03edec54b63920681de`  
		Last Modified: Tue, 30 Jun 2026 23:42:43 GMT  
		Size: 274.4 MB (274387416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:7c91fdf19310223f04e80926fbe96ed4866f3934e313e0697a23d1c1dd28c22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1052479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b46979ed91bdec6714a215cecbd40cc04d7835c542c7905200fdb23c06a6c0`

```dockerfile
```

-	Layers:
	-	`sha256:0505aab31f67fdbcea04491186733493f043d7698175c896c8e0001b208f403f`  
		Last Modified: Tue, 30 Jun 2026 23:42:37 GMT  
		Size: 1.0 MB (1040175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e28f28e019b67e641f4173a32b86d77ca27e8d1a87acd0862a3e56069ff8fd9`  
		Last Modified: Tue, 30 Jun 2026 23:42:37 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:9b2fe155572da4ae6a9a69b2c4cf2c96e5c0410c4dcb7a9addb69428afd5fd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.5 MB (358527711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9313226ecc03e77d96c99ad1ece37f38e3319f8b9be12cd15840d132d9d3ded2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 17 Apr 2026 00:00:31 GMT
ADD alpine-minirootfs-3.21.7-ppc64le.tar.gz / # buildkit
# Fri, 17 Apr 2026 00:00:31 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:46:39 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:46:39 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:46:39 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:46:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fe51ead1f71865857c2c015e74518a0be9e72c6a70a845d843f7dd0cd2ee6e2e`  
		Last Modified: Fri, 17 Apr 2026 00:00:41 GMT  
		Size: 3.6 MB (3578920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421da62b2f652ea46b355c8ac0e33872ceaa7128513aa1ced01021f6356e1db7`  
		Last Modified: Tue, 30 Jun 2026 23:48:11 GMT  
		Size: 61.5 MB (61512260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902357bb24da9a937516b79d1492b548f83aac12f08437e9d77ec1058bd025a5`  
		Last Modified: Tue, 30 Jun 2026 23:48:16 GMT  
		Size: 293.4 MB (293436531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:b8b1b7af7110113b6511d023e9f1d34e169d67d46106ea1759b291eefeb79de5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **985.6 KB (985625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e397eae4196b395184d340547c0277846581306ebc8aac1c095d1ed962cb20`

```dockerfile
```

-	Layers:
	-	`sha256:0c16b234330aabb2dd8ebc8a06f6e54246a26c752076f78e28d674878be2b200`  
		Last Modified: Tue, 30 Jun 2026 23:48:08 GMT  
		Size: 973.4 KB (973393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47a71d42d9bc8fdd870c2bd2ec268bafc5f21c96fc64d618486fce82c6b22b47`  
		Last Modified: Tue, 30 Jun 2026 23:48:08 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.22`

```console
$ docker pull rust@sha256:fa16d058a94f0f1cf86cbbbd181a2ea2a0001e1fba1e93c366821a58f3e6c8a1
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
$ docker pull rust@sha256:8b5aee3b8fb41756d8447a47f96edc87a21f1e0c2b5ad2f3059542637d6c9b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339354577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47642e1259584d131aa2fb81b4d0090a7332f7ac4b564af0a41b53d0f5d3da10`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:04 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5f57d73b85dc79de4c10db12a401a0405464fbdd4f54354d987ae7a14a5de3`  
		Last Modified: Tue, 30 Jun 2026 23:44:03 GMT  
		Size: 65.0 MB (65037685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d5d4de8d61f8e743150c006aa23ef8518f63409f4948bd35b7c4314c07711b`  
		Last Modified: Tue, 30 Jun 2026 23:44:07 GMT  
		Size: 270.5 MB (270529297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:72c978925b3eba9fa7f8674613b056c5e52d61f8b3580642e66dd118b5275cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.9 KB (956923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e54c1e0e2c4eab0aa1b0eabbd423b938c3554a739f39fde750ce4f9cc071262`

```dockerfile
```

-	Layers:
	-	`sha256:9f0d26f2f1990fb5bbad5b904606ee9fc8b1e9fa9ef5d9c634ebd41b93238d04`  
		Last Modified: Tue, 30 Jun 2026 23:43:59 GMT  
		Size: 944.7 KB (944737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19da99927c8bea0963db258cf34823166e50ed3f9e7a53e8df8c5a446d8bc78e`  
		Last Modified: Tue, 30 Jun 2026 23:43:59 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:48a6b2b25ee4940672e3d178c73a07ddd7de54358a52ad5ddf4ffbec390f888f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340221057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6abd980fee62a21f48e66f5a2d39b7294bd1a804ee7cfb2c8a4752a2c51f11fd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:12 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:26 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610525cb754ed0590f9fff1f1c31bc9d8f2ff94be998ac3707995ee78fd9db07`  
		Last Modified: Tue, 30 Jun 2026 23:42:03 GMT  
		Size: 61.7 MB (61713175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c41552b3cad42b6b596ebee759906ccc6883134d705c89d5447e8f92374f33`  
		Last Modified: Tue, 30 Jun 2026 23:42:08 GMT  
		Size: 274.4 MB (274387396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:c8f66933cfc326aee2ced414b3eff55939ac22a52a6a928a99fa7584570b0fe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7e81494908e8c40e6a3ce6efed7f75d3b739dd70d8cf2cef4e9b13ebe379cb`

```dockerfile
```

-	Layers:
	-	`sha256:8d8a934c817525542e80c35abcb8a37b8fa60fcc70511b660b94e886c9b93067`  
		Last Modified: Tue, 30 Jun 2026 23:42:01 GMT  
		Size: 1.0 MB (1024063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac098e5dfe502a289eaef6753a39e9673212367f0bef6d498eaab540757c08d3`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:c9d52959b798b3882b9c097ccf510fda5ad6cb6c3c6c230032026d4948ea038d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.7 MB (358674151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a337c090769a98238dde3e7e2a9e40ba96dd5b8f9bc00100a4e31c4399118eca`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.22.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:47:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:47:04 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:47:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:47:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9cefbc3ea4c22353ee0ff5d3bed351562709ff27de0432db57d479a5f81bb73a`  
		Last Modified: Mon, 22 Jun 2026 12:03:29 GMT  
		Size: 3.7 MB (3719232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f4e8a2d47b12c8068b87265b2bea3fbeb0e94e1364ff1ec1fed936b57ae3d8`  
		Last Modified: Tue, 30 Jun 2026 23:48:35 GMT  
		Size: 61.5 MB (61518385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34db11dec3ca468dbc6ce74a694ab98a9984bf4ac5957429795bdf225942cb5`  
		Last Modified: Tue, 30 Jun 2026 23:48:39 GMT  
		Size: 293.4 MB (293436534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:ac02b9fa594ed9f7034410979403f7643736ffd774038a4c6ab67be18089abb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b25d1a13d5a2d1a3f04b79e2b6ab3e22646dcdd9c0980f10e93ef1d54166471`

```dockerfile
```

-	Layers:
	-	`sha256:27070b5c5d419d859588c8580c6c63ab07d51a81fedba59732f61d5be80f5de6`  
		Last Modified: Tue, 30 Jun 2026 23:48:33 GMT  
		Size: 957.3 KB (957281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6e62399bcf53b34cbdd767182cfc22d1cae418d6ba97c5fc27ad45138d5569c`  
		Last Modified: Tue, 30 Jun 2026 23:48:32 GMT  
		Size: 12.2 KB (12230 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.23`

```console
$ docker pull rust@sha256:14b9b5f47dcc6644d0f0c1b35a2c2c5d0124f67159aaee28a348627523459b55
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
$ docker pull rust@sha256:addffc00fc29651ab600b411be00775753252125b017a92513f76ca12c0b9624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.4 MB (349440860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4650a3742549ca0501aa1e4156ddb05f620330240a531f8c434c1a3fdb1f4ce`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35681aa166ddb968c12a105f82e8f146bc28953236a49f5abff7fe2e950ddb6a`  
		Last Modified: Tue, 30 Jun 2026 23:44:38 GMT  
		Size: 75.1 MB (75066624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47babbed243d5495ea144b6f0cccc187e862ef0a818211ca63b221e31c58711c`  
		Last Modified: Tue, 30 Jun 2026 23:44:42 GMT  
		Size: 270.5 MB (270529815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:459cf7a45621dbb1a5953326eb83449c345f1c19743d11bf5b89341575082208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1000.5 KB (1000550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e47557dd342a2d05052645627d5fe0a974c998f2bdb3a706996d02e10cb7a17`

```dockerfile
```

-	Layers:
	-	`sha256:2870097f15500aa0c4d0b65e66ba6580b8443400e1f4ada03e3826989475e915`  
		Last Modified: Tue, 30 Jun 2026 23:44:35 GMT  
		Size: 988.4 KB (988364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f92180ac36a238e93f9a80de2a1684a5e59f4e1b841d82e5797f3db0af31c8f`  
		Last Modified: Tue, 30 Jun 2026 23:44:35 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b38e527af9cd485d62885dcf64a7842e8d127e94d8b43fa6dc67347675a94d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345062288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538ba2d6cbea49494bebcdf22f30d05042234ca90bec514343268858f57b7c54`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:26 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acab90dd04abbcc6f19c5159e47037a20695133fc287933b431fa81ab12d38c`  
		Last Modified: Tue, 30 Jun 2026 23:42:04 GMT  
		Size: 66.5 MB (66493005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e88dd3f2644e1dc33d0cccd8c425a8ac3eee4104753bdc925bf6cf84b23a33`  
		Last Modified: Tue, 30 Jun 2026 23:42:07 GMT  
		Size: 274.4 MB (274387423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:29f4f40867bb142b3e31bd5fd3b0b85cc53148a083b4a1d5aa768a0023e53735
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1059680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa25b8c005010d764c45c4f6469a8d51953dfdad144a1daabd65e28fbac9206e`

```dockerfile
```

-	Layers:
	-	`sha256:eb83a37eabd331d370b3962fa5139326d3029ca59306112f6f9331631d571198`  
		Last Modified: Tue, 30 Jun 2026 23:42:01 GMT  
		Size: 1.0 MB (1047375 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad8cff0c17577d73de4fb62d3f7aca3d949b59c1d585083943cb5092bf840ca1`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:4620fb49410d4d5fbb176f8f33040c76e1c3faf0e1fc2f2b29eb37ce932b4435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363623289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7b68ba083548b8e8edb5d6fcc58df9c02a22dc0ce139a5e4e4b98a33d32043`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:48:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:48:34 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:48:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:48:52 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488209299366ce8085ef0275c2af8ef458cce94116b41960ddabac9037b4f29e`  
		Last Modified: Tue, 30 Jun 2026 23:50:07 GMT  
		Size: 66.4 MB (66374525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eab5ebd5143fbfbdf9a084b9416a27c88ac77255a12144ca894beef0325a094`  
		Last Modified: Tue, 30 Jun 2026 23:50:11 GMT  
		Size: 293.4 MB (293436465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:3b07d5b79c0876dc7b23c4232f53bd5a5592a98a657e62c635b5d83e82696322
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74934d28d52cddf55738cf980ed3fc71c0aea07c3433df129856c50bf67ad8df`

```dockerfile
```

-	Layers:
	-	`sha256:31cab00042815a6a7b6e54bc188f20e2fe028e46d39d93088bec9711df8e896e`  
		Last Modified: Tue, 30 Jun 2026 23:50:04 GMT  
		Size: 980.7 KB (980686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa1a91e60dc8f3bef3d82ec42e5fd561d6dfa80bafab22a06809052f1a54f298`  
		Last Modified: Tue, 30 Jun 2026 23:50:04 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.24`

```console
$ docker pull rust@sha256:a41f7740f8b45d45795624eec13a8b42263cc700f19f7e4e86e04d3dda08a479
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
$ docker pull rust@sha256:f5c84c3751de59f0f318acfbed8b2d04693a12d9171f15835d9c11c9ddcf52db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349455443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be1484b093e4b27fa7de92c29073126617f6a72d428586fe4b782a6e21dccdd`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:43:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:40 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:43:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:57 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b9a4131e96b01688c4e6fd3400fd8ec85f23f1cb606d1b92364345a6b96764`  
		Last Modified: Tue, 30 Jun 2026 23:44:34 GMT  
		Size: 75.1 MB (75079295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43c54cb9b8ea310a3730234455f912038e9194b4bce20da9e9f9448e2d9eb42`  
		Last Modified: Tue, 30 Jun 2026 23:44:38 GMT  
		Size: 270.5 MB (270529757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:3dd723e42e6af08c5dcfb40433f2a58f4411c15bb7cb79ded382be29a38b20c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ed7c7e96ffa1ea7014399a702938a07dd185a692928f13cf7b2e1b2136e2097`

```dockerfile
```

-	Layers:
	-	`sha256:4f80505f251702d1930721db6ad88480158d927e3891c690b982336cfca297b7`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 990.5 KB (990501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbbd4740e108a6e36df2b81a7c549ebd1100e4af96ca70aeae1649c954960226`  
		Last Modified: Tue, 30 Jun 2026 23:44:31 GMT  
		Size: 13.4 KB (13388 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:ccba3c5d98fc76a5ac6eade9bcbbb946635657457c3d269982396633a66da08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.1 MB (345077547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd3d45841e4e3dc66a46f939ce846575a08024b3af496986e404112a47e7051`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:41:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:10 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:41:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:24 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538661f218cd4e60de084491e8e3a35de6a046b1bf6629a2cfcd7e071a475733`  
		Last Modified: Tue, 30 Jun 2026 23:42:03 GMT  
		Size: 66.5 MB (66507131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5d354fe3e18cefa9d6abb58dbd1ee8b94e686655bc442974054ad13f931ec4`  
		Last Modified: Tue, 30 Jun 2026 23:42:08 GMT  
		Size: 274.4 MB (274387379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:f5abec2d2b9b8cf81fe03f9d842839bf846720844d2893c1f1dc9496b4fe871f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1063011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ed991754e793a88e038ca5715b9d55f306c11173b10ac856b93260d8079429e`

```dockerfile
```

-	Layers:
	-	`sha256:c9bfc4f94fb748a26fd763c53b5e0dabd4ec59c9e7d8faffe6e211b9f0f3be2b`  
		Last Modified: Tue, 30 Jun 2026 23:42:00 GMT  
		Size: 1.0 MB (1049454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d51ad22e1685e782f46c191678357cce2ea818aa2ed540f42d43a33aecc573e`  
		Last Modified: Tue, 30 Jun 2026 23:41:59 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:4140e5804a1f62768698069c2132af1cd6b2396f73801132a2e14b6739bc886e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363644421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b07d4ced549c71179c5957900257e588cca0d3638f1cb40d88547762c01fcc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 30 Jun 2026 23:49:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:49:03 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 30 Jun 2026 23:49:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:49:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='9cd3fda5fd293890e36ab271af6a786ee22084b5f6c2b83fd8323cec6f0992c1';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='88761caacddb92cd79b0b1f939f3990ba1997d701a38b3e8dd6746a562f2a759';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='e15d033af90b7a55d170aac2d82cc28ddd96dbfcdda7c6d4eb8cb064a99c4646';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62da8e3dccbc51c69986848041d9e9ae77da645be996989fed8e9cca52cdc69c`  
		Last Modified: Tue, 30 Jun 2026 23:50:34 GMT  
		Size: 66.4 MB (66394546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a83b12f2bec426b14c69a573217921b8544047753ecf84ccce093456ea3f046`  
		Last Modified: Tue, 30 Jun 2026 23:50:38 GMT  
		Size: 293.4 MB (293436475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:c79ef3fe7e8b5d73feaf84c1104cb14100c0e13b2444f4c3ed952b649e12552f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f992c1703b33a154de6dcc47951553e902cec4612190df5d07a4114d8e2834`

```dockerfile
```

-	Layers:
	-	`sha256:b791b0a4ac011c8f09e1fcead5e43569e035503ba000deb161ddf7440e30854f`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 982.7 KB (982741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dbe751a497ee8bf364f0dd4ab26601a917239c51ee804e9d7d1abf385f5fa63`  
		Last Modified: Tue, 30 Jun 2026 23:50:31 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:bookworm`

```console
$ docker pull rust@sha256:a339861ae23e9abb272cea45dfafde21760d2ce6577a70f8a926153677902663
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
	-	linux; s390x
	-	unknown; unknown

### `rust:bookworm` - linux; amd64

```console
$ docker pull rust@sha256:d99f7b31f49909348dc59b51f3c95d1efded1701ffb222f095aaab7de3c4abd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **563.8 MB (563806610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c395291aeff1aadcfe3f4cb4238a3ffd2e36388c74a4638febbe7688892fb8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:41:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:17:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:41:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fd7bf6f6036613e20f62549df75ed694b99118002358bea5a81baf3929d1ff`  
		Last Modified: Wed, 24 Jun 2026 01:41:33 GMT  
		Size: 24.0 MB (24044046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:791c68bc2063683c3d15907b8ed1b777cf14ca153c6f8e5b12db0868dfa7e38a`  
		Last Modified: Wed, 24 Jun 2026 02:28:33 GMT  
		Size: 64.4 MB (64404017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb598f63f1e9867f81313f86224109c84b2af9646d8fca29113217b94315956`  
		Last Modified: Wed, 24 Jun 2026 03:18:16 GMT  
		Size: 211.6 MB (211602331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0085f6fd51ee58df30ebdbdafea5daa893b49a5593c90327224e7bbc597138d`  
		Last Modified: Tue, 30 Jun 2026 23:42:33 GMT  
		Size: 215.3 MB (215254006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5bf78d50dae4cd5bb24c0c62c7a6be05efff738b8d383cd600d2de4fe3d4eebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15881870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d17acde4f27a19c63c021384d1171328626e5e80829d46ebef402c7ebed03b02`

```dockerfile
```

-	Layers:
	-	`sha256:dd0fcc69ca3f53465a28f028e7c9de725893672ec53d0b6c38c77d9eae1402e8`  
		Last Modified: Tue, 30 Jun 2026 23:42:29 GMT  
		Size: 15.9 MB (15868197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a761bb8aa2a65db3398802ee6618e51fc6ae9151f73c527915a2162f31ff665`  
		Last Modified: Tue, 30 Jun 2026 23:42:28 GMT  
		Size: 13.7 KB (13673 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:7113930bd9ec13edc2103de1c875f326b87a682eff63f3970968e2e6884afcf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.2 MB (559154492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3976e21b88ec976b34304121b809f1ea51ccd710143800bb673fa5fd1aaffbd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:22:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:17:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:35:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:13 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3622debffba3838b917703fb6dd9c161a4d93d9fd97c61d3e8400a2245f93c67`  
		Last Modified: Wed, 24 Jun 2026 00:27:30 GMT  
		Size: 44.2 MB (44208145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0df8de55f365d832099cabf27409104999d59b26292d91202ca6e160c4b513`  
		Last Modified: Wed, 24 Jun 2026 02:22:52 GMT  
		Size: 21.9 MB (21949935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16c85bf5ff1b42ae66f83fdb64a6cd05a854ea2289dfe1b0ae9e4ee6a806d0a`  
		Last Modified: Wed, 24 Jun 2026 03:54:41 GMT  
		Size: 59.7 MB (59661949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8aeb3259226bf05c8cdeb78f528aef9d5e19adf28e71540d132fb654168072`  
		Last Modified: Wed, 24 Jun 2026 04:18:20 GMT  
		Size: 175.5 MB (175502691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5c90a48a91092ca45fb0a3c3d8714c5050196cb62d66c4c35c2070a62d9a64`  
		Last Modified: Tue, 30 Jun 2026 23:36:01 GMT  
		Size: 257.8 MB (257831772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:834c6d306effa1fa45d703b46faf158309012ffa5f7d3f5bcf9912bb3a7d1868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15684436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3042f73a593d9cd9a67912651a61868d2cb605de4eb860017b17ab9dac4801b`

```dockerfile
```

-	Layers:
	-	`sha256:ff843af115e01263b254a16d9ecc12ec9edd4cd49ba1b040dbd42c45c43fc8aa`  
		Last Modified: Tue, 30 Jun 2026 23:35:56 GMT  
		Size: 15.7 MB (15670683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeab8b6f95f44719849efeca4229effe4932c913439354348c23d951b9133995`  
		Last Modified: Tue, 30 Jun 2026 23:35:55 GMT  
		Size: 13.8 KB (13753 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:809725748b728a8e1f8621a3c76e49fba8780c16d99ceda20abdb44d32665c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **519.8 MB (519829945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422353f1e5252fa8746e9ec7e5db42e30536f5473e74664607eb70308bf1d087`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:44:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:16:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:39:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:39:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:39:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebca214f1a4b66acfdb0bd20aa3ee139d1747885ef4b0f3d07aa2a68459230`  
		Last Modified: Wed, 24 Jun 2026 01:44:48 GMT  
		Size: 23.6 MB (23613316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:533bb0e918720911be6cb7a1a5ba9ad0e1a308fcbf24961a23aba0cd220df6cf`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 64.5 MB (64487706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cae401c24fa4bb4f22bb94674a5eb530bff1cfd2e063ec20053ecb9a5509556`  
		Last Modified: Wed, 24 Jun 2026 03:17:13 GMT  
		Size: 203.1 MB (203132913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee12c59ca20791f2c458459dec2c5395cacb997a44879ff1f9ffdb4213eec60`  
		Last Modified: Tue, 30 Jun 2026 23:40:28 GMT  
		Size: 180.2 MB (180206809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:a5971222543ca842849d5af35f49dc70a1359c919b3efe1cdfbaeab9d10a3086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15910502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7604a923914e7193acf1d48c0f423aaf70bebada418201fe084c059b92c1a3`

```dockerfile
```

-	Layers:
	-	`sha256:68cbcb214f5d84facfa0f4a83061ab166decb43dcf4b13d65e5755d6553842ca`  
		Last Modified: Tue, 30 Jun 2026 23:40:25 GMT  
		Size: 15.9 MB (15896725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9c4711c9f0c7d26fcf516c125d10b4c60827b956562d5df59ddb2b4e4948ba9`  
		Last Modified: Tue, 30 Jun 2026 23:40:24 GMT  
		Size: 13.8 KB (13777 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; 386

```console
$ docker pull rust@sha256:2fda75de145f232aee1d94bc0fda9c0649cde5af96db1e5ab8eaea8a02e38c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.6 MB (592622494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6831f8dd2550bf5caf0297cc5112899c9dfde6a411ed34ac04b1f171b829e77b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 01:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:18:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:35:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:16 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:96cbacad9c1883b9ae87f68a0550ac0bd7e0b7ba2b15b142a793b89b5a5f36ad`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 49.5 MB (49491378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45c9ce5ae5ea6ab37787312be8b0a9732642c1221f97d5689baacac874b4cd`  
		Last Modified: Wed, 24 Jun 2026 01:43:48 GMT  
		Size: 24.9 MB (24879740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db0110899c29fd647e62f912bfb740fc8af5310cdc227454d8f086f16cba33e`  
		Last Modified: Wed, 24 Jun 2026 02:35:05 GMT  
		Size: 66.2 MB (66244204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d35d0ef7b0d342bb15591580b2f53dedb16d47cf8b5adeb9bc453fd0b71b9b`  
		Last Modified: Wed, 24 Jun 2026 03:18:51 GMT  
		Size: 210.5 MB (210534885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c5dc6b96236163fdec1e51e30c1101b3e67edc4314cb3873ca0f3d7b228642`  
		Last Modified: Tue, 30 Jun 2026 23:36:02 GMT  
		Size: 241.5 MB (241472287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:715a9d67901fb1e9db73b6504f273b497db5cb02a3f007c835acf0a1fcb5fd91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887dee3c2f3d30177aae30f13872003f639a193e68f0719815ad9d87fe00b1c3`

```dockerfile
```

-	Layers:
	-	`sha256:f870d7ce177b0cdb7e22ae8e40ab660d4471c12bff07031198fc7b50658d618f`  
		Last Modified: Tue, 30 Jun 2026 23:35:58 GMT  
		Size: 15.8 MB (15845112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:460e498bad37af1f4cca3510bc9ce8cd201afb3ebfa7f90552f3021d00288617`  
		Last Modified: Tue, 30 Jun 2026 23:35:57 GMT  
		Size: 13.6 KB (13641 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:d9b06603e05b0e722b862808e22eb771752c2e041b304153c18d86e12bce399a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.9 MB (656859371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ef07e2b933a1e8df6c06ae396497c2a1b29a5970d2254bacd9b3fae950187a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:25:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 09:09:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 11:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:41:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a217268ac6656bd05839d5770fe7b3c0c976d29750b0c5635d099e473a789a10`  
		Last Modified: Wed, 24 Jun 2026 03:25:44 GMT  
		Size: 25.7 MB (25687048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6542f967f29885e49bf508e83dceee1eda4fdb044dcd68c1237588f15b795e2b`  
		Last Modified: Wed, 24 Jun 2026 09:10:08 GMT  
		Size: 69.9 MB (69853519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2d0228e0a63503bc4fc587e09e362154291abcffaef8e63e71bd8a6dbcd861`  
		Last Modified: Wed, 24 Jun 2026 11:39:56 GMT  
		Size: 214.6 MB (214646362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a49234c911dba2d02cc3c443921f7ed6a2a2afb901ac3a08290a36e5216587`  
		Last Modified: Tue, 30 Jun 2026 23:43:52 GMT  
		Size: 294.3 MB (294325595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:4211376dbde0487da8fc72013e0a07e44ada97233101ff17cbaa2b150e9be954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850b1e5602f2fb3156d64ff68e2579e37d74a31654a159a936d9dff334a92ed6`

```dockerfile
```

-	Layers:
	-	`sha256:24c65c1f84f5de33c6d323d9f7eda854ee096c2a47e0c5f316672129cc82dd8e`  
		Last Modified: Tue, 30 Jun 2026 23:43:46 GMT  
		Size: 15.8 MB (15844722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3082de44cb2eb2be1278a977e21ea773a6590a7735b38abffa52505a1387139`  
		Last Modified: Tue, 30 Jun 2026 23:43:45 GMT  
		Size: 13.7 KB (13717 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; s390x

```console
$ docker pull rust@sha256:90117b296d6564b42b1fe534743346b9ae5eb9a830000e7151f396cc2be006f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.6 MB (613622375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c1347948acda40582540ecd1dd67f82424fb3f8941b2f93cb8b972257f6ca23`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 02:45:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:29:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 05:17:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:32:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075239c7f31ef6bc9923503289fbabd4a216a0cc1314ab546cdb22b3aa178273`  
		Last Modified: Wed, 24 Jun 2026 02:46:07 GMT  
		Size: 24.0 MB (24038997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98bfd0e5e3c41d5610549c351f2a214a1057c70f21ae763c153398d8481275e`  
		Last Modified: Wed, 24 Jun 2026 04:29:51 GMT  
		Size: 63.5 MB (63498267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99167449a185592a85feb187a60fc4d1a3ea3909348ca45a213cf5735904d1d5`  
		Last Modified: Wed, 24 Jun 2026 05:18:36 GMT  
		Size: 183.6 MB (183624001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80782d2d1f6c77f1065ae2eb35ddda3b3158224258e4406834ae5a1113519cf`  
		Last Modified: Tue, 30 Jun 2026 23:34:15 GMT  
		Size: 295.3 MB (295299435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:3c90269f859d289b45fa2249566843f963084664855d9b1f21b026a8c11036a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15689465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040ba7172b0304b3ddb0f6677831a375c6a103fa8f49f341cee3d0ac3506322c`

```dockerfile
```

-	Layers:
	-	`sha256:b7806e249f9430d377616e550f55af0d15cfa558627ecac526ebea454f5abfc8`  
		Last Modified: Tue, 30 Jun 2026 23:34:09 GMT  
		Size: 15.7 MB (15675793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fda0121971cc7ee5f0c411cf538810c50bb93a8d5f6dedc43b2ddcf31171ca1a`  
		Last Modified: Tue, 30 Jun 2026 23:34:08 GMT  
		Size: 13.7 KB (13672 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:bullseye`

```console
$ docker pull rust@sha256:21d112adb6ab370d39eef8f861f10b42342419b9569e7a05dac15e19eb65a3b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `rust:bullseye` - linux; amd64

```console
$ docker pull rust@sha256:65136b30fc6b10112cbae63a868da085a878679a80d562272e485ecaaad3276a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.9 MB (536895700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f1180171a45255830dd6c52f737fc6e25d6468de8a20abb315a6280fbd26435`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:41:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:28:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:17:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:40:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816526a6d4acf81b392ec5a1e6d8d402fbc4bf0460323c5ad45b376b247ca6fc`  
		Last Modified: Wed, 24 Jun 2026 01:41:36 GMT  
		Size: 15.8 MB (15790805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3cf50c221acb61e259a7ecd20caf425597eca7d93e329dde2640ca7ec8aaf4`  
		Last Modified: Wed, 24 Jun 2026 02:28:36 GMT  
		Size: 54.7 MB (54742897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a160e6d2c8242d5f49a2c1be818ab0f47647e5cc5cf1fcb068e6618846d778`  
		Last Modified: Wed, 24 Jun 2026 03:18:13 GMT  
		Size: 197.3 MB (197335039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143375a08243397d86927c703a00ab22a648e2f813240e1e05719cb7383c77a0`  
		Last Modified: Tue, 30 Jun 2026 23:41:41 GMT  
		Size: 215.3 MB (215253950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:ec8ceb17da7bf86bcdcbbbfe3689fcc0d7a15d4021dba8d08751944a0e8a30f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15485967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9716a5e3356553c446c08a476c3f841033958cdcd1856fa5845d53a0d93cb619`

```dockerfile
```

-	Layers:
	-	`sha256:5e9c93ccb0be10a5c5b0446ac035ce53cd7fd7d681d35f7778896bece0bfea8a`  
		Last Modified: Tue, 30 Jun 2026 23:41:36 GMT  
		Size: 15.5 MB (15473464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2ac5232581b181939c4054932b7451c284e52403ab6b3d3d3311594acb4ec36`  
		Last Modified: Tue, 30 Jun 2026 23:41:35 GMT  
		Size: 12.5 KB (12503 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bullseye` - linux; arm variant v7

```console
$ docker pull rust@sha256:95a74f9adefda719bd334b1a528a3a43512bead1809e7bc2c5a7490a2db1cf64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **540.2 MB (540239546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6775eef0b711785686fd04abcef8569671f0d64ca4d61f1d74c7df3de5aaaa4d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 02:23:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:54:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 04:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:34:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:34:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:34:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fc5ae1e57bd12fc3393aea9c4c883b87d2ec58e18ce0892f8effba71fbfcd039`  
		Last Modified: Wed, 24 Jun 2026 00:28:02 GMT  
		Size: 49.1 MB (49064073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354f5593b138af5d5b60d8e82c822aa52fd74f6a603db24886e0573d60561397`  
		Last Modified: Wed, 24 Jun 2026 02:23:28 GMT  
		Size: 14.9 MB (14905363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf4cfcfd51cd63cbc0a86a0ed17f661e5157a3b24f24a750cdb7ac4191f84c2`  
		Last Modified: Wed, 24 Jun 2026 03:55:06 GMT  
		Size: 50.7 MB (50659165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd7e6cd4f6193c57c8019ecd8089fc02e4912acb7efee4fe62122766c0d5356`  
		Last Modified: Wed, 24 Jun 2026 04:18:24 GMT  
		Size: 167.8 MB (167779320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ccb2c5532e8317abd9d28cc20cee6c76b6945b86842364b5d9db45ffc39d09`  
		Last Modified: Tue, 30 Jun 2026 23:34:59 GMT  
		Size: 257.8 MB (257831625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:9c6e754615103c37abf3e54d5a8a7771886a0f4c7ae2595c087222b25ea1bb67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15285391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9272eb6c240a0ac0f31145e7d84c3676a2f6290d1a03894af68c11173223d6`

```dockerfile
```

-	Layers:
	-	`sha256:c274dc1c21e1b306c9e99683912f75107adcd16297875963418f997f7178ee29`  
		Last Modified: Tue, 30 Jun 2026 23:34:54 GMT  
		Size: 15.3 MB (15272808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bf6c002a70180b99a53a683043b9e0abb745f6cb24d7234e8ef597d4906963c`  
		Last Modified: Tue, 30 Jun 2026 23:34:53 GMT  
		Size: 12.6 KB (12583 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bullseye` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:69e444ec65a82386d041a4a3d15e47a797967b90ae24aa342bd8a3600dd9e244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.3 MB (493348034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9004b62c7b6149259e3eb6b2c69f4f9f7837a0aa57865d5dd32bcb4a9dac21`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:35:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:16:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:38:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:38:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:38:40 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf305d6ad7bad47ee0696c3db8b8fed8e9c2a42c53b57d047f8ab32f5d9b546`  
		Last Modified: Wed, 24 Jun 2026 01:44:59 GMT  
		Size: 15.8 MB (15774954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95f37219bba62c0b4908476dc3cf7f0f98f1c87e8908c188797b1dc1f610c77`  
		Last Modified: Wed, 24 Jun 2026 02:35:29 GMT  
		Size: 54.9 MB (54879567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e939dc6537087193b54cb28550f30706346c9eb7faf3f1da018845a5675ef09`  
		Last Modified: Wed, 24 Jun 2026 03:17:29 GMT  
		Size: 190.2 MB (190229454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a0e470da3354fabe932b34f5b265cfccfecd385c7de2d3e80cf8af7a4fc0d5`  
		Last Modified: Tue, 30 Jun 2026 23:39:20 GMT  
		Size: 180.2 MB (180206840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:3a16b6fa6d7f7326f84132917f56208b2dd93e8d8d72ea4ab8d5b940a50b1c86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15488042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ce822070b5746c7a4e1adb31bd15b7fe20e217746af6afe90da484d1d6cfec`

```dockerfile
```

-	Layers:
	-	`sha256:6fac9f294c13891db25cd8d803dae3da587351f89101ad0af1b4944336c3966d`  
		Last Modified: Tue, 30 Jun 2026 23:39:16 GMT  
		Size: 15.5 MB (15475435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3899c7202655db8c83a23541e4edd239746c728f1433ba296f6e6e3c407f982d`  
		Last Modified: Tue, 30 Jun 2026 23:39:15 GMT  
		Size: 12.6 KB (12607 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bullseye` - linux; 386

```console
$ docker pull rust@sha256:e853e2725695c8048a8b138db56e64d1b0da5843e4b94f24a986c39d1147e875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **568.8 MB (568772449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad9866b38bd033f3577434311d7d2c79341519729e55b13fdd0ffb0ce8171cf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Wed, 24 Jun 2026 01:44:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 02:34:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:17:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 30 Jun 2026 23:34:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:34:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:34:09 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:508ffc251196056212d40e318af0b7425af79fd3069a3f9ab15fd6220917ec75`  
		Last Modified: Wed, 24 Jun 2026 00:28:09 GMT  
		Size: 54.7 MB (54712884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f059b391cd2cd82464a697d38282bb9c5437ac5b83e7b92cde4d9a0644a137f5`  
		Last Modified: Wed, 24 Jun 2026 01:44:13 GMT  
		Size: 16.3 MB (16295718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18472033acd6c573e081fc2a3814994e7ab4e4ca2f812052bd6f7c4b0286c5cd`  
		Last Modified: Wed, 24 Jun 2026 02:35:09 GMT  
		Size: 56.0 MB (56047273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6beec4254dd6d9d54bec111217bc6634d6c5d7b5ceaa6029ae996278552695`  
		Last Modified: Wed, 24 Jun 2026 03:18:33 GMT  
		Size: 200.2 MB (200244154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e703af94c4533fc68c2687f9c5ff0a94b0c1df2ca33aebc5f9cba7b40d6911`  
		Last Modified: Tue, 30 Jun 2026 23:34:54 GMT  
		Size: 241.5 MB (241472420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:0bc00ae08e242feb6b1551177815e2bbe26937b6f7549f4316e9bc85d1f07e22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.5 MB (15472636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357caaa60d17674ced144726abb2b757649ba6bde0bbeda1288045d6856f5971`

```dockerfile
```

-	Layers:
	-	`sha256:27e3fea3fa845f1a2634be032b6332e7f1ece4da6d83470bc9aa8ab40a5a2438`  
		Last Modified: Tue, 30 Jun 2026 23:34:49 GMT  
		Size: 15.5 MB (15460166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb2c2c23ffc6732ec924cddb79e6969a864a88c140fa765530a75f50e37cac25`  
		Last Modified: Tue, 30 Jun 2026 23:34:48 GMT  
		Size: 12.5 KB (12470 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:latest`

```console
$ docker pull rust@sha256:1f0dbad1df66647807e6952d1db85d0b2bda7606cb2139d82517e4f009967376
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
$ docker pull rust@sha256:897292968f3e2c7aaba68bf8e6239b61994a8adbdd09e49bd866b69822b98af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.2 MB (594233199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b053325bdcbf2850bdc9b030b14b7fb90a06b55c1f5d2c68472a26c03b7431`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:42:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0252e6abaf0ff12562710faa97dc617e372a424bf144947f39dcb38700423e9f`  
		Last Modified: Wed, 24 Jun 2026 03:18:31 GMT  
		Size: 236.2 MB (236248824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc49ee9b89969feddc8aa9c2cf6d31259a1f342cfd1fcc6994549e54aa9f1be`  
		Last Modified: Tue, 30 Jun 2026 23:43:14 GMT  
		Size: 215.3 MB (215254048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:93e7c2a35a703cdde12cfcdf761f31c6bd589ef852e8740b63b19c2d84a44090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45bb6a3be29e7025e643971924fa6c505008921670eef1c0bf86eb1721d994b`

```dockerfile
```

-	Layers:
	-	`sha256:429cc57424c27f25065c931373e8700b840f0e0e1c9f32326d495aca7411d391`  
		Last Modified: Tue, 30 Jun 2026 23:43:09 GMT  
		Size: 17.2 MB (17206481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14745203cfed0c7b0fbbe25c2828940b02e489e1e9d429fb5fe731de13ae289c`  
		Last Modified: Tue, 30 Jun 2026 23:43:08 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:bdc1b5fcb37c10310a5844d5c6f3c9df256d647bd5c1b6027bbe36e821125d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.5 MB (583476715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b280c7920655c34cd4334e8e02c7c5651679277bf85ae8a9fa817d744213a1d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:25:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:55:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6ec13525e08787ad79558c5631e8f1a1fa24a87872974d31cec094e902b73822`  
		Last Modified: Wed, 24 Jun 2026 00:28:39 GMT  
		Size: 45.7 MB (45748717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5391dda58327007b323e3f3d892147e59e5e36215f08b370a235cf10aaf0a`  
		Last Modified: Wed, 24 Jun 2026 02:25:20 GMT  
		Size: 23.6 MB (23635872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0beb5aedec8fb711aa9d2285593f5263bc56957c577c835eda5256d1d6cc6`  
		Last Modified: Wed, 24 Jun 2026 03:55:30 GMT  
		Size: 62.7 MB (62746374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81014ff6d39652608f3ee3bca486e5b5f5c50c1757e0aafe38294d09eda10abd`  
		Last Modified: Wed, 24 Jun 2026 04:18:44 GMT  
		Size: 193.5 MB (193514005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba69b34e04b8afa5eafb637ed0ccef1c4122086be3ab9b43143a87978ca13c6`  
		Last Modified: Tue, 30 Jun 2026 23:36:23 GMT  
		Size: 257.8 MB (257831747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:5f97424319e880128282d509507174ec9aed3c7c5e56da6f316ac16d55ca07a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768784e85d2f0742810e3987af89da11119303591e256b4a3d93b1aaae1d408f`

```dockerfile
```

-	Layers:
	-	`sha256:1eeb0033dc66811baed0ea0dded58909e0729074c77ce798910b035533c6edb1`  
		Last Modified: Tue, 30 Jun 2026 23:36:19 GMT  
		Size: 17.0 MB (16974519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:330ea69940dd7c904be9431f97b4f304f1b23628601e0b27a0c5034277f3dac2`  
		Last Modified: Tue, 30 Jun 2026 23:36:18 GMT  
		Size: 15.5 KB (15508 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a5f124a141e54e2527df4defa1631f8f878b48f7e818b203c30e27a50c513a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.9 MB (548867888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14955d2873d61e78c7e98d7c4dad1d10d1fc92cde2ba40df106a94c183e66be6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:40:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646ad84cb24eb29e047f2b410af92e39c7ab4bd62a2d2ab0a6ff6a0ef84ba33`  
		Last Modified: Wed, 24 Jun 2026 03:18:10 GMT  
		Size: 226.4 MB (226363204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d279118456a88ddeef77741a5a0296f92edd6f73c67dfa2ab638f0a217ab2003`  
		Last Modified: Tue, 30 Jun 2026 23:41:17 GMT  
		Size: 180.2 MB (180206781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:cdb10a2fe7b464561722a115633ab21b356a4f9c0d7ada17389a81155dfff793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06aea1c7cdf21f5d389553e4070d649da72a7801746536c208286298d2344520`

```dockerfile
```

-	Layers:
	-	`sha256:4189cea91b89dbf3bbec6779e85885c3e88a93ee268bf0793e9a4f04824ec3d3`  
		Last Modified: Tue, 30 Jun 2026 23:41:13 GMT  
		Size: 17.3 MB (17290200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24d3dbfeee36b815c6e994e25cb10dedea82235cc57afa7040091698a7dce86b`  
		Last Modified: Tue, 30 Jun 2026 23:41:12 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:4c00964120be4fd18d36a85fce82872329a7fe48e2cc14d5ee8556bc4e3cce56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.3 MB (629274575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38af10dfb6adce189ec7aa6871310f765f2bf6feea7d35fd2c9458e4d953de0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:27 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429f3d50e84943497f0eadc90e14107210f6f5e2fba29257d54a1c7858400bdf`  
		Last Modified: Wed, 24 Jun 2026 01:44:16 GMT  
		Size: 26.8 MB (26797404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296cd1d205c61c3d8ebf0c638f588eaec576bb036a91f5b50f8b6183fc3010e8`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 69.8 MB (69817498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6e82ba1179651cb39d5405dee0f1cffd2cdb6f76d07dbb5eec6979464f01c0`  
		Last Modified: Wed, 24 Jun 2026 03:18:40 GMT  
		Size: 240.4 MB (240351717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108a325eb114922c90f4c1b92395c087293745faa6c9873a6bae91eb6c3a9e46`  
		Last Modified: Tue, 30 Jun 2026 23:36:15 GMT  
		Size: 241.5 MB (241472301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:481a426fdcf86a10a731985d2f5940fc44fb0dce68ace91ebc098a440fb6821a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17190096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9865dba149b45ffe7f7ddce8e00377e054ad2e840d8919cd64181460db63079c`

```dockerfile
```

-	Layers:
	-	`sha256:a225faa709ce59802b598e9dffe9ef52c01c88a57e600070f5285a68a57ed6fc`  
		Last Modified: Tue, 30 Jun 2026 23:36:10 GMT  
		Size: 17.2 MB (17174752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7e5d2427931f5e7569c88bde283e9648195ff83666f32873ccf006f14d4f49`  
		Last Modified: Tue, 30 Jun 2026 23:36:09 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; ppc64le

```console
$ docker pull rust@sha256:6c3e213557fed69cdbb085460f4211b643acd308e058758290dda567f7175b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.9 MB (678902914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307061aa6d25e90cce41adec5f008fc9d1d9f70b345d9fbb65a2271d49ad2ac3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:42:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:44:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:44:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:44:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6b290a040690185dcb63185c594c9a890b9bb513b83a709420a3abd8f7b678`  
		Last Modified: Wed, 24 Jun 2026 11:43:40 GMT  
		Size: 231.4 MB (231374483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f7cb5946d46a47c677d5ef2e71a7d0225512495d812461e965db46840d1b8a`  
		Last Modified: Tue, 30 Jun 2026 23:46:19 GMT  
		Size: 294.3 MB (294325603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:29491e61f8b3d0f0968d37c5ce14003d9fe42ca9ac99a371ecb238d7fa010b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5604ac607c046c5a8620893809ab50695e79be2942277f2ca09ee90f8192552`

```dockerfile
```

-	Layers:
	-	`sha256:09d77f335786e4b6bc8bee679ece598720dc42ddc7d4104076dc62b7c40183b4`  
		Last Modified: Tue, 30 Jun 2026 23:46:13 GMT  
		Size: 17.2 MB (17192058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3633ac6fd0d6bbdec3715466f90812addb20a01dcad2cc7ef77c47a782d06f3`  
		Last Modified: Tue, 30 Jun 2026 23:46:12 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; riscv64

```console
$ docker pull rust@sha256:00755eb6a8fcc675a1d1707d2dcf3cb1de988b29899bdce7e677d56847969acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **731.1 MB (731105672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bad2bd6682650eda11ed05cb11247103a13f11697fb7a10d6155653cc8fa07`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 16:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:50:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:50:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:50:45 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8297be2994f3c17113807c9b0aaadf1cd94ee74872bd4fcbcef79f2a21f4fd9`  
		Last Modified: Mon, 29 Jun 2026 16:36:45 GMT  
		Size: 323.2 MB (323188888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88db8447ee10671d01ca0e91e4d0248ed08d5e32118112ad7e0581c3e866f6e`  
		Last Modified: Wed, 01 Jul 2026 00:05:18 GMT  
		Size: 268.5 MB (268471925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:0c152575f35afd594fa5f34a05be40f53bc303f0af889445a1c46211db6fad93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46381de298b5d040f14b43476db1450d3fe0b8fd37dda86db24b12da27d91340`

```dockerfile
```

-	Layers:
	-	`sha256:8fa68cbcfab7685cc4b7a26cf35358b275a4a40a939f0ef0e703ba1cbdff76ca`  
		Last Modified: Wed, 01 Jul 2026 00:04:39 GMT  
		Size: 17.3 MB (17262697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e549ea23def2680a385deff187093063d823d2a48b019088023f93c7df32a58e`  
		Last Modified: Wed, 01 Jul 2026 00:04:34 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; s390x

```console
$ docker pull rust@sha256:e2d9723122d97ab5d15a6613bbfb56bc83f9ef167f5ad2f5cba181b040f8f28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.9 MB (646880478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8fbfa176b7e92c5832a65f1bd2515f764a5cf5631d7ed0880b9e42b58a4dae`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 05:17:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:32:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26ad8b668881e5b88baa7f13010c93f1bce4021cd7e873db608fc3d64c83f78`  
		Last Modified: Wed, 24 Jun 2026 02:46:45 GMT  
		Size: 26.8 MB (26803945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467c361ab8894fdba8935a4c045eb8f691562f8d8866636ae12b0e066b40329`  
		Last Modified: Wed, 24 Jun 2026 04:30:46 GMT  
		Size: 68.6 MB (68645672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fffb153b40577970ef862743ac9f3be7998a409d21a818e83c91335b8440e1`  
		Last Modified: Wed, 24 Jun 2026 05:18:51 GMT  
		Size: 206.7 MB (206745343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7b3b363f51dd5e41ffcde36003e19b3096b7f451e47d84ed9fbb739b7ae58d`  
		Last Modified: Tue, 30 Jun 2026 23:34:14 GMT  
		Size: 295.3 MB (295299458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:3f71bee2acfbea705d9fcef71116d85cc77f45c29c61803d78afe622859f424b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1e450b2708a0a5652eb081049f8a497b4d83bfae45f859837ee97e6b47a23c`

```dockerfile
```

-	Layers:
	-	`sha256:a304c9389109840d9bd3d23640633c932ee992b35dac297e6d0306cfabb23881`  
		Last Modified: Tue, 30 Jun 2026 23:34:08 GMT  
		Size: 17.0 MB (16983712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30d1b82dbc0c71a0a08bd671b650ecd631c7b8d6a465660f31b440e671e1ccee`  
		Last Modified: Tue, 30 Jun 2026 23:34:07 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim`

```console
$ docker pull rust@sha256:31ee7fc65186be7e0e0ccb3f2ca305f14e4739e7642a1ae65753aa5d7b874523
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
$ docker pull rust@sha256:d8f0d5c09580253ecdd6d6894ff112b2b760683ff2a74585e5189f2578728ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.5 MB (320462817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7774afa8fa5ea5aedfbfdfd3684d130a9c824508cfc0d373e7c3eaa8b546af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:43:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5169cf74e23b4eb5efada4feddccfe1372ad72000179e789555e16a4739b3cfa`  
		Last Modified: Tue, 30 Jun 2026 23:43:47 GMT  
		Size: 290.7 MB (290677398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:cb3cc9dca8bb10018f9053aabc7314ee70b8044349044bb0f1a93feeb7d01690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4180813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd95d495aff47b22e1b29309b7dea7fa7b32f1d4ab805b8985e4060643a34e80`

```dockerfile
```

-	Layers:
	-	`sha256:1d3e799027176ce724c193484b07272e9e43fcd07143f6a96e137783a89ff441`  
		Last Modified: Tue, 30 Jun 2026 23:43:41 GMT  
		Size: 4.2 MB (4165181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b332e57a057c6fbd37127e9e26a17e45504d8e6a42b91304fab1f0187744128f`  
		Last Modified: Tue, 30 Jun 2026 23:43:40 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:d8bbece1bbb94edc50dd3aaebd6db6906a8708406cae246336a2a6d5d982d5b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 MB (334306918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a44f63b86e6d2df4306e3c141aca74d706a09cd362fcaaee6056f1bcb440374`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:17 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbed8fc27cc2e57aa37e54edccbeca68ab0064fdb2e220aa86d6539f843f6dca`  
		Last Modified: Tue, 30 Jun 2026 23:37:00 GMT  
		Size: 308.1 MB (308095867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:31288bbc0bd624f9ef9a075839e6b56bfc962b85df14158d642867a25409aa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7235ade987dfe21348a579741ba48e27e3c87b39218e0ae1a249c710a22287f`

```dockerfile
```

-	Layers:
	-	`sha256:0b08f54c46e1bb018fa82f3bed76118b02519ca2abf88b8fee7cdc9109613a96`  
		Last Modified: Tue, 30 Jun 2026 23:36:54 GMT  
		Size: 4.0 MB (3970057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c2d74cdbb5e81c47df6fcdcf0506dc3e529cf120768dbd5a739223bfddda24`  
		Last Modified: Tue, 30 Jun 2026 23:36:53 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bfa306c18b2e778a21782d0ac2f1ae7442c6261409bfff086867a736396cafe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280037021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d0599a9e72e980be6e5e2c8f5b7bd4527ee7cae3dc9cb856b6f3bcb78fe5bb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:41:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06f4d21cd23f8b3b2051580f857db82c3ecc0344a1dd61937b45c6e0136596a`  
		Last Modified: Tue, 30 Jun 2026 23:41:40 GMT  
		Size: 249.9 MB (249888470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:580c5e9ae884d53f62947e73dccbe2755d928ce5015b17ed6058f32051eeaed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28ca1537d64fbb42b753bbca060bd3af72d8a8ea79e215639fb408ea14a80ec`

```dockerfile
```

-	Layers:
	-	`sha256:ad14d04f4f25022fb981e732a582a7bea9db76ca62a17f8cc280d829acb283f5`  
		Last Modified: Tue, 30 Jun 2026 23:41:35 GMT  
		Size: 4.3 MB (4256389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfbeb26bafa5a931c4a905890c97fc5e2af63c967676d1544be8ef0ac611c843`  
		Last Modified: Tue, 30 Jun 2026 23:41:34 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; 386

```console
$ docker pull rust@sha256:2e9387cd3957094ac433d5195fa8b3303a927b776c55a5616556ade166126666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345268333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5695d4ee44f7c9e67d9aedd34783f715caaa68496705cd22e0f1dc970a240e8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:21 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:21 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:21 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e39aa2cb81cc9de4f8e8a62a93e0424a9cf059df3a61fe8c6997709aafe8c8`  
		Last Modified: Tue, 30 Jun 2026 23:37:10 GMT  
		Size: 314.0 MB (313967123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:f411c5f9ae123b68e5900939df2f83f8ea2f6a66092e64ed170a7bebd31549e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652dcff9f53175950374a6cf80cdc09a14c6d2cee0fbc374b9c787ad54c40e4e`

```dockerfile
```

-	Layers:
	-	`sha256:68c0104fc98af4a0baa5a7886a29adef44730b841731045adb6654933d1ec1ef`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 4.1 MB (4138694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ffa2f2236a1926b38bfccc2311a4f3c1e6ec7fa80c4b09b937e1e5a935a7b5`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; ppc64le

```console
$ docker pull rust@sha256:6cccfaff8b5e435353bdd1584bb779cc3462a7e6ebf0310f9e3a91f511516cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.8 MB (394794662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9808328e9d7a7086a80ad49829787737640cd8f9c6a5b027f8471db9f8c39e0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:45:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:45:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:45:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a1b9586b8df8c7b48a10cb239c8dc121612c6b2334ede9029441341a3a1aeb`  
		Last Modified: Tue, 30 Jun 2026 23:46:42 GMT  
		Size: 361.2 MB (361188274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:7b3da06d488d047d5f5ccf6310847d0cb4cc3e74c30264da20feeb30af356a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27a004bd43a0b0db613494e459ae5ad050b9cdd7f74b088f8d9ec7005e09cdf`

```dockerfile
```

-	Layers:
	-	`sha256:871b5e01a06417652ce71f8fc2e4801fcf5e89353dfbbfa8de5309f4e86c7f0c`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 4.2 MB (4161642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e425d7e83750e5382336978b8f35be6d832a2217ff61a8e1c0279ed4ffab833`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; riscv64

```console
$ docker pull rust@sha256:6de76d48bfa215d4acfafe83b3a995c541169c07e58f0875df3011be1654907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.6 MB (390622308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2aa4ab7fac655f70dbabe7b479a77fc1422e1d7ec52f5b7ecb9da60d08ffdd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 01 Jul 2026 00:08:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 01 Jul 2026 00:08:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Wed, 01 Jul 2026 00:08:50 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741b3e17a86e6fc7485362d4b2330dd099ace7baef05c6ee938ab23b69df819d`  
		Last Modified: Wed, 01 Jul 2026 00:20:19 GMT  
		Size: 362.3 MB (362339930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:86d7753e8cfc6e83ce8cda22a09ba52bd57d667dc289be1f0f2151b92bfd3fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4255299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154d9138453eb7cf2ddc62d93359648e55e7e0b00b346f50ab392f7e2ccc35a9`

```dockerfile
```

-	Layers:
	-	`sha256:1f775781ebbe44e5272f2cd49401babaee6f32315b81861d38525d178127b35e`  
		Last Modified: Wed, 01 Jul 2026 00:19:15 GMT  
		Size: 4.2 MB (4239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65854b22ee921bfff704d344af5be5b90a6df3af462e8793572ad096ab3555b0`  
		Last Modified: Wed, 01 Jul 2026 00:19:13 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; s390x

```console
$ docker pull rust@sha256:6d030b3966486a507584fe3ca14771a3671616a56b00d579d5c4ae174168c719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.5 MB (377522130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa078bd7e0a1077a2ef029e95ad87a41169ca69d70e54a22ed7fdedb248a4427`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:33:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:33:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:33:02 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a217a5960c58b3cfbf8274a06f1dd8394cdac82fe111339631190c625224dc`  
		Last Modified: Tue, 30 Jun 2026 23:34:11 GMT  
		Size: 347.7 MB (347670749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:e321d4f9eeef3ee561a68964bbaaef56f138e78113ec6715cae03d768a156d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3998562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ac54263bcb8c912f1564455b0d90250a6f53da98b84ce1afd13de0e51b25a5`

```dockerfile
```

-	Layers:
	-	`sha256:98c8714b9945a7008c62559d08ecb9f78776eb2c5cb86f3e92620295c54bf7b1`  
		Last Modified: Tue, 30 Jun 2026 23:34:05 GMT  
		Size: 4.0 MB (3982929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a10e0ec21d242417fdb7ead873cb4e93ddcd432584200c2d1b148868c1463b6`  
		Last Modified: Tue, 30 Jun 2026 23:34:04 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-bookworm`

```console
$ docker pull rust@sha256:e18a79fc84dfcfc3ab5ba72290398a644c135c97eaa881447fddc354ee4701a3
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
	-	linux; s390x
	-	unknown; unknown

### `rust:slim-bookworm` - linux; amd64

```console
$ docker pull rust@sha256:39decc9f9f4a87e03db5069b2424c0ee13c3d7e4116010980d4f96849e823bc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.3 MB (314280160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440a1e7c9fd47777de824f16eb02f205a6eb35b23cc3dcde16610853f4a7ea04`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:42:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:13 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f7747eb17edcb95ba3a91f280fd7d821befec4e2f234f0b8955cf481a04a89`  
		Last Modified: Tue, 30 Jun 2026 23:42:55 GMT  
		Size: 286.0 MB (286042521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:bbe4cf43e4f7689f59728fabf1076d546ff499b04295dd66dd9e49681aec2419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4109408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403f1e839e96d521591f1b38f5dede9d9308157901f22322e35a2a3957eb770e`

```dockerfile
```

-	Layers:
	-	`sha256:056578202cc47ce79e90019c961b651e364523c524e275266c863306aadd2a27`  
		Last Modified: Tue, 30 Jun 2026 23:42:49 GMT  
		Size: 4.1 MB (4095525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:312e7a24b003e62770653e21cf48a283d342042bb39d6460673c4911030b237a`  
		Last Modified: Tue, 30 Jun 2026 23:42:49 GMT  
		Size: 13.9 KB (13883 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:be20a3bf952d87ca76d6ce4bb38b171b01cf2a6fac02a58687818956efe91666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.6 MB (329613246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7399fa7e2dab73e5eb8332cef3850c30bd0d195a5127d2202d84a898e438a902`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:35:28 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:28 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:28 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c126e1f53edddeebbcde3db8b1ebecca5f95e2522be909ce9946920ac14eb6ee`  
		Last Modified: Tue, 30 Jun 2026 23:36:12 GMT  
		Size: 305.7 MB (305668714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:09fd2b979f52d94f71ba5caeb0365caeea1ec4737c0a98859edd6ff551e91dfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3923886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2d16aefb5dcb2cb73a4d0965d1a282ae0631c15a8e57c52f831008187de709`

```dockerfile
```

-	Layers:
	-	`sha256:64c3662b3bed84416a1e5ff1b351c657826d4894e04e329de4a6ff2f931b0b89`  
		Last Modified: Tue, 30 Jun 2026 23:36:05 GMT  
		Size: 3.9 MB (3909922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5c5d30ef63ae0b12d6058b9735ecf746995a4e7f5461174dac8c89feda0d6b5`  
		Last Modified: Tue, 30 Jun 2026 23:36:04 GMT  
		Size: 14.0 KB (13964 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e42d574c21b0e1348205dc0e8994086cf73088596e999f67fce215f8406881a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274211618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da06955dad36226b9e63d751d2c39100cfa9c79c1f8aa636f32c5b04fc937606`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:40:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:24 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83713e62fc8cb64bcf4d3f833dcbc779ad67ea93de1b3bdfa0a9cfa793eef967`  
		Last Modified: Tue, 30 Jun 2026 23:41:02 GMT  
		Size: 246.1 MB (246089200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:83ba71ecaaae2740757a0d260f5de33e3c638bbd83b07c4ed051825829b97cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4131809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dc0bc1f03ebdb4c7d176f05178d5bd1360e751cbfa06a341039dbb582d1d4d`

```dockerfile
```

-	Layers:
	-	`sha256:f196955a1f199f84b0797dd4ed20ee3e66e0b93b1d84da5fd1935f71ed59686b`  
		Last Modified: Tue, 30 Jun 2026 23:40:55 GMT  
		Size: 4.1 MB (4117821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c04bd4485035b33d0c76f936d81d5fd201c78e86f2bacd50c3b2a733370d7687`  
		Last Modified: Tue, 30 Jun 2026 23:40:55 GMT  
		Size: 14.0 KB (13988 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:f6079b4826ac7062c6a29d8cc67d9ef22a8a7d82b967250df3ccc6643611c939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338298198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e34d39b4e5fb89930fc4c730a503142262599195291b0c3c97d696263738854c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:35:30 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:30 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff990000b20e34eb02cb3df23598a28fae1a68f06a3a4f2a6f86bb6f0af5625`  
		Last Modified: Tue, 30 Jun 2026 23:36:19 GMT  
		Size: 309.1 MB (309072389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:f2966f532c02842a5a237a2bc0f6f7f91183002d9a10df3354006d039a2c50fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4088760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55083d0cf33be56db70d95e9d7596e9059cc3016803b6585a608765e9b414039`

```dockerfile
```

-	Layers:
	-	`sha256:cb3584f6a32e9e3efaa3349f2c42030c32b5b47a7746f112903a85dd3c04b417`  
		Last Modified: Tue, 30 Jun 2026 23:36:12 GMT  
		Size: 4.1 MB (4074908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e152dadca2ff10204645b0203785194f04ad552ff3d6d0af709a878e841938`  
		Last Modified: Tue, 30 Jun 2026 23:36:11 GMT  
		Size: 13.9 KB (13852 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:c5307bff50aede4b0de0c2066a8272f29569b1dfec6b162e6ad7a1001e167cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395166254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b34e10158f7184f8c3e7a000bb210b9f018d80b68c5068ab90804bc343b4f83`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:42:36 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:36 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:36 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ec90dd45380a1bdd19051eecd4fc490c11bdc82ffab12709205d7be225aeec`  
		Last Modified: Tue, 30 Jun 2026 23:44:04 GMT  
		Size: 363.1 MB (363084276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:562ebd154437b1e5f0d43cf40d0fd8c0d6f091e8b1bef8b65e3e5229803ef409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4083055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467720f89d79d6c6671d59a3302ab7684c5292f6543ceee797978af3a6f951ac`

```dockerfile
```

-	Layers:
	-	`sha256:5a4bbaf72d3d095df8a8f3d117cd8a08733bc9a64d6874df3c17f0c5e2b7e825`  
		Last Modified: Tue, 30 Jun 2026 23:43:56 GMT  
		Size: 4.1 MB (4069127 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b0f36502b7eb6c4af20e66fbe75f6a4bf5ff348913c65275317c7fe67035014`  
		Last Modified: Tue, 30 Jun 2026 23:43:56 GMT  
		Size: 13.9 KB (13928 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; s390x

```console
$ docker pull rust@sha256:908e0c4d5788b29dc1133b6ca45a744ce0c75dded0d7dfa52c65d1e8ce59abf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.3 MB (372336890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081089f2b7cb5e9ed52dd9254d1341fa4cf00fb5bf68323a37bdcfc3434a18f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Tue, 30 Jun 2026 23:32:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:58 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49501c12806c779d1a0eddbfbab2bda28a553d692b5afc91fd1392efae8e538a`  
		Last Modified: Tue, 30 Jun 2026 23:34:05 GMT  
		Size: 345.4 MB (345443305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:536afcd6389778b1888b7318f4d9b919a424fcb35b9717ab5e6c16513a339eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:473766ec1dfc6191819d58e64ccd7e21a4fd5b8407d77cebc5af26a14b4dd718`

```dockerfile
```

-	Layers:
	-	`sha256:4858545ebe712cd29df65a2ae389322ebe2af8fb8ca5b8bb852cbc2779d5a13d`  
		Last Modified: Tue, 30 Jun 2026 23:34:00 GMT  
		Size: 3.9 MB (3933203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68b0b9f317f14d4fa889e2a650946e8add76d8d34b87fa4d8810e00236c7e84a`  
		Last Modified: Tue, 30 Jun 2026 23:33:59 GMT  
		Size: 13.9 KB (13884 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-bullseye`

```console
$ docker pull rust@sha256:c593596210f729542a92aced6a8b0812bcc8d04c5f1b238e663b800d0e2e17bd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `rust:slim-bullseye` - linux; amd64

```console
$ docker pull rust@sha256:b1bd9c1f48801b68b585071556d04e4737ff680e5feeb90e585571591236aeed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305672436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb27ac28d506a692188e106bd391a48641f12e3714b3922db8ad3bf5df03644`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:41:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0251c4232e4025b51352f0bb7119fd866d4a6a62861f09baea6fe5af4c6eee59`  
		Last Modified: Wed, 24 Jun 2026 00:28:14 GMT  
		Size: 30.3 MB (30259447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2c6a69d039132205a906bf1258d39ecbcd635bdb6dd4745a4e5a70da2cf540`  
		Last Modified: Tue, 30 Jun 2026 23:41:58 GMT  
		Size: 275.4 MB (275412989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:8742be5bb56127510aa0f48527fe6cbfc7f8f9907773c269676a3292c82a3c94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef545d60ee189739fc18495f185307a42125118c64d3a18e11bce3b180a19740`

```dockerfile
```

-	Layers:
	-	`sha256:385bd03e9b09ad7e8c07aea3dcf0eaa447830106b5c045d00db4c76ff95e5931`  
		Last Modified: Tue, 30 Jun 2026 23:41:53 GMT  
		Size: 4.3 MB (4312026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b0e53a84e0827d8e079d76b80ad10d77acd91bf4300a3303808b237c3d1c3b3`  
		Last Modified: Tue, 30 Jun 2026 23:41:52 GMT  
		Size: 12.7 KB (12714 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bullseye` - linux; arm variant v7

```console
$ docker pull rust@sha256:85410247dc10acab254df3997278b10a3b0ce3db8a77710b4775ecb1ad6658a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.7 MB (325689542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f604ceec64b559b96929a4e5cbb0d0f01599fc2f800fd07f735bd8f4de7300e5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:34:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:34:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:34:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8ec7789c331459e48d19f428fbcbbcb0b3cc1497798c19c3025d746ad6b457af`  
		Last Modified: Wed, 24 Jun 2026 00:27:55 GMT  
		Size: 25.6 MB (25552772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d688f7fde2657890dd7b50e1ac012b1aee318edbe465a5b1062351c794459d09`  
		Last Modified: Tue, 30 Jun 2026 23:35:30 GMT  
		Size: 300.1 MB (300136770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:0fada9b5917149301e1647482593ad934527c360f8564c2ff1a035795e910f0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4132813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d118d34d4d25273668537711e2e98ed7c799f2fca0096e22e63cd81192a4265f`

```dockerfile
```

-	Layers:
	-	`sha256:e195e9ba7842d560d2bdd546fc1c9bc6ef6f913c278a5420da893c43ae879794`  
		Last Modified: Tue, 30 Jun 2026 23:35:24 GMT  
		Size: 4.1 MB (4120019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76cc26ef00858d9c3d60c3209f7c5a878bd873d2b397370332707bb172274c78`  
		Last Modified: Tue, 30 Jun 2026 23:35:24 GMT  
		Size: 12.8 KB (12794 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bullseye` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:1678a5ec8a5cde36b94420fbccb01f95db59fca7539b4d620396c237f54b5a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264687614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a59da720ac4e574e0fa3ea86896f8dbc0319aa5139c23b31406b655ae4142c2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:39:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:39:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:39:32 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:58009b48fe731a10341c4f5f98dfa280afd10fa34cc71961411d37e306120dd0`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 28.7 MB (28746926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc934a844f5bd88866c27f55e3d6b22dd33ced44051f59285320f9c4bb789872`  
		Last Modified: Tue, 30 Jun 2026 23:40:07 GMT  
		Size: 235.9 MB (235940688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:b86b22f5b75047b49c05ac4fa3bb5d2cfe35770c436db0086ac234845b5ed823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4321233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db6252f11ee5ec9e4b21564e24543044b3335093d1333ac53debafd8973f2e45`

```dockerfile
```

-	Layers:
	-	`sha256:8f486fdc210f69297a9ce95e8b052bcd131cc643a17b547ae93434d02e8ea529`  
		Last Modified: Tue, 30 Jun 2026 23:40:02 GMT  
		Size: 4.3 MB (4308415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e1bedf0e6329cc4cac19e8ffb6520ea51a47e1d08ac6bf488c3e26d80bffde`  
		Last Modified: Tue, 30 Jun 2026 23:40:02 GMT  
		Size: 12.8 KB (12818 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bullseye` - linux; 386

```console
$ docker pull rust@sha256:e77958d2ecf27494389076dd15b31a2f8170dacf01a11c9fa2829d942824b236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.4 MB (333442825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33bde8006564220259c687f8b8f28bf43ba9cc07a18a581013ae96c15788733`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bullseye' '@1782172800'
# Tue, 30 Jun 2026 23:35:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:edbad50f4a6e85b8608c496472f5f48b2e108ebbad0ca8f7c81784396f0c79d6`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 31.2 MB (31196135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6336bcb9a50b6b8beac71dda008d64cc237515b6ece226be1bab261b960dd27`  
		Last Modified: Tue, 30 Jun 2026 23:35:52 GMT  
		Size: 302.2 MB (302246690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bullseye` - unknown; unknown

```console
$ docker pull rust@sha256:d235abae105d0a04f2ab5aa821efaf6b6d40c0b6ddcbb2ede2a7e18c0ad4d488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4314450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9e8e2b63e15036658fc294a15a129cd5152fc0e11217a13dfd2bc3423185e9`

```dockerfile
```

-	Layers:
	-	`sha256:afa0a7bfb63b4168021eee32f615aec57a50d4986b52a615eab29ac1d8e671c2`  
		Last Modified: Tue, 30 Jun 2026 23:35:46 GMT  
		Size: 4.3 MB (4301768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361abc90976ccb84b39926b743b4d2d08197aaa0853f371969581b10bfa643fb`  
		Last Modified: Tue, 30 Jun 2026 23:35:45 GMT  
		Size: 12.7 KB (12682 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-trixie`

```console
$ docker pull rust@sha256:31ee7fc65186be7e0e0ccb3f2ca305f14e4739e7642a1ae65753aa5d7b874523
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
$ docker pull rust@sha256:d8f0d5c09580253ecdd6d6894ff112b2b760683ff2a74585e5189f2578728ce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.5 MB (320462817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7774afa8fa5ea5aedfbfdfd3684d130a9c824508cfc0d373e7c3eaa8b546af`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:43:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:43:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:43:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5169cf74e23b4eb5efada4feddccfe1372ad72000179e789555e16a4739b3cfa`  
		Last Modified: Tue, 30 Jun 2026 23:43:47 GMT  
		Size: 290.7 MB (290677398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:cb3cc9dca8bb10018f9053aabc7314ee70b8044349044bb0f1a93feeb7d01690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4180813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd95d495aff47b22e1b29309b7dea7fa7b32f1d4ab805b8985e4060643a34e80`

```dockerfile
```

-	Layers:
	-	`sha256:1d3e799027176ce724c193484b07272e9e43fcd07143f6a96e137783a89ff441`  
		Last Modified: Tue, 30 Jun 2026 23:43:41 GMT  
		Size: 4.2 MB (4165181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b332e57a057c6fbd37127e9e26a17e45504d8e6a42b91304fab1f0187744128f`  
		Last Modified: Tue, 30 Jun 2026 23:43:40 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:d8bbece1bbb94edc50dd3aaebd6db6906a8708406cae246336a2a6d5d982d5b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.3 MB (334306918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a44f63b86e6d2df4306e3c141aca74d706a09cd362fcaaee6056f1bcb440374`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:17 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbed8fc27cc2e57aa37e54edccbeca68ab0064fdb2e220aa86d6539f843f6dca`  
		Last Modified: Tue, 30 Jun 2026 23:37:00 GMT  
		Size: 308.1 MB (308095867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:31288bbc0bd624f9ef9a075839e6b56bfc962b85df14158d642867a25409aa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7235ade987dfe21348a579741ba48e27e3c87b39218e0ae1a249c710a22287f`

```dockerfile
```

-	Layers:
	-	`sha256:0b08f54c46e1bb018fa82f3bed76118b02519ca2abf88b8fee7cdc9109613a96`  
		Last Modified: Tue, 30 Jun 2026 23:36:54 GMT  
		Size: 4.0 MB (3970057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9c2d74cdbb5e81c47df6fcdcf0506dc3e529cf120768dbd5a739223bfddda24`  
		Last Modified: Tue, 30 Jun 2026 23:36:53 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bfa306c18b2e778a21782d0ac2f1ae7442c6261409bfff086867a736396cafe8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280037021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d0599a9e72e980be6e5e2c8f5b7bd4527ee7cae3dc9cb856b6f3bcb78fe5bb`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:41:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:41:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:41:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06f4d21cd23f8b3b2051580f857db82c3ecc0344a1dd61937b45c6e0136596a`  
		Last Modified: Tue, 30 Jun 2026 23:41:40 GMT  
		Size: 249.9 MB (249888470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:580c5e9ae884d53f62947e73dccbe2755d928ce5015b17ed6058f32051eeaed0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a28ca1537d64fbb42b753bbca060bd3af72d8a8ea79e215639fb408ea14a80ec`

```dockerfile
```

-	Layers:
	-	`sha256:ad14d04f4f25022fb981e732a582a7bea9db76ca62a17f8cc280d829acb283f5`  
		Last Modified: Tue, 30 Jun 2026 23:41:35 GMT  
		Size: 4.3 MB (4256389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfbeb26bafa5a931c4a905890c97fc5e2af63c967676d1544be8ef0ac611c843`  
		Last Modified: Tue, 30 Jun 2026 23:41:34 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:2e9387cd3957094ac433d5195fa8b3303a927b776c55a5616556ade166126666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345268333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5695d4ee44f7c9e67d9aedd34783f715caaa68496705cd22e0f1dc970a240e8b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:36:21 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:36:21 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:36:21 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0e39aa2cb81cc9de4f8e8a62a93e0424a9cf059df3a61fe8c6997709aafe8c8`  
		Last Modified: Tue, 30 Jun 2026 23:37:10 GMT  
		Size: 314.0 MB (313967123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:f411c5f9ae123b68e5900939df2f83f8ea2f6a66092e64ed170a7bebd31549e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4154275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652dcff9f53175950374a6cf80cdc09a14c6d2cee0fbc374b9c787ad54c40e4e`

```dockerfile
```

-	Layers:
	-	`sha256:68c0104fc98af4a0baa5a7886a29adef44730b841731045adb6654933d1ec1ef`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 4.1 MB (4138694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ffa2f2236a1926b38bfccc2311a4f3c1e6ec7fa80c4b09b937e1e5a935a7b5`  
		Last Modified: Tue, 30 Jun 2026 23:37:03 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:6cccfaff8b5e435353bdd1584bb779cc3462a7e6ebf0310f9e3a91f511516cac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.8 MB (394794662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9808328e9d7a7086a80ad49829787737640cd8f9c6a5b027f8471db9f8c39e0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:45:08 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:45:08 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:45:08 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a1b9586b8df8c7b48a10cb239c8dc121612c6b2334ede9029441341a3a1aeb`  
		Last Modified: Tue, 30 Jun 2026 23:46:42 GMT  
		Size: 361.2 MB (361188274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7b3da06d488d047d5f5ccf6310847d0cb4cc3e74c30264da20feeb30af356a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27a004bd43a0b0db613494e459ae5ad050b9cdd7f74b088f8d9ec7005e09cdf`

```dockerfile
```

-	Layers:
	-	`sha256:871b5e01a06417652ce71f8fc2e4801fcf5e89353dfbbfa8de5309f4e86c7f0c`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 4.2 MB (4161642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e425d7e83750e5382336978b8f35be6d832a2217ff61a8e1c0279ed4ffab833`  
		Last Modified: Tue, 30 Jun 2026 23:46:34 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:6de76d48bfa215d4acfafe83b3a995c541169c07e58f0875df3011be1654907a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.6 MB (390622308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2aa4ab7fac655f70dbabe7b479a77fc1422e1d7ec52f5b7ecb9da60d08ffdd`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Wed, 01 Jul 2026 00:08:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 01 Jul 2026 00:08:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Wed, 01 Jul 2026 00:08:50 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741b3e17a86e6fc7485362d4b2330dd099ace7baef05c6ee938ab23b69df819d`  
		Last Modified: Wed, 01 Jul 2026 00:20:19 GMT  
		Size: 362.3 MB (362339930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:86d7753e8cfc6e83ce8cda22a09ba52bd57d667dc289be1f0f2151b92bfd3fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4255299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:154d9138453eb7cf2ddc62d93359648e55e7e0b00b346f50ab392f7e2ccc35a9`

```dockerfile
```

-	Layers:
	-	`sha256:1f775781ebbe44e5272f2cd49401babaee6f32315b81861d38525d178127b35e`  
		Last Modified: Wed, 01 Jul 2026 00:19:15 GMT  
		Size: 4.2 MB (4239598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65854b22ee921bfff704d344af5be5b90a6df3af462e8793572ad096ab3555b0`  
		Last Modified: Wed, 01 Jul 2026 00:19:13 GMT  
		Size: 15.7 KB (15701 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:6d030b3966486a507584fe3ca14771a3671616a56b00d579d5c4ae174168c719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.5 MB (377522130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa078bd7e0a1077a2ef029e95ad87a41169ca69d70e54a22ed7fdedb248a4427`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Tue, 30 Jun 2026 23:33:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:33:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:33:02 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a217a5960c58b3cfbf8274a06f1dd8394cdac82fe111339631190c625224dc`  
		Last Modified: Tue, 30 Jun 2026 23:34:11 GMT  
		Size: 347.7 MB (347670749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:e321d4f9eeef3ee561a68964bbaaef56f138e78113ec6715cae03d768a156d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3998562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ac54263bcb8c912f1564455b0d90250a6f53da98b84ce1afd13de0e51b25a5`

```dockerfile
```

-	Layers:
	-	`sha256:98c8714b9945a7008c62559d08ecb9f78776eb2c5cb86f3e92620295c54bf7b1`  
		Last Modified: Tue, 30 Jun 2026 23:34:05 GMT  
		Size: 4.0 MB (3982929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a10e0ec21d242417fdb7ead873cb4e93ddcd432584200c2d1b148868c1463b6`  
		Last Modified: Tue, 30 Jun 2026 23:34:04 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:trixie`

```console
$ docker pull rust@sha256:1f0dbad1df66647807e6952d1db85d0b2bda7606cb2139d82517e4f009967376
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
$ docker pull rust@sha256:897292968f3e2c7aaba68bf8e6239b61994a8adbdd09e49bd866b69822b98af9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.2 MB (594233199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b053325bdcbf2850bdc9b030b14b7fb90a06b55c1f5d2c68472a26c03b7431`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:41:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:42:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:42:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:42:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:aa3e9ef32f73c30e8b065800ee66429992d3bfea6a1fb8224afdd878ab5b994f`  
		Last Modified: Wed, 24 Jun 2026 00:28:33 GMT  
		Size: 49.3 MB (49317255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f59c84a786323367a79d4959142649bb24b16c989bbaae7f273550b47325959`  
		Last Modified: Wed, 24 Jun 2026 01:41:50 GMT  
		Size: 25.6 MB (25634938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d0db852850114cc79598cc8ab1ec19da54691d9e3267288bb3458d7488f125`  
		Last Modified: Wed, 24 Jun 2026 02:28:58 GMT  
		Size: 67.8 MB (67778134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0252e6abaf0ff12562710faa97dc617e372a424bf144947f39dcb38700423e9f`  
		Last Modified: Wed, 24 Jun 2026 03:18:31 GMT  
		Size: 236.2 MB (236248824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc49ee9b89969feddc8aa9c2cf6d31259a1f342cfd1fcc6994549e54aa9f1be`  
		Last Modified: Tue, 30 Jun 2026 23:43:14 GMT  
		Size: 215.3 MB (215254048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:93e7c2a35a703cdde12cfcdf761f31c6bd589ef852e8740b63b19c2d84a44090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17221877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45bb6a3be29e7025e643971924fa6c505008921670eef1c0bf86eb1721d994b`

```dockerfile
```

-	Layers:
	-	`sha256:429cc57424c27f25065c931373e8700b840f0e0e1c9f32326d495aca7411d391`  
		Last Modified: Tue, 30 Jun 2026 23:43:09 GMT  
		Size: 17.2 MB (17206481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14745203cfed0c7b0fbbe25c2828940b02e489e1e9d429fb5fe731de13ae289c`  
		Last Modified: Tue, 30 Jun 2026 23:43:08 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:bdc1b5fcb37c10310a5844d5c6f3c9df256d647bd5c1b6027bbe36e821125d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.5 MB (583476715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b280c7920655c34cd4334e8e02c7c5651679277bf85ae8a9fa817d744213a1d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:25:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:55:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:18:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6ec13525e08787ad79558c5631e8f1a1fa24a87872974d31cec094e902b73822`  
		Last Modified: Wed, 24 Jun 2026 00:28:39 GMT  
		Size: 45.7 MB (45748717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5391dda58327007b323e3f3d892147e59e5e36215f08b370a235cf10aaf0a`  
		Last Modified: Wed, 24 Jun 2026 02:25:20 GMT  
		Size: 23.6 MB (23635872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb0beb5aedec8fb711aa9d2285593f5263bc56957c577c835eda5256d1d6cc6`  
		Last Modified: Wed, 24 Jun 2026 03:55:30 GMT  
		Size: 62.7 MB (62746374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81014ff6d39652608f3ee3bca486e5b5f5c50c1757e0aafe38294d09eda10abd`  
		Last Modified: Wed, 24 Jun 2026 04:18:44 GMT  
		Size: 193.5 MB (193514005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba69b34e04b8afa5eafb637ed0ccef1c4122086be3ab9b43143a87978ca13c6`  
		Last Modified: Tue, 30 Jun 2026 23:36:23 GMT  
		Size: 257.8 MB (257831747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5f97424319e880128282d509507174ec9aed3c7c5e56da6f316ac16d55ca07a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768784e85d2f0742810e3987af89da11119303591e256b4a3d93b1aaae1d408f`

```dockerfile
```

-	Layers:
	-	`sha256:1eeb0033dc66811baed0ea0dded58909e0729074c77ce798910b035533c6edb1`  
		Last Modified: Tue, 30 Jun 2026 23:36:19 GMT  
		Size: 17.0 MB (16974519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:330ea69940dd7c904be9431f97b4f304f1b23628601e0b27a0c5034277f3dac2`  
		Last Modified: Tue, 30 Jun 2026 23:36:18 GMT  
		Size: 15.5 KB (15508 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a5f124a141e54e2527df4defa1631f8f878b48f7e818b203c30e27a50c513a4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.9 MB (548867888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14955d2873d61e78c7e98d7c4dad1d10d1fc92cde2ba40df106a94c183e66be6`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:40:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:40:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:40:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe059c57e3bc40ea8086d6be574927bed6c0a000b182f3354b758009265e197`  
		Last Modified: Wed, 24 Jun 2026 01:45:26 GMT  
		Size: 25.0 MB (25026863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf605f6b62a65326644e598c84134d29702579734c83dfca4cedf5dad7fb6d3`  
		Last Modified: Wed, 24 Jun 2026 02:35:43 GMT  
		Size: 67.6 MB (67592645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646ad84cb24eb29e047f2b410af92e39c7ab4bd62a2d2ab0a6ff6a0ef84ba33`  
		Last Modified: Wed, 24 Jun 2026 03:18:10 GMT  
		Size: 226.4 MB (226363204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d279118456a88ddeef77741a5a0296f92edd6f73c67dfa2ab638f0a217ab2003`  
		Last Modified: Tue, 30 Jun 2026 23:41:17 GMT  
		Size: 180.2 MB (180206781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:cdb10a2fe7b464561722a115633ab21b356a4f9c0d7ada17389a81155dfff793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17305748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06aea1c7cdf21f5d389553e4070d649da72a7801746536c208286298d2344520`

```dockerfile
```

-	Layers:
	-	`sha256:4189cea91b89dbf3bbec6779e85885c3e88a93ee268bf0793e9a4f04824ec3d3`  
		Last Modified: Tue, 30 Jun 2026 23:41:13 GMT  
		Size: 17.3 MB (17290200 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24d3dbfeee36b815c6e994e25cb10dedea82235cc57afa7040091698a7dce86b`  
		Last Modified: Tue, 30 Jun 2026 23:41:12 GMT  
		Size: 15.5 KB (15548 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; 386

```console
$ docker pull rust@sha256:4c00964120be4fd18d36a85fce82872329a7fe48e2cc14d5ee8556bc4e3cce56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.3 MB (629274575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38af10dfb6adce189ec7aa6871310f765f2bf6feea7d35fd2c9458e4d953de0d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:44:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 02:35:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 03:17:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:35:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:35:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:35:27 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429f3d50e84943497f0eadc90e14107210f6f5e2fba29257d54a1c7858400bdf`  
		Last Modified: Wed, 24 Jun 2026 01:44:16 GMT  
		Size: 26.8 MB (26797404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:296cd1d205c61c3d8ebf0c638f588eaec576bb036a91f5b50f8b6183fc3010e8`  
		Last Modified: Wed, 24 Jun 2026 02:35:28 GMT  
		Size: 69.8 MB (69817498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6e82ba1179651cb39d5405dee0f1cffd2cdb6f76d07dbb5eec6979464f01c0`  
		Last Modified: Wed, 24 Jun 2026 03:18:40 GMT  
		Size: 240.4 MB (240351717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108a325eb114922c90f4c1b92395c087293745faa6c9873a6bae91eb6c3a9e46`  
		Last Modified: Tue, 30 Jun 2026 23:36:15 GMT  
		Size: 241.5 MB (241472301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:481a426fdcf86a10a731985d2f5940fc44fb0dce68ace91ebc098a440fb6821a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17190096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9865dba149b45ffe7f7ddce8e00377e054ad2e840d8919cd64181460db63079c`

```dockerfile
```

-	Layers:
	-	`sha256:a225faa709ce59802b598e9dffe9ef52c01c88a57e600070f5285a68a57ed6fc`  
		Last Modified: Tue, 30 Jun 2026 23:36:10 GMT  
		Size: 17.2 MB (17174752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d7e5d2427931f5e7569c88bde283e9648195ff83666f32873ccf006f14d4f49`  
		Last Modified: Tue, 30 Jun 2026 23:36:09 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:6c3e213557fed69cdbb085460f4211b643acd308e058758290dda567f7175b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.9 MB (678902914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:307061aa6d25e90cce41adec5f008fc9d1d9f70b345d9fbb65a2271d49ad2ac3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 03:26:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 09:11:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 11:42:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:44:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:44:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:44:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823f80d2a3204cde8ea1e7cf5156c0b0e385216cbdcc894bd75c3d81ec51271e`  
		Last Modified: Wed, 24 Jun 2026 03:26:58 GMT  
		Size: 27.0 MB (27022027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d839bd23ba3483deaa2fe15c35bcf5914f88e1187bd81dc630463eccbfa83ab`  
		Last Modified: Wed, 24 Jun 2026 09:11:50 GMT  
		Size: 73.0 MB (73042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6b290a040690185dcb63185c594c9a890b9bb513b83a709420a3abd8f7b678`  
		Last Modified: Wed, 24 Jun 2026 11:43:40 GMT  
		Size: 231.4 MB (231374483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9f7cb5946d46a47c677d5ef2e71a7d0225512495d812461e965db46840d1b8a`  
		Last Modified: Tue, 30 Jun 2026 23:46:19 GMT  
		Size: 294.3 MB (294325603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:29491e61f8b3d0f0968d37c5ce14003d9fe42ca9ac99a371ecb238d7fa010b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5604ac607c046c5a8620893809ab50695e79be2942277f2ca09ee90f8192552`

```dockerfile
```

-	Layers:
	-	`sha256:09d77f335786e4b6bc8bee679ece598720dc42ddc7d4104076dc62b7c40183b4`  
		Last Modified: Tue, 30 Jun 2026 23:46:13 GMT  
		Size: 17.2 MB (17192058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3633ac6fd0d6bbdec3715466f90812addb20a01dcad2cc7ef77c47a782d06f3`  
		Last Modified: Tue, 30 Jun 2026 23:46:12 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; riscv64

```console
$ docker pull rust@sha256:00755eb6a8fcc675a1d1707d2dcf3cb1de988b29899bdce7e677d56847969acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **731.1 MB (731105672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bad2bd6682650eda11ed05cb11247103a13f11697fb7a10d6155653cc8fa07`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sat, 27 Jun 2026 16:20:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 10:51:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Mon, 29 Jun 2026 16:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:50:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:50:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:50:45 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68b05b25f9ac1e0d14e55abeddcd8bd010c0b74e64761b736e55e1ae65501399`  
		Last Modified: Wed, 24 Jun 2026 03:40:06 GMT  
		Size: 47.8 MB (47802658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38215cc1fb71b3f12158a195db4a3a178efcb8a54e7878031484fca1958c3ed9`  
		Last Modified: Sat, 27 Jun 2026 16:21:47 GMT  
		Size: 25.0 MB (24969049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc26c4707aa7e37dac76a9ca3be6f5412a1003e8e441b094b8a7df4fdd77940`  
		Last Modified: Mon, 29 Jun 2026 10:54:42 GMT  
		Size: 66.7 MB (66673152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8297be2994f3c17113807c9b0aaadf1cd94ee74872bd4fcbcef79f2a21f4fd9`  
		Last Modified: Mon, 29 Jun 2026 16:36:45 GMT  
		Size: 323.2 MB (323188888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88db8447ee10671d01ca0e91e4d0248ed08d5e32118112ad7e0581c3e866f6e`  
		Last Modified: Wed, 01 Jul 2026 00:05:18 GMT  
		Size: 268.5 MB (268471925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:0c152575f35afd594fa5f34a05be40f53bc303f0af889445a1c46211db6fad93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17278161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46381de298b5d040f14b43476db1450d3fe0b8fd37dda86db24b12da27d91340`

```dockerfile
```

-	Layers:
	-	`sha256:8fa68cbcfab7685cc4b7a26cf35358b275a4a40a939f0ef0e703ba1cbdff76ca`  
		Last Modified: Wed, 01 Jul 2026 00:04:39 GMT  
		Size: 17.3 MB (17262697 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e549ea23def2680a385deff187093063d823d2a48b019088023f93c7df32a58e`  
		Last Modified: Wed, 01 Jul 2026 00:04:34 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; s390x

```console
$ docker pull rust@sha256:e2d9723122d97ab5d15a6613bbfb56bc83f9ef167f5ad2f5cba181b040f8f28f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.9 MB (646880478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8fbfa176b7e92c5832a65f1bd2515f764a5cf5631d7ed0880b9e42b58a4dae`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 02:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 04:30:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 05:17:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 30 Jun 2026 23:32:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 30 Jun 2026 23:32:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.96.1
# Tue, 30 Jun 2026 23:32:48 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='4acc9acc76d5079515b46346a485974457b5a79893cfb01112423c89aeb5aa10';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='124e02253af9128f9e27ea1ac929cbb73cf44cf35469d0f594a1b62f7b71fea1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9732d6c5e2a098d3521fca8145d826ae0aaa067ef2385ead08e6feac88fa5792';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5140e82096f96d1d8077f00eb312648e0e5106d101c9918d086f72cbc69bb3a1';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='4bfff85bd3967d988e14567aa9cc6ab0ea386f0ffeff0f9f14d23f0103bf1f97';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='66c2c132428b6b77803facb02cbdf33b89d20c00bd20da142be8cb651f2e7cd8';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='7e43f2b2e6307d61da17a4dff61e6bceef408b8189822df64e1094590d2a70f9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.0/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4acbf08d84aa74ba1f41a222ae6a061c228f6ba4fc5d1d428650c7427ca1fbd3`  
		Last Modified: Wed, 24 Jun 2026 00:28:42 GMT  
		Size: 49.4 MB (49386060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26ad8b668881e5b88baa7f13010c93f1bce4021cd7e873db608fc3d64c83f78`  
		Last Modified: Wed, 24 Jun 2026 02:46:45 GMT  
		Size: 26.8 MB (26803945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2467c361ab8894fdba8935a4c045eb8f691562f8d8866636ae12b0e066b40329`  
		Last Modified: Wed, 24 Jun 2026 04:30:46 GMT  
		Size: 68.6 MB (68645672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fffb153b40577970ef862743ac9f3be7998a409d21a818e83c91335b8440e1`  
		Last Modified: Wed, 24 Jun 2026 05:18:51 GMT  
		Size: 206.7 MB (206745343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7b3b363f51dd5e41ffcde36003e19b3096b7f451e47d84ed9fbb739b7ae58d`  
		Last Modified: Tue, 30 Jun 2026 23:34:14 GMT  
		Size: 295.3 MB (295299458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:3f71bee2acfbea705d9fcef71116d85cc77f45c29c61803d78afe622859f424b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16999108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1e450b2708a0a5652eb081049f8a497b4d83bfae45f859837ee97e6b47a23c`

```dockerfile
```

-	Layers:
	-	`sha256:a304c9389109840d9bd3d23640633c932ee992b35dac297e6d0306cfabb23881`  
		Last Modified: Tue, 30 Jun 2026 23:34:08 GMT  
		Size: 17.0 MB (16983712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30d1b82dbc0c71a0a08bd671b650ecd631c7b8d6a465660f31b440e671e1ccee`  
		Last Modified: Tue, 30 Jun 2026 23:34:07 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json
