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
-	[`rust:1.100`](#rust1100)
-	[`rust:1.100-alpine`](#rust1100-alpine)
-	[`rust:1.100-alpine3.21`](#rust1100-alpine321)
-	[`rust:1.100-alpine3.22`](#rust1100-alpine322)
-	[`rust:1.100-alpine3.23`](#rust1100-alpine323)
-	[`rust:1.100-alpine3.24`](#rust1100-alpine324)
-	[`rust:1.100-bookworm`](#rust1100-bookworm)
-	[`rust:1.100-slim`](#rust1100-slim)
-	[`rust:1.100-slim-bookworm`](#rust1100-slim-bookworm)
-	[`rust:1.100-slim-trixie`](#rust1100-slim-trixie)
-	[`rust:1.100-trixie`](#rust1100-trixie)
-	[`rust:1.100.0`](#rust11000)
-	[`rust:1.100.0-alpine`](#rust11000-alpine)
-	[`rust:1.100.0-alpine3.21`](#rust11000-alpine321)
-	[`rust:1.100.0-alpine3.22`](#rust11000-alpine322)
-	[`rust:1.100.0-alpine3.23`](#rust11000-alpine323)
-	[`rust:1.100.0-alpine3.24`](#rust11000-alpine324)
-	[`rust:1.100.0-bookworm`](#rust11000-bookworm)
-	[`rust:1.100.0-slim`](#rust11000-slim)
-	[`rust:1.100.0-slim-bookworm`](#rust11000-slim-bookworm)
-	[`rust:1.100.0-slim-trixie`](#rust11000-slim-trixie)
-	[`rust:1.100.0-trixie`](#rust11000-trixie)
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
$ docker pull rust@sha256:0b0ea86881537b3f645aace7e8e39556289f8787db057317c8d4978548213b9e
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
$ docker pull rust@sha256:ebc54bef33ec8f9a5cd05799366010f35efbb73b354fb4f2cb086ec6b9460ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.2 MB (604162819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc1fffca677434f4d714847e4166988b30251ffd369f97a6957f988847d54b4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 20:25:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:20 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696c1fe91c64662be9b13aa92628d62d6685ab94c0b55d185258a8f762133deb`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 237.2 MB (237233076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298036cbc6850564df5f4ac67bd70e66c38142d20da7ffb839ef8a1bb2d11ca1`  
		Last Modified: Thu, 12 Nov 2026 20:26:05 GMT  
		Size: 224.1 MB (224064151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:20e85a1d265f91cebf4f20b9bf69792b9f5b45bbd8d3777a875a48800fd6e986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17220178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12a8f288aa3d6d30ce3c8fb36a007cd8271d483fc9616de508dc132288bd827c`

```dockerfile
```

-	Layers:
	-	`sha256:b0de9c233888e533787635609a1972d4fae509304eb0e8bf37f9a3976d106fb3`  
		Last Modified: Thu, 12 Nov 2026 20:26:01 GMT  
		Size: 17.2 MB (17204769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ffc678247074848ef89826854a9d12ebdc2f40c5107b1de68e8737876a4f680`  
		Last Modified: Thu, 12 Nov 2026 20:26:00 GMT  
		Size: 15.4 KB (15409 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm variant v7

```console
$ docker pull rust@sha256:fe3d42f8de0c05cb15e0db202a47b7cfe4fef2e8b2cd74e0ad63b499ef68c501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.0 MB (590026808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebdcba12558fa2c4bdc065c99590cc6afa1e14d742187ae407dbb2c89e2419ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 20:25:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:38 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7eecc700173d8d52639bf67fae48bf06558352b7e8b0a9ca17bb3f4a6e1ef4`  
		Last Modified: Thu, 05 Nov 2026 10:13:30 GMT  
		Size: 194.3 MB (194322402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f92c58c563a339c1f400fb610e2e39a685ee2b87a21c7b426e54bab377df82`  
		Last Modified: Thu, 12 Nov 2026 20:26:27 GMT  
		Size: 263.5 MB (263476712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:5df8556ef4983deeea3bd8daf392a2ff3498fddc3391222df85fd1a8688ab03f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16988321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213badbfff1793743496b26dd4d09740e8e9107d222630cfa7262c1b8ef8315b`

```dockerfile
```

-	Layers:
	-	`sha256:bd7db8ccd01f13523d56056bb3e2f9fdb57479020247c4402073823507d934c4`  
		Last Modified: Thu, 12 Nov 2026 20:26:22 GMT  
		Size: 17.0 MB (16972800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d42e68b74fb8c15de1b71eda0316c208021918067240d286190a9b7d3824ffe9`  
		Last Modified: Thu, 12 Nov 2026 20:26:21 GMT  
		Size: 15.5 KB (15521 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:66431732f567e2fd1301ecfbdc124ac32989c8953afeac895577cb114117454c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.1 MB (559132121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65630931ba8c125ada0ab8cdfc8ee3f62f9636b139b2445c09e0c8f3840a8731`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 20:24:30 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:24:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:24:30 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65e2c5234276be7d945d8054632dc3750c6c3de75b431be0629199b0507d80`  
		Last Modified: Thu, 05 Nov 2026 08:55:11 GMT  
		Size: 227.2 MB (227219437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb03ace99fe671d5d1d78389e6aa41ae4178ddf94b90467703a9d4d39a415a`  
		Last Modified: Thu, 12 Nov 2026 20:25:12 GMT  
		Size: 189.5 MB (189462794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:74d9d3d3912c97892023b054b1d029f30995eca3ea7f216cb0c0df7aeaf9c8e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17304048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ae2aa0ec30095b30dab3071d4b5caee911fd7add9db2a824950157b6f7a566`

```dockerfile
```

-	Layers:
	-	`sha256:4b81f5f2f5e53f1f17281dc86e2d594ad1e238c28aea0482315a9377ac1c5476`  
		Last Modified: Thu, 12 Nov 2026 20:25:09 GMT  
		Size: 17.3 MB (17288487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c45120a97fd67a706edd795912553e7470193f5920643ddd2847e2d794ea22b`  
		Last Modified: Thu, 12 Nov 2026 20:25:08 GMT  
		Size: 15.6 KB (15561 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; 386

```console
$ docker pull rust@sha256:008bfe041b07bc2d5c7352c4d6be01275306f77ab31a82b3b6111ee3b35054df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.0 MB (637983908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a105f378ab6d00dd683df29f0f3618339d1c111df3616d2972ca043397901398`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:47:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 20:25:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:50 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a1ec89f2dabc60d95d6342a31d8eb5e52224414011b5d70687f9f9bfc76b84`  
		Last Modified: Thu, 05 Nov 2026 08:48:42 GMT  
		Size: 241.3 MB (241331389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109ca97640b344674157c0b3f9531a233c908eee5886110228d5d7a771b5c2b1`  
		Last Modified: Thu, 12 Nov 2026 20:26:37 GMT  
		Size: 249.1 MB (249075586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:9317856663b9381b55d86d4f96bb8856aceb9e1b15f74f1ef906cc3927b46b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17189711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b083239b8524b2d9a4febd8da381dd27bf13e3e6f6e7ff8110a6d929fb8b4d`

```dockerfile
```

-	Layers:
	-	`sha256:d52addf2bbaffebecd7fcc446650a0b75c906bf4bdf88eb007580e7542b2bd7e`  
		Last Modified: Thu, 12 Nov 2026 20:26:33 GMT  
		Size: 17.2 MB (17174354 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:926b7de82b1a1a3a211a9c6f5b7c22a2d514c9c70a54a2afe7a537fed114c23e`  
		Last Modified: Thu, 12 Nov 2026 20:26:32 GMT  
		Size: 15.4 KB (15357 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; ppc64le

```console
$ docker pull rust@sha256:202d33f36f9b3dd4b7463a6c026815bb374373d2004ebe7a0f8e706d2081eb5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **685.7 MB (685742077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f05c24ebbeeb81a3f466a97072fa9d23fe3f3f640d78c8f70dbcd03c8d6aa96a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:51:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 20:27:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:27:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:27:10 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74542bce662f9d2af3a537e8ff1b094e443166f8dd9befec1119fe5c43a1a52`  
		Last Modified: Thu, 05 Nov 2026 20:52:57 GMT  
		Size: 232.3 MB (232324775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032ada1b217d73f940dcbb8e67f9bcecd67681e3787c5f918fd3efd2c490e055`  
		Last Modified: Thu, 12 Nov 2026 20:29:46 GMT  
		Size: 300.1 MB (300075041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:010931ede9c52d85679fe4f8565a11799a13a035bdfbc245b0e5e7139b708f9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17205792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5f87d6e848afa7018c5920ab8dfa9bac6d348703f4a26da0ef7315b384dd9e`

```dockerfile
```

-	Layers:
	-	`sha256:5dfcc0ebf0e51029eeec3fcdbe899e79c4188271c26174b6c4f79d23a8949f5e`  
		Last Modified: Thu, 12 Nov 2026 20:29:40 GMT  
		Size: 17.2 MB (17190315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:217001f0eae0c9da6fc43187a842cde1e22d4e5b9d5fd72e8874378e24f1c291`  
		Last Modified: Thu, 12 Nov 2026 20:29:39 GMT  
		Size: 15.5 KB (15477 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; riscv64

```console
$ docker pull rust@sha256:70ed19d7d72df9d1e9bd79d9cea94231fb7b393ad843563652d6d42f9c2d8692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **736.6 MB (736604657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff0d492cbf668a67b031ee714c8ad0c9d21f5d8ca04c1646fe695219f74007c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:50:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 11:01:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 16 Oct 2026 11:01:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 16 Oct 2026 11:01:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7b3723d66e9bf982d90fb7607b939da5f6f73b5ffb86e95027a0feed4cc7b`  
		Last Modified: Sat, 10 Oct 2026 07:06:05 GMT  
		Size: 324.1 MB (324123927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b31c99f621e11836f36b603a0586eb350a8f3391dabf960ed533cbd1f70d651`  
		Last Modified: Fri, 16 Oct 2026 11:17:05 GMT  
		Size: 272.9 MB (272926301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:febda67e568785ec9b14d1d27ef3afadecd9163f0b0eae2b3c1fa0e42365caa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17279120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc5114aa4bc4d2ce97733e712139675b1fe57f093afbf5cfaf90851c5eb887`

```dockerfile
```

-	Layers:
	-	`sha256:650e42278b7674b33ffcea3de507bf34eec219a5d091d21d15cb3c7d9f81828f`  
		Last Modified: Fri, 16 Oct 2026 11:16:28 GMT  
		Size: 17.3 MB (17263656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9380039cc225a10be3dda2f4a2cc5bf9b507f71955ce1dec7b514249de1b82fc`  
		Last Modified: Fri, 16 Oct 2026 11:16:23 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; s390x

```console
$ docker pull rust@sha256:89b24df189f171d3ca949a8a800db773c8c7070aa3304973323f9a635966e326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.9 MB (653889263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ca6ead7c9737e146a56c613f5de30c98369dc1ce4f8b7feb8cd3deac30e28b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 12 Nov 2026 20:23:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:23:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:23:32 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7037e61e2f2a3cdeeb35dbe7d9c3b9055786ef002e1958d14c5bdd10287c77c3`  
		Last Modified: Thu, 05 Nov 2026 09:21:55 GMT  
		Size: 207.7 MB (207650334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfcbc2fcfc448d44f4f42a814fa46c37fc29b5a8ea8839d065c282fd7a51ae7`  
		Last Modified: Thu, 12 Nov 2026 20:26:30 GMT  
		Size: 301.3 MB (301276386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:5c808c17b0c82ad9d23953ffc2339cd2a4385f3c487d8cef1126e0fd39af0429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16997408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d71486855b6595c4e32a14bdb3e4118536348e2f8330dbb04f337b8dc10e9a63`

```dockerfile
```

-	Layers:
	-	`sha256:add5a7c750a5e679bebd2e35e5c400103691d58b10710cee8bf28c280b983b24`  
		Last Modified: Thu, 12 Nov 2026 20:26:26 GMT  
		Size: 17.0 MB (16982001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6fae10f7184be7ab08b3b6999a8f4d558d8fdd91e218388802bee1a01d69d2f`  
		Last Modified: Thu, 12 Nov 2026 20:26:25 GMT  
		Size: 15.4 KB (15407 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine`

```console
$ docker pull rust@sha256:2cccd8b212b37dad15a555589c1b6787da4ab913fe24d8a9b2d99d3498869409
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:1-alpine` - linux; amd64

```console
$ docker pull rust@sha256:cfbeb9c8c956f048a081ae034a7c8ffbd60242f3ff76b645d3a41523f665f761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.2 MB (354207032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c86c2c6b0d88ae0efc8294382f73963ac0a5ee0d7b5b942505b034b8300836`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:26:05 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:26:05 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:26:05 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:26:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3977ee8f9753be68192356e8059febeda0b0f533f3fb5f9f849287a89380a5df`  
		Last Modified: Thu, 12 Nov 2026 20:27:01 GMT  
		Size: 75.1 MB (75077165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60151c82ea7d0e04a957cf42ef769cad19631df5decc8168acc690ec65b215d1`  
		Last Modified: Thu, 12 Nov 2026 20:27:05 GMT  
		Size: 275.3 MB (275276194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:bc2208ed1f588be8f9c56185b9c7451edfdb82b978c64d6ba2b1986266b142e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19e8c2662ab51ccea42d69fa28e36285bdfdd24d5681debadd2a7e732d6fb6`

```dockerfile
```

-	Layers:
	-	`sha256:2a338e4d0cabad8c626f0fe73466f1d109dc6f0a69622d6c671e4c4a03f417d0`  
		Last Modified: Thu, 12 Nov 2026 20:26:58 GMT  
		Size: 988.6 KB (988560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c2f642ef520ad51b78f69af3fa7f41abce345df245a49978bc4e224b395b8b5`  
		Last Modified: Thu, 12 Nov 2026 20:26:58 GMT  
		Size: 14.0 KB (13990 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:18b6dc7bc111bde4e2fccf6c4ec95cc4a3486b41e4b090e9b0202eba9540023e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352845320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf99d57d5849fd556734962fa0b62a46d1c3c23d9be5d20e52a9e3a8691d906e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:26:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:26:24 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:26:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:26:38 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7941018da925c05835644e3ddfb10cbe69764471adf2a3bb78eab01bcebac087`  
		Last Modified: Thu, 12 Nov 2026 20:27:14 GMT  
		Size: 66.5 MB (66508245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dd3f6aeeab33e418c8dca50da8ea57fe3d5c7ddaffdffb5e9d36a4fa204c7c`  
		Last Modified: Thu, 12 Nov 2026 20:27:17 GMT  
		Size: 282.1 MB (282146480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:1422e6bb4095b75eb71e213ea9edfedc501f4806ba8580c2d5e40bed2adae873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb5588369681a2c4857111deeec1abb1687beaf3fa220123905bfcd2dcdaf8`

```dockerfile
```

-	Layers:
	-	`sha256:f530ec12c4ea49e46658a64c0c053a65cd68e5d0521f050a6d6f8e2c30c22ee2`  
		Last Modified: Thu, 12 Nov 2026 20:27:11 GMT  
		Size: 1.0 MB (1047511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ecaa347f88716826fd54d47846c72243762a8e9e18ae02aaf64805ed731db14`  
		Last Modified: Thu, 12 Nov 2026 20:27:11 GMT  
		Size: 14.2 KB (14157 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:f6d094f723e2da92b48761dc787247db4e6c4ecd78f73ba76796d39f5557deb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.5 MB (369487348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47fd9af9cea0b11933aa14ee938a45b5f59e71e5d86ed2b9db033b6bb19dff14`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:49:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:49:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:49:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:34:44 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67ee2e446208abef829fae7e1066334740dfdafd65ad74550cd633bcc350c`  
		Last Modified: Fri, 06 Nov 2026 06:51:08 GMT  
		Size: 66.4 MB (66394990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63796410084d6462f3ddbdcf58a75473d90955c8024146244a7cde8db76f085`  
		Last Modified: Thu, 12 Nov 2026 20:36:28 GMT  
		Size: 299.3 MB (299270438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:5f8f91fd05e43e8df31e0757a21aa779d2248c6e2e8f6fb6c9751f9c8a92a907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1841043e7df9f9a1c53cb0851da6b52533d04cc9b2d688c1824db756848bd`

```dockerfile
```

-	Layers:
	-	`sha256:eccfbe191d8638bbdd5f9a2ff45335784d04de56a26e8a1ddaf90b62461dea71`  
		Last Modified: Thu, 12 Nov 2026 20:36:21 GMT  
		Size: 982.1 KB (982105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ccc378f4ed8cc91c4ff4a35a1a3cc30bbe053581d37f815f61e48af02050de7`  
		Last Modified: Thu, 12 Nov 2026 20:36:21 GMT  
		Size: 14.1 KB (14061 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; riscv64

```console
$ docker pull rust@sha256:3a5e1d5d5da294742fe27eebdfdc91eb153c63d2e8127e1f75a9baf6fd163128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359199531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630f8bf01029e57fecd926d6de3c1bb0f73cef42036c329acc12ff893c1682a3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:41:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:41:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:41:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:42:29 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db23c5c0afe5d6514814546873347e10bba12ecc3fdb21d02055269f8b4a6991`  
		Last Modified: Thu, 05 Nov 2026 00:50:52 GMT  
		Size: 82.7 MB (82744033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e1bea2a487b36e035e7b1d5316d9b85e660b47e96dce50420746bf1564d508`  
		Last Modified: Thu, 05 Nov 2026 00:51:18 GMT  
		Size: 272.9 MB (272874851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:f4403ab62950053920d261fe0fe558b5fa2f43e33872e318aad477a6e7c8ebb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1050369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb211fc6cfe4a88f499afd120da30bfbf4f9a82ad00cee47fb08d9bca82cf177`

```dockerfile
```

-	Layers:
	-	`sha256:5ca8668d413922ac610961faadc38ec459eedf2df5640d75b0fe490a77e93da6`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 1.0 MB (1036318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17331c6c1335ee6cef5ab0f33a4ae5397a9d22068b8de434eee72af269d95d94`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 14.1 KB (14051 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:9e38a08af73070394175ad53ac210f01f40a7a61575c67481cb4b1360e33df4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:1-alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:2aa5142401608b25cbfcdc4efffe1ce5c534f935d46a3bf7e2dc0bc39e1cd73a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343887620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c5585c065a2db0f19e5a18c76c4773e73046862862af5b97e5e212b52bd16a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:25:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:29 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:25:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:47 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4850c4218fa712009e1d9e8953ebb1aa676a3f3f84642d7f899d79d151dd1fb`  
		Last Modified: Thu, 12 Nov 2026 20:26:23 GMT  
		Size: 65.0 MB (64986009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8d5ef7aaed3d4928c4e9e09d105389878da404f470e1531baae2f205851cc`  
		Last Modified: Thu, 12 Nov 2026 20:26:28 GMT  
		Size: 275.3 MB (275276209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:98e1cc36c3b67b4b2ab11a5d86f92c414846f2273cb02d479950674d244e39c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **954.8 KB (954801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55bab14c5bd1ec4b59ded3daf31ec6ea9ed807522a4e25ed07c90e7f0207a4f`

```dockerfile
```

-	Layers:
	-	`sha256:627358f1f7bee21559dd18e9119222608456d5ce0a0ac7e03a7f4ddcf5a65b71`  
		Last Modified: Thu, 12 Nov 2026 20:26:21 GMT  
		Size: 942.0 KB (942018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7408e0890524b39fd82853037ef931b3784e93de79333b2c3eeffbf2e8aec03d`  
		Last Modified: Thu, 12 Nov 2026 20:26:21 GMT  
		Size: 12.8 KB (12783 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a6356b3a6f08669d2d542d1ed2e6e323afa899713e225070c53c2b6330c86380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347783776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78458d88b2d0b226b2f68ea0dd6a39ee6e8ca1f63ef6e05cb90abd6c99bc1b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:25:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:25:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:32 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7118581700f91b1dd436b8bf0d25204073342839f90de9f22e5b665e97e6c7a`  
		Last Modified: Thu, 12 Nov 2026 20:26:07 GMT  
		Size: 61.7 MB (61663011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78074a38cfdd136bd30a7c47e836c420bdbc153c39366a25fb6b985469e3fa6e`  
		Last Modified: Thu, 12 Nov 2026 20:26:11 GMT  
		Size: 282.1 MB (282146342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:4ee05596044f143b7e99d0e7f7698b1b36128b7762251d188d9ed2e45cf71533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1034243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a0c1aac699af6cc983cb1a892640ab468d0083695fbff7e2c9634a18fe582d`

```dockerfile
```

-	Layers:
	-	`sha256:184aa97c2957b24529b8be3efe9e589f18f2441a25efd8a38448cbadcb4e3e97`  
		Last Modified: Thu, 12 Nov 2026 20:26:04 GMT  
		Size: 1.0 MB (1021342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1a4b530a79bc117749eddcc3393a8a48ad0187b2ba9f3429d4936256e3b6a63`  
		Last Modified: Thu, 12 Nov 2026 20:26:04 GMT  
		Size: 12.9 KB (12901 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:29c3b531dee1a2ec54b98a0338739684376d4e9c922198818b4883abf252d4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364304055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3a2e664e9c75f624d8a8821cf32c78c32499872f95fcc84b634bdb1494e206`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:14 GMT
ADD alpine-minirootfs-3.21.10-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:14 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:44:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:44:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:44:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:30:47 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e31aa04035baf79a581d007cc1c93d4abe6462df974b67e564cc540df6845323`  
		Last Modified: Thu, 05 Nov 2026 20:44:22 GMT  
		Size: 3.6 MB (3558023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b185724b138020d162c878b4e0e112efaa479f3c5941f6e0972df6987ccd3f`  
		Last Modified: Fri, 06 Nov 2026 12:42:38 GMT  
		Size: 61.5 MB (61475354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02695cbd0ef69f96087edb9ebd039891f3f6560b2daf51575c27ce7d553d6ea1`  
		Last Modified: Thu, 12 Nov 2026 20:32:33 GMT  
		Size: 299.3 MB (299270678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:8f2a32ff887d429a248d593a7c224e0f478dabd135d4d1a96111c06e9fa4199f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **968.7 KB (968696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8c58cbf5b1ec9013d02d441db4220fce0ad9365e3fbe84a192f0edead5ff15`

```dockerfile
```

-	Layers:
	-	`sha256:9083d3b365744e5341d4da46117996725ee993f421c3ecc7cdc171585ccad070`  
		Last Modified: Thu, 12 Nov 2026 20:32:27 GMT  
		Size: 955.9 KB (955867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ea6dd682de23b862f4540d7eae0fc78dff3bf2dadec91dba7b8c575fb4a1ba6`  
		Last Modified: Thu, 12 Nov 2026 20:32:27 GMT  
		Size: 12.8 KB (12829 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; riscv64

```console
$ docker pull rust@sha256:fbb5b8ea40f93c17cea8a28016568483903fd9e44a952c4aa5aa8cd4e9c111f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350563950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babf588dda88af6e441c19e8cdd29720102da393b4023e42f20f06c9b0f05659`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 05:00:23 GMT
ADD alpine-minirootfs-3.21.9-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 05:00:23 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:05:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:05:45 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:05:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:06:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:643eca146d1a96f3341a61349fb18d6672657279623f35a5072344018f8aa0f0`  
		Last Modified: Fri, 23 Oct 2026 05:00:57 GMT  
		Size: 3.3 MB (3336841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d1b8b395a77d5ac36590b6276efe6aca87fdb2243fbcbe41ba3631383cef1`  
		Last Modified: Thu, 05 Nov 2026 00:15:07 GMT  
		Size: 74.4 MB (74352319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ce07182754594671f85e85e6656251983e2ee564609ecaba356f51c0d1eded`  
		Last Modified: Thu, 05 Nov 2026 00:15:36 GMT  
		Size: 272.9 MB (272874790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:8e91019b1d805b06de7854bfb12dd5a5f6fc0f0a2bb8f0dc8a777cba2c7e77d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1021710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fd193161265eb2dfc12ae8abbba3bf426f395fa751cc1fbc0a2bec56dc7490`

```dockerfile
```

-	Layers:
	-	`sha256:2c23a1c6efd85b23b6f70234edd95986287762cfdb86f1bee64dfcd98366617f`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 1.0 MB (1008886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6beceaea862104811d3c4b306642d3365fec51cb853b422229f6582ec93386b2`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.22`

```console
$ docker pull rust@sha256:1449f1d0bac613b2fca0d4383fa50fdc663929cabff0ff676abfd00dd9a2e30d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:1-alpine3.22` - linux; amd64

```console
$ docker pull rust@sha256:2827d3db328757faaede0bbba12f4f9680fb0674cd23d9168721734a206ddb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.1 MB (344109133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d55ded6b48eae9ca6579944a4637cac6eeb02d12fdf820d4b49f61d7a738e5b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:25:28 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:28 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:25:28 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:47 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e9e98be236ff5dacccdd8ccac4b1824ff60133abd4fade905e8092e2fe8fe`  
		Last Modified: Thu, 12 Nov 2026 20:26:24 GMT  
		Size: 65.0 MB (65038459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c16505716ae2acd17566a214236dfcb4b6c4be294d97f6fe5a5918b251bcfb`  
		Last Modified: Thu, 12 Nov 2026 20:26:28 GMT  
		Size: 275.3 MB (275276299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:1cd01e00e5ab147bd2268fabc17ae7f2df48a534df569fda718989553920c6b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.6 KB (955573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7de969d4715a15524a5f943d368013f7f1076da7d3b3ab51e85ab16d7e0524d`

```dockerfile
```

-	Layers:
	-	`sha256:0e4849c4a98cdf1d3f3adc3329b640c9654aae4b74e644dbe27fd53a89e505b5`  
		Last Modified: Thu, 12 Nov 2026 20:26:21 GMT  
		Size: 942.8 KB (942792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4efa164429e5f76d0028dd8a0c45e6fb2b2c38bfd88a643ac96e1ef3768e5ea`  
		Last Modified: Thu, 12 Nov 2026 20:26:20 GMT  
		Size: 12.8 KB (12781 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:8c7e417c4096103e7b28873f80629d33e5e9f655b4d3ba4a5cbe73751ace3efc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (347986079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4543f5e213db1921923980a0f11e2ebb1c0d75967d943d8929c9fb24c8d73951`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:25:22 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:22 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:25:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:37 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a496efd24785b03f2abc7c10938831a8a422f079ee84fd9f7b30a07ac08040d3`  
		Last Modified: Thu, 12 Nov 2026 20:26:12 GMT  
		Size: 61.7 MB (61712299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60961e3c845d26583a06aa801432d56648aa6272778cd812fad6cd4543a1467d`  
		Last Modified: Thu, 12 Nov 2026 20:26:15 GMT  
		Size: 282.1 MB (282146395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:6cff15c2afba375171cccccd6ecf6f10bcb80c425c44f8b957fc93c3d3f70073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9f43dec53c63fbba06cbd0ff03e3683b37b25d06b931ae54240f16e189293d`

```dockerfile
```

-	Layers:
	-	`sha256:8ce0f0baba889a71ba1b74744c79b77fce11e4792258717c2edfc8a5b1364198`  
		Last Modified: Thu, 12 Nov 2026 20:26:09 GMT  
		Size: 1.0 MB (1022116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa40c99448b034ab528919087d3158e23549e356aab4bfdddfa9cf7f8e431b6f`  
		Last Modified: Thu, 12 Nov 2026 20:26:11 GMT  
		Size: 12.9 KB (12902 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:6802f1aea8523f67be32cd6acffa7484cbaabf0e8d48e811cea92894b8bf9845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.5 MB (364514992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:692e090bf1cc5a92e74bf496b542acf48bf73487b961589010bd121a8a24d024`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:45:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:45:24 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:45:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:32:02 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34407d3ba2b8de9998c7c59662ad5c458c49e5896eccba14d96cc0e10dc90c31`  
		Last Modified: Fri, 06 Nov 2026 06:47:01 GMT  
		Size: 61.5 MB (61518962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4508343a1f91176523af94c14fc85efd3233ee61b6ce76eb8af2246cf36f1f3c`  
		Last Modified: Thu, 12 Nov 2026 20:33:55 GMT  
		Size: 299.3 MB (299270516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:d52162699901a1b880513862778f120bbec9dc5e1530ab4595712864377c7422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb030944d070629ee59b5e16a778638e36222eff1f4761a3790a6c631f9da89e`

```dockerfile
```

-	Layers:
	-	`sha256:6f1e823def10ba122b284f34a3da79b7db2df7927a1a442575d5e4958fd505c9`  
		Last Modified: Thu, 12 Nov 2026 20:33:49 GMT  
		Size: 956.6 KB (956641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b50d243837fb6c1f257ff4282307b050aa5884b0d9bc81131438b1a027be3d1`  
		Last Modified: Thu, 12 Nov 2026 20:33:49 GMT  
		Size: 12.8 KB (12829 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; riscv64

```console
$ docker pull rust@sha256:705e6d03efb1ff37e7308ce613d85fa7adddfe6c1f8b0cd3947fc5c6cf65a1ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.8 MB (350805816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49bdb81c3779c79163f33cb15d2c2457a5bdeadcb3f206ab0b82da16164a926`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:58:08 GMT
ADD alpine-minirootfs-3.22.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:58:08 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:17:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:17:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:17:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:18:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8ac0a590d56e5959a275a0d1ee0a48b4b3f07fa6305e9f047ef5accff095605b`  
		Last Modified: Fri, 23 Oct 2026 04:58:43 GMT  
		Size: 3.5 MB (3512898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db417513f424f710fdbda1c44d1acec75fd31faf2801672cdcc9ad6f364acf19`  
		Last Modified: Thu, 05 Nov 2026 00:27:13 GMT  
		Size: 74.4 MB (74418133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa70d9f60becab3d64fbecc12b3481c93105b7003253210f7bd8898a901d6320`  
		Last Modified: Thu, 05 Nov 2026 00:27:41 GMT  
		Size: 272.9 MB (272874785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:d23b015dc37139b524c7e3f128c9a2b1749d097999ee6e1a69704072d0bb6898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1022490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b06a0b72b9fad542ebbb7914b64012c3f318bc141f246f51b1b16a422d7b2f0`

```dockerfile
```

-	Layers:
	-	`sha256:b66b0290b2ef100ec00b4c46a368e1dd5cd8c6f7780de0baebcdc911633e90bf`  
		Last Modified: Thu, 05 Nov 2026 00:26:51 GMT  
		Size: 1.0 MB (1009666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a86a7911c75ce5287a5f10be621656787470e71e1187e5878166a52b813f8b25`  
		Last Modified: Thu, 05 Nov 2026 00:26:51 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.23`

```console
$ docker pull rust@sha256:17018a6f13af800e760daa48bb80ae1d6df0b3cef82fd86fcfa944d2990e1226
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:1-alpine3.23` - linux; amd64

```console
$ docker pull rust@sha256:60059ab041ce2a7628fb0814ca3671ce568243e188c4ddda7f2228805bb6784d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.2 MB (354194364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61b6f6155667f025adc1e9dbfd64872d04fd7e51d8d7a1344654cf45880d08e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:25:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:27 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:25:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:45 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feae5cbfc6a56348271c128737945a3b060e726fcf959fc1df6ce6405d673d1f`  
		Last Modified: Thu, 12 Nov 2026 20:26:23 GMT  
		Size: 75.1 MB (75065493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748126ad1b1b60a7caf6644695539310413b92fb01d9cf25416e2084a32103b9`  
		Last Modified: Thu, 12 Nov 2026 20:26:27 GMT  
		Size: 275.3 MB (275276282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:0f6f076f7ff584d8b05ed66a35a76573cd5d321a574625836711b0f23beaebd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **999.2 KB (999202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5291d9c39e3c4e2150f965b5c19cba019442cee1bb74240b2b9948208ebf7c`

```dockerfile
```

-	Layers:
	-	`sha256:9411a20d7baa6959098b5865d45afcbb5de38a5f0a6f8ea7a5b5efad44cf3283`  
		Last Modified: Thu, 12 Nov 2026 20:26:20 GMT  
		Size: 986.4 KB (986419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:373572fb73e093f54f557d965ce9b4a45378dc314d1d42d2956449e7c43b71a3`  
		Last Modified: Thu, 12 Nov 2026 20:26:20 GMT  
		Size: 12.8 KB (12783 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:3ab858d23f416e4b8b536a89155433da77520c53fa89a34177c754addb278075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352830813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7039c1b29ea66f34f13b6f4a95c2e83faa59712102357e631ed550e8f38a4364`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:26:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:26:19 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:26:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:26:33 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0576032115b101442fd27f9d45af156ae5be16cf635cf3e666f300cba07911`  
		Last Modified: Thu, 12 Nov 2026 20:27:30 GMT  
		Size: 66.5 MB (66494122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0938772af5955daa97346e2ac364134b3b8fb39be625b519c6d4a736247fd56b`  
		Last Modified: Thu, 12 Nov 2026 20:27:38 GMT  
		Size: 282.1 MB (282146470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:db0b8b1241390b6d37fd9cb361a0c8f0b7ec0a91d2a3d9add244e4c1793c4901
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1058330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4f946e44f066d6b7e0dc163a292c5cbd226c5535f00b9cf45b12acc065b698`

```dockerfile
```

-	Layers:
	-	`sha256:374668e8ca31b2e394c6162198029e831e13e0b9bbe6a1c5495a23eb088d8057`  
		Last Modified: Thu, 12 Nov 2026 20:27:06 GMT  
		Size: 1.0 MB (1045428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ec7b2b893903050220b49b081128d74f31233a5aabec7cbc8ec696dfbe79b59`  
		Last Modified: Thu, 12 Nov 2026 20:27:05 GMT  
		Size: 12.9 KB (12902 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:18228c19a5ad3991592e4766cc4deb66b66ecad68d7349ff98e9f4741d098a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.5 MB (369463719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac7a94ae553f0b634d408347b38ac5008a897f9d984298cdc88a66d357932ef`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:47:21 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:47:21 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:47:21 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:33:38 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4127791b238828d80fee145087354f035184c92e5df6d5d17c22a0c8ba894b1`  
		Last Modified: Fri, 06 Nov 2026 06:49:01 GMT  
		Size: 66.4 MB (66374111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375c7af35f73c3318126adba68939085b685d45d2c2109dbc7f595100d77ea0a`  
		Last Modified: Thu, 12 Nov 2026 20:35:16 GMT  
		Size: 299.3 MB (299270602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:4fd3ec9911776a25642123c79d09ef5a10af9df1e4eb680d89197d2107760c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea46b08c13699645f9775721107b22d3d0c3546e29a731485d2d01e0506a3458`

```dockerfile
```

-	Layers:
	-	`sha256:033bf59ecff947b50f2524419730bb9884f9ba858acd50198709bb9792c4b337`  
		Last Modified: Thu, 12 Nov 2026 20:35:10 GMT  
		Size: 980.0 KB (980046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d0457f9615b183fda56584220c1e81bf0fa17e3a8f6156811a212cbe332c6c2`  
		Last Modified: Thu, 12 Nov 2026 20:35:10 GMT  
		Size: 12.8 KB (12829 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; riscv64

```console
$ docker pull rust@sha256:78e9277d799489ff56fa421e152e97e0b5af5607c5becb39d798a04f18f20826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359156273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00ce53ec04515a5c327f703fca92411e3c67b46aeaa04566c39c57627f992cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:29:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:29:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:29:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:30:43 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e59d8e57499165a1ec23f17d333091ae379c949c0f0a4d0a0a216a9efd54f97`  
		Last Modified: Thu, 05 Nov 2026 00:39:02 GMT  
		Size: 82.7 MB (82701801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d1089f8d1a15f6512213a01d8f5f84d448b03774642cbcc2ab9cd282f2f465`  
		Last Modified: Thu, 05 Nov 2026 00:39:29 GMT  
		Size: 272.9 MB (272874860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:8474e1b0bf7ee8dfe919465a23daabec3a950cabfa2c35a036942acd61d26340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1047087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695c79acc8734f0a8bef51415d4be1cf4adbfb070c463a4430d64ae7dc53d933`

```dockerfile
```

-	Layers:
	-	`sha256:7ae80579a9d7fc34f5635bbbce86857a6d958abd140ae4ba3a948e4d8b4129eb`  
		Last Modified: Thu, 05 Nov 2026 00:38:38 GMT  
		Size: 1.0 MB (1034263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0414e85cd34c0ff89fb6f8234e27214afe512557faa1046eb4c6daf7ab705c3`  
		Last Modified: Thu, 05 Nov 2026 00:38:38 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.24`

```console
$ docker pull rust@sha256:2cccd8b212b37dad15a555589c1b6787da4ab913fe24d8a9b2d99d3498869409
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:1-alpine3.24` - linux; amd64

```console
$ docker pull rust@sha256:cfbeb9c8c956f048a081ae034a7c8ffbd60242f3ff76b645d3a41523f665f761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.2 MB (354207032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c86c2c6b0d88ae0efc8294382f73963ac0a5ee0d7b5b942505b034b8300836`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:26:05 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:26:05 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:26:05 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:26:23 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3977ee8f9753be68192356e8059febeda0b0f533f3fb5f9f849287a89380a5df`  
		Last Modified: Thu, 12 Nov 2026 20:27:01 GMT  
		Size: 75.1 MB (75077165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60151c82ea7d0e04a957cf42ef769cad19631df5decc8168acc690ec65b215d1`  
		Last Modified: Thu, 12 Nov 2026 20:27:05 GMT  
		Size: 275.3 MB (275276194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:bc2208ed1f588be8f9c56185b9c7451edfdb82b978c64d6ba2b1986266b142e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19e8c2662ab51ccea42d69fa28e36285bdfdd24d5681debadd2a7e732d6fb6`

```dockerfile
```

-	Layers:
	-	`sha256:2a338e4d0cabad8c626f0fe73466f1d109dc6f0a69622d6c671e4c4a03f417d0`  
		Last Modified: Thu, 12 Nov 2026 20:26:58 GMT  
		Size: 988.6 KB (988560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c2f642ef520ad51b78f69af3fa7f41abce345df245a49978bc4e224b395b8b5`  
		Last Modified: Thu, 12 Nov 2026 20:26:58 GMT  
		Size: 14.0 KB (13990 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:18b6dc7bc111bde4e2fccf6c4ec95cc4a3486b41e4b090e9b0202eba9540023e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.8 MB (352845320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf99d57d5849fd556734962fa0b62a46d1c3c23d9be5d20e52a9e3a8691d906e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:26:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:26:24 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:26:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:26:38 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7941018da925c05835644e3ddfb10cbe69764471adf2a3bb78eab01bcebac087`  
		Last Modified: Thu, 12 Nov 2026 20:27:14 GMT  
		Size: 66.5 MB (66508245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dd3f6aeeab33e418c8dca50da8ea57fe3d5c7ddaffdffb5e9d36a4fa204c7c`  
		Last Modified: Thu, 12 Nov 2026 20:27:17 GMT  
		Size: 282.1 MB (282146480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:1422e6bb4095b75eb71e213ea9edfedc501f4806ba8580c2d5e40bed2adae873
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb5588369681a2c4857111deeec1abb1687beaf3fa220123905bfcd2dcdaf8`

```dockerfile
```

-	Layers:
	-	`sha256:f530ec12c4ea49e46658a64c0c053a65cd68e5d0521f050a6d6f8e2c30c22ee2`  
		Last Modified: Thu, 12 Nov 2026 20:27:11 GMT  
		Size: 1.0 MB (1047511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ecaa347f88716826fd54d47846c72243762a8e9e18ae02aaf64805ed731db14`  
		Last Modified: Thu, 12 Nov 2026 20:27:11 GMT  
		Size: 14.2 KB (14157 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:f6d094f723e2da92b48761dc787247db4e6c4ecd78f73ba76796d39f5557deb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.5 MB (369487348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47fd9af9cea0b11933aa14ee938a45b5f59e71e5d86ed2b9db033b6bb19dff14`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:49:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:49:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:49:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:34:44 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67ee2e446208abef829fae7e1066334740dfdafd65ad74550cd633bcc350c`  
		Last Modified: Fri, 06 Nov 2026 06:51:08 GMT  
		Size: 66.4 MB (66394990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63796410084d6462f3ddbdcf58a75473d90955c8024146244a7cde8db76f085`  
		Last Modified: Thu, 12 Nov 2026 20:36:28 GMT  
		Size: 299.3 MB (299270438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:5f8f91fd05e43e8df31e0757a21aa779d2248c6e2e8f6fb6c9751f9c8a92a907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.2 KB (996166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6b1841043e7df9f9a1c53cb0851da6b52533d04cc9b2d688c1824db756848bd`

```dockerfile
```

-	Layers:
	-	`sha256:eccfbe191d8638bbdd5f9a2ff45335784d04de56a26e8a1ddaf90b62461dea71`  
		Last Modified: Thu, 12 Nov 2026 20:36:21 GMT  
		Size: 982.1 KB (982105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ccc378f4ed8cc91c4ff4a35a1a3cc30bbe053581d37f815f61e48af02050de7`  
		Last Modified: Thu, 12 Nov 2026 20:36:21 GMT  
		Size: 14.1 KB (14061 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; riscv64

```console
$ docker pull rust@sha256:3a5e1d5d5da294742fe27eebdfdc91eb153c63d2e8127e1f75a9baf6fd163128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359199531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630f8bf01029e57fecd926d6de3c1bb0f73cef42036c329acc12ff893c1682a3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:41:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:41:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:41:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:42:29 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db23c5c0afe5d6514814546873347e10bba12ecc3fdb21d02055269f8b4a6991`  
		Last Modified: Thu, 05 Nov 2026 00:50:52 GMT  
		Size: 82.7 MB (82744033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e1bea2a487b36e035e7b1d5316d9b85e660b47e96dce50420746bf1564d508`  
		Last Modified: Thu, 05 Nov 2026 00:51:18 GMT  
		Size: 272.9 MB (272874851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:f4403ab62950053920d261fe0fe558b5fa2f43e33872e318aad477a6e7c8ebb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1050369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb211fc6cfe4a88f499afd120da30bfbf4f9a82ad00cee47fb08d9bca82cf177`

```dockerfile
```

-	Layers:
	-	`sha256:5ca8668d413922ac610961faadc38ec459eedf2df5640d75b0fe490a77e93da6`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 1.0 MB (1036318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17331c6c1335ee6cef5ab0f33a4ae5397a9d22068b8de434eee72af269d95d94`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 14.1 KB (14051 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-bookworm`

```console
$ docker pull rust@sha256:e6f2cff35d0f309acf8433b4f05878ed77092602c5065cc81801177da0bb3a9c
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
$ docker pull rust@sha256:4715c3ad743951a3cea90e8b432f2a17e0ef5f3f3c3abf75108879e783b396f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.6 MB (570569578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527305910196eafb3720343101dcf3ff7c788f350dd132a5c6b9daa1f65729bd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:53:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:41:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:41:47 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bab93d346cda15207e5a5000093cee7256ec1092fb689ec3d2997faf31b9a16`  
		Last Modified: Thu, 05 Nov 2026 08:54:13 GMT  
		Size: 211.8 MB (211826577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197527a0befa9c2f78706cf912319f641d33cfc011bd35c5041d98ea2e27c87d`  
		Last Modified: Thu, 05 Nov 2026 09:42:29 GMT  
		Size: 221.9 MB (221910680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:dccc07f763c57e2d936e91a45bb9b481c73f3841ed6704fe71b9cd613757d12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15881977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab858b6130a0e6fb118c6660c0bb84b43ab33a48ff7d89c859220b26d69149fa`

```dockerfile
```

-	Layers:
	-	`sha256:b2846a19bd5f63c6aa2260aeaa906df0f7385a942d2d78b748bba0526ed650f0`  
		Last Modified: Thu, 05 Nov 2026 09:42:25 GMT  
		Size: 15.9 MB (15868883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b426caaee9785c05838ac4cdeb8f62102423776396ed0ba8c8ad800d8ef5c09`  
		Last Modified: Thu, 05 Nov 2026 09:42:24 GMT  
		Size: 13.1 KB (13094 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:6b72dac1163d31a016b6e41871ee837243e895a2ea890151e4dd7f398dc86ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.8 MB (562826752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350e9eaf5cc8248f4a580a5617aeb02700590f5a3a5cc2f26a8bfaacb781eec2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:12:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:47:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 11:47:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 11:47:03 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deba4733467d14fa01e8bfb1524dd99d6586f87bd64d8d193d5c9fae44d49e`  
		Last Modified: Thu, 05 Nov 2026 09:23:44 GMT  
		Size: 59.7 MB (59697462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4148b2d8427321c3b41911ad3117638dab74567bdcee89faf176d29bf95430`  
		Last Modified: Thu, 05 Nov 2026 10:12:39 GMT  
		Size: 175.7 MB (175729352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821a348c9ed1d250c5bb3998238973a4098ddf5be95d7099cfed29e226fcff87`  
		Last Modified: Thu, 05 Nov 2026 11:47:49 GMT  
		Size: 261.4 MB (261406850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5fa80ee9ccb8cc6d654c89636ee98c0726db945ef5d110be1bdf69282737e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15684535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2079726b29742a6918a0840edfeb1a1c2346e56791a96058aadcdf38e8881c29`

```dockerfile
```

-	Layers:
	-	`sha256:7fd6b18afbf1e8a7986658dc1734a5380021fff3f860c88d97eb78a1d7bdff79`  
		Last Modified: Thu, 05 Nov 2026 11:47:44 GMT  
		Size: 15.7 MB (15671359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3ef3a4773bfd1b9e640ad94e644a48113557497b37a13aa2b6961a24318e521`  
		Last Modified: Thu, 05 Nov 2026 11:47:43 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e566673f94ee3013baae79d08125b5ca1e66e9be2db8d4e07f2e4f81b5b99807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.8 MB (526816671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10513cd0b64b1e7470d965645f4ac257a45c2b8b66b394cf775a15102b799e74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:54:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:54:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:54:53 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31a98848e2c91197f0512a8b453bba957a8398f45a1b8d832754f360bb188ac`  
		Last Modified: Thu, 05 Nov 2026 08:54:47 GMT  
		Size: 203.4 MB (203371836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43df9c20f585577e111b4af5c8cb5f2d6ac85e97b78ac3d9f1a4d9d54e9d29f8`  
		Last Modified: Thu, 05 Nov 2026 09:55:31 GMT  
		Size: 187.1 MB (187063258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:44c827535f35102049b37ad6fc14cbaf2fe3012f8043f02d093eb574b3ede5d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15910609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396891008b800f5b2363665136b75645073c78dc0412b7116e9492c85eb58404`

```dockerfile
```

-	Layers:
	-	`sha256:ad0875b507c9bfd8008939382a1ec2f03e86a52901387e8bc1cb9bb1d414665b`  
		Last Modified: Thu, 05 Nov 2026 09:55:26 GMT  
		Size: 15.9 MB (15897409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7f3d927286173584599a27fa6dba96eba5f5b9e6e99ee829daef545b80b0529`  
		Last Modified: Thu, 05 Nov 2026 09:55:25 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; 386

```console
$ docker pull rust@sha256:cc3d1c886ebb8bb16db7239c2c62484b7f3d51a2241805a6efed0ef13519890f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.8 MB (597823119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282c46897d681303e006af1137a184301cd4fe86b75f74ee5dd73847aba7e6e9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:39:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:39:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:39:32 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2dca7ecb6f0d6c1c3297d7e97569ff07eaf0a74e8949b12aa33e39b2fee126`  
		Last Modified: Thu, 05 Nov 2026 08:24:39 GMT  
		Size: 66.3 MB (66277351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d280152d20eeef07be2c9e1e6a073b220a4e1a7b72fd4ef55c1656bf28a5f2c`  
		Last Modified: Thu, 05 Nov 2026 08:48:20 GMT  
		Size: 210.7 MB (210744423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad64e26b7b1b1ed8adf953ac716628fb2a0ee01125c7c02b3fdf8cf9b5d0b81`  
		Last Modified: Thu, 05 Nov 2026 09:40:17 GMT  
		Size: 246.6 MB (246581749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:8bc0050f09461e25069722b6535941d1da73fa926b2bc5e1dbbde8a7f86de28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15860168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ec87cc75f109cee3e257add93dc1616b40932b9ab5bcbb9b3074fb6931684e`

```dockerfile
```

-	Layers:
	-	`sha256:939c5131cdae074b459ff5bd58345dca29559f596a3146322851adab8f1b1c7b`  
		Last Modified: Thu, 05 Nov 2026 09:40:12 GMT  
		Size: 15.8 MB (15847104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e7ea1c79c2a59e805d024dd4fce33b4b00035ff749a37857669114f06e8f5ab`  
		Last Modified: Thu, 05 Nov 2026 09:40:11 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:bd778ca3ed03cc695bb4bc042d5f30f53c9573f2fe90b4c6e1f57b0dee4ded86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.3 MB (660306053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c78e1463fdeabfea0295211223de92fa433babfda84ac24db366382735c6c2c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 20:46:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 06:40:37 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:40:37 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:40:37 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14d5fee07632732bb5754d3454367b1ee28cf1d75bc620bc2ef6967edde5432`  
		Last Modified: Thu, 05 Nov 2026 20:48:27 GMT  
		Size: 214.9 MB (214901016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ec3a1b11e470230854034da67083d5d0cfc4322e7e86f8943fb23d316e92cc`  
		Last Modified: Fri, 06 Nov 2026 06:42:27 GMT  
		Size: 297.6 MB (297621964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:ac154ae64035f91b9ce88458d879574eafa64e90b1b0199bb2eccc591bb29a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffbbc4f479573ffbd56138da3e7e4a9f48fca4f2ae438847565203ae14f9d167`

```dockerfile
```

-	Layers:
	-	`sha256:282dc638d2ca4b15fb7b3974f79014e2e5c60dd01e64841c36bac52d381f7799`  
		Last Modified: Fri, 06 Nov 2026 06:42:21 GMT  
		Size: 15.8 MB (15845392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e6190021ae3022d25f321182a6508b007a0de3946c33aa620104236e8eaffe`  
		Last Modified: Fri, 06 Nov 2026 06:42:20 GMT  
		Size: 13.1 KB (13138 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim`

```console
$ docker pull rust@sha256:f6c4a35d21dbb3c89d7a8d056c193e94fc09037f2b58dd858b09c39a47dd02d7
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
$ docker pull rust@sha256:e97df055c54a05160e7c67ba3b2963de6ddb95903911baf8922dbcd1b394f698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327194905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc1f85e641d7765f7cc3b867ebc0fd665ebb7fed1b156b1e9878aa36337d943`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:03:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:03:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:03:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e435aed9d6456d8431f67069e22a2c664717640ea2ca0361cbe56602b9514a2`  
		Last Modified: Thu, 05 Nov 2026 08:03:43 GMT  
		Size: 297.3 MB (297338773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:6ffba9ebe4580e7410900fd7303465b7ce192b73c7fb2266c969b1a0783fa90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2cec7f1e2e4674387d2fe33b36055c3abe654675b1c51c6d3b97bbd83244bf`

```dockerfile
```

-	Layers:
	-	`sha256:0708dc9ad0daeb6c492cffd3f6b8aadf163c5ed22453e8914d8fd4f9bdbf60ba`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 4.2 MB (4169346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27e0bb10cb91b98c21ca5fd5a8e89b2799000a7bb90843832be598ef9a12a480`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:0400183e4df544ad976cd984d7b6e2e8b484441e0bf9e316d07cd456dd4bd35a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337943104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384574104a4725000e99998e82cf71afda768573ffa11d9dea805a993023cfc9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:54:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:54:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:54:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3da5a31372541ab1bf5e318f39bf0f3fe9854a9d8730eede62ca4b5ae48d`  
		Last Modified: Thu, 05 Nov 2026 08:55:27 GMT  
		Size: 311.7 MB (311670189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:54ef50e512425b252cc8fda07911689cb15d41125b36a177c455b3c8e08c6025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99017c654280409894158fe45590a383f86938246085ab50aac9b650a324240`

```dockerfile
```

-	Layers:
	-	`sha256:35d036863a32367260d7365d6ad97bc9e9b87d0666b1daa2d264c66deac56737`  
		Last Modified: Thu, 05 Nov 2026 08:55:22 GMT  
		Size: 4.0 MB (3974215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d67aa30173d0814cf89e02fd5cf0200b0830dd455edc821d1f6aefe6ac07aa`  
		Last Modified: Thu, 05 Nov 2026 08:55:21 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:10d470c049d88eb5dbfc85612f51571edd1ebbbdade35c5d3d89d9ab8fd6bda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286943249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab624ff5404f660cfc64c0b5249c2766ba32809e21f7aa2403e72fab042ec01c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:55 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:11:55 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:11:55 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58041dfb98d1b82f6a1122a264f755c1e93993a2a6c433cca026244a6a42ed4`  
		Last Modified: Thu, 05 Nov 2026 08:12:30 GMT  
		Size: 256.7 MB (256729212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:9742c13a6d23a02c8911b20f6531d14a2676a9cfaa18ca8465c4f7e015cb67bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b506c43eb423f5c2f2262c3f6b19b157aa95438bee60ae844fef0a465dc39c`

```dockerfile
```

-	Layers:
	-	`sha256:0fe11148e8ac84ba7f3410e9fb3ab9f442159ab3158cdb91793b3761ab7c5d50`  
		Last Modified: Thu, 05 Nov 2026 08:12:26 GMT  
		Size: 4.3 MB (4260553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9221fe01cc5fab2e01ec5f41e1160a6c84adf39a27f9c048265c5eac79d4e78`  
		Last Modified: Thu, 05 Nov 2026 08:12:25 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:aab7352d42d5c3cba38397a313cb4280cc7486aa5489c076c0e2036b455b61ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350446656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31e123e25bf4d93f6b32bc67b517c7601d619a92caf40592bddeea927c1bbd9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:08:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:08:11 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcd82564079cf2fa0d361b2faede7a5b8bd93507bd614e18d2d7aa5e3d3f840`  
		Last Modified: Thu, 05 Nov 2026 08:08:55 GMT  
		Size: 319.1 MB (319075897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:80a49d0853e691f7eabc2b41e69b66c2319a8f3068508bd26201e6007191a12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f1c54607c2251fc51feb5726a883a2ad1184440697a3e6dd6e2f725289527`

```dockerfile
```

-	Layers:
	-	`sha256:171826e2e34b87f80cc792361be5dd777912ef28ed29b5224d85091753708402`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 4.1 MB (4144160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:168bda9ca004d5e07f5f459c87817579179c9d817d89ef324194f21be1776a2c`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:df244d86d8224840640cebad5f2d47145e9cad529421171ac0c545ca71e137fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398198829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b574cdc3e33be86ee6beb7d624f5d4202177c1bac5304ba3cdb0c4a33f6e399b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:11:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 15:11:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 15:11:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8151d71991b777eaf4716cd8eec772870d3e106dd9d6697e1657ef044c894c`  
		Last Modified: Thu, 05 Nov 2026 15:13:26 GMT  
		Size: 364.5 MB (364531181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:faf8cfb2bd22a616279c81a88f9cc894443f4f6cc2ad69e3d13824401dda99e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f228a37a5bf8438f28446d2199ac8e2115113f353a876b5c6d32d629ee3cf`

```dockerfile
```

-	Layers:
	-	`sha256:edb366ff3e7a07cc56401a8adf9a554ffc397a5c52e0275097cc4a9b123c4e3f`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 4.2 MB (4165802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c4e5c680e39af392230dcbb01e04f6f60752884e1c80139178c26f4115df575`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; riscv64

```console
$ docker pull rust@sha256:c8966fbbf69b024da01c73f3ebb373a9ef672ce655964513e60bcdbedf7fbee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395146929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430454feeee0c64bcc2180c4994fad9cf7be546aaff03577f666e9aaef8676aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 11:58:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sun, 08 Nov 2026 11:58:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Sun, 08 Nov 2026 11:58:31 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba59c81f1eb9fa15a6c23892b9b9d80e23765ef68220c78c63925b51c7d89547`  
		Last Modified: Sun, 08 Nov 2026 12:10:07 GMT  
		Size: 366.8 MB (366800745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:41838ca6bcc939584191770ce4d213b6afa6c69bfb0c0b732d0672843828f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10075a1858e9f5ae500f9d8ce1be993614d26e9618e9dc74eca8a96b2bb2bb53`

```dockerfile
```

-	Layers:
	-	`sha256:3d2ccc262c81d8e0141c5187188bb1ef1377964a414127a68cdaa07b392daf6c`  
		Last Modified: Sun, 08 Nov 2026 12:09:15 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4d897acd9b334d1696a80767f9c5320083f6538eda7eda417051905eaeb73a`  
		Last Modified: Sun, 08 Nov 2026 12:09:14 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; s390x

```console
$ docker pull rust@sha256:34881591699d053faab9db0998c662f35b76d2d29867a30f04f94a86bb6cfaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.6 MB (381569623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506f7768f24b590a7e68a15bed9bb2088bc9157232f4147cbc9b07c38bb42fda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:38:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:38:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:38:26 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b7de5622955f8ca359f2ce90b481834ca2839252c58997e134d51866fe27c`  
		Last Modified: Thu, 05 Nov 2026 08:39:26 GMT  
		Size: 351.6 MB (351645506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:b2ed35d7d8a1de746586df79746648d800e76ceeecd34f091f987c8031406ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8642c563316b0b1653df807f1ab6719c889888df6c1da694ca49843f0b365f63`

```dockerfile
```

-	Layers:
	-	`sha256:54d2589804e2b13887ce35725264efbfaf8529614f604f429b812e2b5d25f67f`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 4.0 MB (3987095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fecd283ec9b230e444d2298ca7850eb0388ce6de5bdb250e19f8a0b556ef06c`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-bookworm`

```console
$ docker pull rust@sha256:f2c004e3d2d8b547e8cf7ffbc29205385f4e71d23e53e4e383065db5e9f822cd
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
$ docker pull rust@sha256:392f221964669402bf4ae133d2a46c3ae270f64734133f4b2703d40019235c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320758259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6253ededdef8047bd5c12ad710ef5ad84a95631fc39804161088612ae3e90e56`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:02:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:02:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:02:52 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62075da7899cbe9e0a91f5d70e8a166fe17d4766f7813eb2788b126ab247f20`  
		Last Modified: Thu, 05 Nov 2026 08:03:32 GMT  
		Size: 292.5 MB (292510277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:93f0dcce94e092e848d306ab1b450b6ba32a29fba6f611ef7306cde07fd73745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d98a8f79d15b92c89566e040bc4f90ef7312c5535ff7296b196407a2262bfb`

```dockerfile
```

-	Layers:
	-	`sha256:28ae2df61d5b26b3b5b735720f365f5baefb15aed70c24c3e93a12923c4b1739`  
		Last Modified: Thu, 05 Nov 2026 08:03:26 GMT  
		Size: 4.1 MB (4098202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ac458650404ea24249728bca29cd00d89d2934d0d6f60202d9c15ad7bfdc7f0`  
		Last Modified: Thu, 05 Nov 2026 08:03:26 GMT  
		Size: 13.3 KB (13307 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:db3f0bd5f126ce5a45f4a43661273f666f49c6ba618e5c552072f4251082ddcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.0 MB (333024624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affe7e62f10172adba170837f174cdea7c5432f91341346981eca19d562d188a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:54:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:54:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:54:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b15ddaad97e481db4d09c4772401167ebf5da0da9dbcccf7d7695ab78d6a326`  
		Last Modified: Thu, 05 Nov 2026 08:55:22 GMT  
		Size: 309.1 MB (309063268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9631f55cd1cb310f34ff97a2401df1a5e6bcf9fcd216cd2050dff1bc6c5315a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3925976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b3e72306ef80b4cdac1a2cceab582067f144bab6e957cbba83379bb1480d7`

```dockerfile
```

-	Layers:
	-	`sha256:b6136ee8b88fd07ee997ad0a88090c92836561d2037042d70e7fb35766d9cddf`  
		Last Modified: Thu, 05 Nov 2026 08:55:16 GMT  
		Size: 3.9 MB (3912589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87ef9ba5dbcf161fb134dacd896e89b93531cf096ff65e922e214a71a00601af`  
		Last Modified: Thu, 05 Nov 2026 08:55:16 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b78cfbe4c0fd96b8a06b259092f1f412cb3ad3c5aed89d188bc40a1b8637f8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280903058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171deb934b4a0af738eb82ef2dee8daa9b9d15804fa97ae9632fd5a1968e8645`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:11:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:11:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:11:48 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28456d621c3804b8387a480f20972aefc557e69bc57e11304ad78eef9313ca4`  
		Last Modified: Thu, 05 Nov 2026 08:12:24 GMT  
		Size: 252.8 MB (252758700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:ff8efa0f703a01dcc2994a29b7d3fd71b9a32f1cbf5e80b201a5b4196626d73f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3b562f93f6310f7a95f9f09aa6f7c520c538c8dc5a333d39b2d1a0aa89ddd3`

```dockerfile
```

-	Layers:
	-	`sha256:403dc145f6c9139ddf6b4cc74c906ec44920f8ac68690188897fa947930b7df0`  
		Last Modified: Thu, 05 Nov 2026 08:12:19 GMT  
		Size: 4.1 MB (4120496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bfc273c1a7a67b1962834bfd08fa5d6c1e049efdafe75ca9d012b748b207357`  
		Last Modified: Thu, 05 Nov 2026 08:12:18 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:2a47a6238daf3ae6a62acb43f588c85806e0db49808e4c0454e0adb570ef35f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.3 MB (343250090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4738b0aa416ab3b5eaf99119669b96cfb5d0a3caffe9ffb015c565ea041daa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:08:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:08:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:08:09 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fa2a8dfdf94197a7bb0f83c0d6c706699a7b2fe4b93467e51de5fd3e6b5872`  
		Last Modified: Thu, 05 Nov 2026 08:08:51 GMT  
		Size: 314.0 MB (314010878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5e537ac1283c8360085b6c338905950bca94ec169b886a5b83b385c35b1e7fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b276786bf56ba984e020e838edb6a6eb33999578ef708841d79c8e0b7cc28d36`

```dockerfile
```

-	Layers:
	-	`sha256:ccf3f0afb3911014dff90dcb37860542d19431a10f6dd0f3e68fcafe205e32e0`  
		Last Modified: Thu, 05 Nov 2026 08:08:45 GMT  
		Size: 4.1 MB (4078888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d9dfebb42b24c7d26d72314fb09298314b2388f0d5c3ca7e7845a0e4aad00b`  
		Last Modified: Thu, 05 Nov 2026 08:08:45 GMT  
		Size: 13.3 KB (13274 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:fa39d200cd60ede4bceb6f37e13abea79b9b50f16addaeadba2f80c59466fe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398336297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90d89bdc375060a2a300a83413dda45deaaffdc667d326d6c4686683099c03b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:09:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 15:09:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 15:09:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1c36515f0c75fba71852afe287f3bd272ccbb96405f9e869881fcb07719eeb`  
		Last Modified: Thu, 05 Nov 2026 15:10:42 GMT  
		Size: 366.2 MB (366242737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:483d9749d223d0ffe354f4e01608923b2b2ebb1844ddceb0629710912d2e210b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7bc03925895eb780aa96c7092cd5f44c8d16ac14814a88595eef8c7b12933d`

```dockerfile
```

-	Layers:
	-	`sha256:72504e17a1b47d3d6683dad6d53467c644ef22a8503cf53740de6ba6956ea536`  
		Last Modified: Thu, 05 Nov 2026 15:10:35 GMT  
		Size: 4.1 MB (4071794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17c1d918bd575f2292c1e65b853ab7b34d93b8f82f62a306679fb0bd45d145ed`  
		Last Modified: Thu, 05 Nov 2026 15:10:35 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-trixie`

```console
$ docker pull rust@sha256:f6c4a35d21dbb3c89d7a8d056c193e94fc09037f2b58dd858b09c39a47dd02d7
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
$ docker pull rust@sha256:e97df055c54a05160e7c67ba3b2963de6ddb95903911baf8922dbcd1b394f698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327194905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc1f85e641d7765f7cc3b867ebc0fd665ebb7fed1b156b1e9878aa36337d943`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:03:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:03:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:03:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e435aed9d6456d8431f67069e22a2c664717640ea2ca0361cbe56602b9514a2`  
		Last Modified: Thu, 05 Nov 2026 08:03:43 GMT  
		Size: 297.3 MB (297338773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:6ffba9ebe4580e7410900fd7303465b7ce192b73c7fb2266c969b1a0783fa90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2cec7f1e2e4674387d2fe33b36055c3abe654675b1c51c6d3b97bbd83244bf`

```dockerfile
```

-	Layers:
	-	`sha256:0708dc9ad0daeb6c492cffd3f6b8aadf163c5ed22453e8914d8fd4f9bdbf60ba`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 4.2 MB (4169346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27e0bb10cb91b98c21ca5fd5a8e89b2799000a7bb90843832be598ef9a12a480`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:0400183e4df544ad976cd984d7b6e2e8b484441e0bf9e316d07cd456dd4bd35a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337943104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384574104a4725000e99998e82cf71afda768573ffa11d9dea805a993023cfc9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:54:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:54:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:54:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3da5a31372541ab1bf5e318f39bf0f3fe9854a9d8730eede62ca4b5ae48d`  
		Last Modified: Thu, 05 Nov 2026 08:55:27 GMT  
		Size: 311.7 MB (311670189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:54ef50e512425b252cc8fda07911689cb15d41125b36a177c455b3c8e08c6025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99017c654280409894158fe45590a383f86938246085ab50aac9b650a324240`

```dockerfile
```

-	Layers:
	-	`sha256:35d036863a32367260d7365d6ad97bc9e9b87d0666b1daa2d264c66deac56737`  
		Last Modified: Thu, 05 Nov 2026 08:55:22 GMT  
		Size: 4.0 MB (3974215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d67aa30173d0814cf89e02fd5cf0200b0830dd455edc821d1f6aefe6ac07aa`  
		Last Modified: Thu, 05 Nov 2026 08:55:21 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:10d470c049d88eb5dbfc85612f51571edd1ebbbdade35c5d3d89d9ab8fd6bda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286943249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab624ff5404f660cfc64c0b5249c2766ba32809e21f7aa2403e72fab042ec01c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:55 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:11:55 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:11:55 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58041dfb98d1b82f6a1122a264f755c1e93993a2a6c433cca026244a6a42ed4`  
		Last Modified: Thu, 05 Nov 2026 08:12:30 GMT  
		Size: 256.7 MB (256729212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:9742c13a6d23a02c8911b20f6531d14a2676a9cfaa18ca8465c4f7e015cb67bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b506c43eb423f5c2f2262c3f6b19b157aa95438bee60ae844fef0a465dc39c`

```dockerfile
```

-	Layers:
	-	`sha256:0fe11148e8ac84ba7f3410e9fb3ab9f442159ab3158cdb91793b3761ab7c5d50`  
		Last Modified: Thu, 05 Nov 2026 08:12:26 GMT  
		Size: 4.3 MB (4260553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9221fe01cc5fab2e01ec5f41e1160a6c84adf39a27f9c048265c5eac79d4e78`  
		Last Modified: Thu, 05 Nov 2026 08:12:25 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:aab7352d42d5c3cba38397a313cb4280cc7486aa5489c076c0e2036b455b61ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350446656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31e123e25bf4d93f6b32bc67b517c7601d619a92caf40592bddeea927c1bbd9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:08:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:08:11 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcd82564079cf2fa0d361b2faede7a5b8bd93507bd614e18d2d7aa5e3d3f840`  
		Last Modified: Thu, 05 Nov 2026 08:08:55 GMT  
		Size: 319.1 MB (319075897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:80a49d0853e691f7eabc2b41e69b66c2319a8f3068508bd26201e6007191a12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f1c54607c2251fc51feb5726a883a2ad1184440697a3e6dd6e2f725289527`

```dockerfile
```

-	Layers:
	-	`sha256:171826e2e34b87f80cc792361be5dd777912ef28ed29b5224d85091753708402`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 4.1 MB (4144160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:168bda9ca004d5e07f5f459c87817579179c9d817d89ef324194f21be1776a2c`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:df244d86d8224840640cebad5f2d47145e9cad529421171ac0c545ca71e137fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398198829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b574cdc3e33be86ee6beb7d624f5d4202177c1bac5304ba3cdb0c4a33f6e399b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:11:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 15:11:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 15:11:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8151d71991b777eaf4716cd8eec772870d3e106dd9d6697e1657ef044c894c`  
		Last Modified: Thu, 05 Nov 2026 15:13:26 GMT  
		Size: 364.5 MB (364531181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:faf8cfb2bd22a616279c81a88f9cc894443f4f6cc2ad69e3d13824401dda99e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f228a37a5bf8438f28446d2199ac8e2115113f353a876b5c6d32d629ee3cf`

```dockerfile
```

-	Layers:
	-	`sha256:edb366ff3e7a07cc56401a8adf9a554ffc397a5c52e0275097cc4a9b123c4e3f`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 4.2 MB (4165802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c4e5c680e39af392230dcbb01e04f6f60752884e1c80139178c26f4115df575`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:c8966fbbf69b024da01c73f3ebb373a9ef672ce655964513e60bcdbedf7fbee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395146929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430454feeee0c64bcc2180c4994fad9cf7be546aaff03577f666e9aaef8676aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 11:58:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sun, 08 Nov 2026 11:58:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Sun, 08 Nov 2026 11:58:31 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba59c81f1eb9fa15a6c23892b9b9d80e23765ef68220c78c63925b51c7d89547`  
		Last Modified: Sun, 08 Nov 2026 12:10:07 GMT  
		Size: 366.8 MB (366800745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:41838ca6bcc939584191770ce4d213b6afa6c69bfb0c0b732d0672843828f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10075a1858e9f5ae500f9d8ce1be993614d26e9618e9dc74eca8a96b2bb2bb53`

```dockerfile
```

-	Layers:
	-	`sha256:3d2ccc262c81d8e0141c5187188bb1ef1377964a414127a68cdaa07b392daf6c`  
		Last Modified: Sun, 08 Nov 2026 12:09:15 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4d897acd9b334d1696a80767f9c5320083f6538eda7eda417051905eaeb73a`  
		Last Modified: Sun, 08 Nov 2026 12:09:14 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:34881591699d053faab9db0998c662f35b76d2d29867a30f04f94a86bb6cfaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.6 MB (381569623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506f7768f24b590a7e68a15bed9bb2088bc9157232f4147cbc9b07c38bb42fda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:38:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:38:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:38:26 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b7de5622955f8ca359f2ce90b481834ca2839252c58997e134d51866fe27c`  
		Last Modified: Thu, 05 Nov 2026 08:39:26 GMT  
		Size: 351.6 MB (351645506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b2ed35d7d8a1de746586df79746648d800e76ceeecd34f091f987c8031406ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8642c563316b0b1653df807f1ab6719c889888df6c1da694ca49843f0b365f63`

```dockerfile
```

-	Layers:
	-	`sha256:54d2589804e2b13887ce35725264efbfaf8529614f604f429b812e2b5d25f67f`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 4.0 MB (3987095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fecd283ec9b230e444d2298ca7850eb0388ce6de5bdb250e19f8a0b556ef06c`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-trixie`

```console
$ docker pull rust@sha256:8a4e90c7946b74626488b1446f712c0fe0ed1a596cbd3d871684bc9c5433ae07
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
$ docker pull rust@sha256:3ddd9771c00ed2c214d75ba497ad28691ebeaf2279476068dd191cf39b4be033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.0 MB (602009422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0313e287c47409cd6070f58562ca79d4b31a6b617702ae7913a02363ec3e8b21`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:41:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:41:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:41:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696c1fe91c64662be9b13aa92628d62d6685ab94c0b55d185258a8f762133deb`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 237.2 MB (237233076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854216d15c9fbd12e88861fe8759065d09591b3501ca868a409970e223e6afa8`  
		Last Modified: Thu, 05 Nov 2026 09:42:26 GMT  
		Size: 221.9 MB (221910754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:744068f7da13444405e8d44745e55855459a7c3e1fecec18d5e80f83342d0cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17220157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a05d74269d8b725b146547ee44014773b8d4f0639e26591265ae85a7deb6e2b`

```dockerfile
```

-	Layers:
	-	`sha256:02ef2bc4131d5ce118a58168891e0db6fa3899fadb9902c570f64e6a697e5d11`  
		Last Modified: Thu, 05 Nov 2026 09:42:22 GMT  
		Size: 17.2 MB (17204761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c81c89b2e6940fcaf6313b1fdab077993d794430844385734330822df533908e`  
		Last Modified: Thu, 05 Nov 2026 09:42:21 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:d9b6fe19158f51abdfec7c0cd1e671770d98bad3d5684a923164d71212dba10a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.0 MB (587956925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4b356e90eec63d4db99d087b199c337349cdc22b4c732a557a9f8a625b82c6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:47:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 11:47:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 11:47:40 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7eecc700173d8d52639bf67fae48bf06558352b7e8b0a9ca17bb3f4a6e1ef4`  
		Last Modified: Thu, 05 Nov 2026 10:13:30 GMT  
		Size: 194.3 MB (194322402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe2f9f07d29ceeb0eeb6ebbb8846ece1717caa04e785e752af9c405265f3d65`  
		Last Modified: Thu, 05 Nov 2026 11:48:24 GMT  
		Size: 261.4 MB (261406829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:326578bf1cd44e712974de47f00a63b302f95201df18d1f5522f2ee993ec64d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16988299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5b8c06a63da688f8a09e0b3cfce6b9d49df26086addc04b29f2eb57a5fb5fc`

```dockerfile
```

-	Layers:
	-	`sha256:dac49838e752f55a3a0f398fb75955450b233b08901b75b5f67d4e7566382389`  
		Last Modified: Thu, 05 Nov 2026 11:48:20 GMT  
		Size: 17.0 MB (16972792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b1b9b01dfc4cf25f7feeab124f5ab159e4edc8c7c1dfa08a961bf263792ea4f`  
		Last Modified: Thu, 05 Nov 2026 11:48:19 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:38618e9e8971729f1b9f25bf93aaff2dc7b7ff22a6cde1930d96fb8226756029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **556.7 MB (556732592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f921547652f195c1f3675079b1867457789a3542b1189f5e88ef56d8d4db40c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:54:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:54:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65e2c5234276be7d945d8054632dc3750c6c3de75b431be0629199b0507d80`  
		Last Modified: Thu, 05 Nov 2026 08:55:11 GMT  
		Size: 227.2 MB (227219437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb8a572c9d4333ac4cac0ffe60811d3ab93cbe91caa900b66fad1d0364fab9d`  
		Last Modified: Thu, 05 Nov 2026 09:55:37 GMT  
		Size: 187.1 MB (187063265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b234e82446ce7cbf09548c8cde27e417452ac1ab37888450c9b36af92c53fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17304026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ca4685c97943ff5214ccfde01002e2ecac1bb73d16c274a592b9fa039bc4f9`

```dockerfile
```

-	Layers:
	-	`sha256:e824b010cb4d9cf44ddfe14d38e832e0b5999b9441a61dd8659436be46aae1d9`  
		Last Modified: Thu, 05 Nov 2026 09:55:33 GMT  
		Size: 17.3 MB (17288479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dec0004e5ff85d875bcf15dd5f2f277f82576924ada8f67d2d6e6cb1bb2ac17f`  
		Last Modified: Thu, 05 Nov 2026 09:55:32 GMT  
		Size: 15.5 KB (15547 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; 386

```console
$ docker pull rust@sha256:0fd25db1eb8f7fcc873495e1cb9d8c2a6ef5687eb35c35a914bedd9e5c4f46af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.5 MB (635489978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97ecc278c8ea1e37c589c5e470549599ded31eb32c5570ee9fa346d4e31cf92`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:47:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:40:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:40:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:40:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a1ec89f2dabc60d95d6342a31d8eb5e52224414011b5d70687f9f9bfc76b84`  
		Last Modified: Thu, 05 Nov 2026 08:48:42 GMT  
		Size: 241.3 MB (241331389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda64cbe5c9c773fe9bf9b06d26557dbe937275eb74e2c5e921265e587cd024a`  
		Last Modified: Thu, 05 Nov 2026 09:40:44 GMT  
		Size: 246.6 MB (246581656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:347529b38e956d8bc22244253d7a6c5b21fc224f09edd658776a1a91d22521ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17189689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ebf4e1968d72f901cac34d92d24f8447808ba1d4df16ff5d4acd451c04988a`

```dockerfile
```

-	Layers:
	-	`sha256:b42d2de6430e6932040c43f5a74459cc96953348fdab9de89da05a40fab3fa0e`  
		Last Modified: Thu, 05 Nov 2026 09:40:40 GMT  
		Size: 17.2 MB (17174346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb21e6b89c3a1982522d9576a96234da6b24f1b71d3a7891313deb983b18bafc`  
		Last Modified: Thu, 05 Nov 2026 09:40:39 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:fc64d76655f4ff5c5b7b7dbfc7c2f671210486107ce848d4beac49f2b4e99224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **683.3 MB (683289068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997d5dfb2a629bfc4a2e52b32031b66b5c3e5759bcb0c7473102ce8344c8d5e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:51:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 06 Nov 2026 06:43:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:43:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:43:13 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74542bce662f9d2af3a537e8ff1b094e443166f8dd9befec1119fe5c43a1a52`  
		Last Modified: Thu, 05 Nov 2026 20:52:57 GMT  
		Size: 232.3 MB (232324775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aa5a31dbe37a721d6f786d120f2d33df0781916a0eef717cbc21282fb66086`  
		Last Modified: Fri, 06 Nov 2026 06:45:08 GMT  
		Size: 297.6 MB (297622032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:9c3783db4635141bb4278c1d7bdbe40edc092e8d32ed193c1acc115854d1cafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17205771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63480913ddd12594dcaa20471d3fac10408f43033cbe3e4fd8bedf45337feed2`

```dockerfile
```

-	Layers:
	-	`sha256:9afe4d103147fc748ed64fac51f5c71ea9c30407006d487579aacdb3210534ad`  
		Last Modified: Fri, 06 Nov 2026 06:45:02 GMT  
		Size: 17.2 MB (17190307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e715f54919a83fd756bd832da7e48bfe2f66e53951db07bf0b1c4f83126e63e`  
		Last Modified: Fri, 06 Nov 2026 06:45:01 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:70ed19d7d72df9d1e9bd79d9cea94231fb7b393ad843563652d6d42f9c2d8692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **736.6 MB (736604657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff0d492cbf668a67b031ee714c8ad0c9d21f5d8ca04c1646fe695219f74007c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:50:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 11:01:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 16 Oct 2026 11:01:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 16 Oct 2026 11:01:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7b3723d66e9bf982d90fb7607b939da5f6f73b5ffb86e95027a0feed4cc7b`  
		Last Modified: Sat, 10 Oct 2026 07:06:05 GMT  
		Size: 324.1 MB (324123927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b31c99f621e11836f36b603a0586eb350a8f3391dabf960ed533cbd1f70d651`  
		Last Modified: Fri, 16 Oct 2026 11:17:05 GMT  
		Size: 272.9 MB (272926301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:febda67e568785ec9b14d1d27ef3afadecd9163f0b0eae2b3c1fa0e42365caa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17279120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc5114aa4bc4d2ce97733e712139675b1fe57f093afbf5cfaf90851c5eb887`

```dockerfile
```

-	Layers:
	-	`sha256:650e42278b7674b33ffcea3de507bf34eec219a5d091d21d15cb3c7d9f81828f`  
		Last Modified: Fri, 16 Oct 2026 11:16:28 GMT  
		Size: 17.3 MB (17263656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9380039cc225a10be3dda2f4a2cc5bf9b507f71955ce1dec7b514249de1b82fc`  
		Last Modified: Fri, 16 Oct 2026 11:16:23 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; s390x

```console
$ docker pull rust@sha256:bcb1eff0fb3a7d221628e4b674f614327eee2145fb06c0c227b16089453598d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.9 MB (651888263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef35dd257e81a2e33a3b56b01520c24cc91d3d31c6a1f6d845722cd9b1d1bca7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:52:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 10:52:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 10:52:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7037e61e2f2a3cdeeb35dbe7d9c3b9055786ef002e1958d14c5bdd10287c77c3`  
		Last Modified: Thu, 05 Nov 2026 09:21:55 GMT  
		Size: 207.7 MB (207650334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358bd891fa8af2de13dca5a9b751fe3d2ea871b6c5711f31ad47a4f6032c65d0`  
		Last Modified: Thu, 05 Nov 2026 10:53:19 GMT  
		Size: 299.3 MB (299275386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b7bc08ca82fd7b24404fc5a67f1a1c6cdd8e36ab13917543d1dbd414b6da484b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16997389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1981dd79aa64431396ec5fcf14a8e959e5212685fc0f13070b9bbd1ac66ef5b`

```dockerfile
```

-	Layers:
	-	`sha256:ebdfb3c9481a429d54df4b8cf3ae505e44eca592ea5151811721bae7117f2107`  
		Last Modified: Thu, 05 Nov 2026 10:53:15 GMT  
		Size: 17.0 MB (16981993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d24c8ed9a392c64618c478ae5a50564948d6c75cc19f56d61c9c79cba6a2ca2`  
		Last Modified: Thu, 05 Nov 2026 10:53:14 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.100`

**does not exist** (yet?)

## `rust:1.100-alpine`

**does not exist** (yet?)

## `rust:1.100-alpine3.21`

**does not exist** (yet?)

## `rust:1.100-alpine3.22`

**does not exist** (yet?)

## `rust:1.100-alpine3.23`

**does not exist** (yet?)

## `rust:1.100-alpine3.24`

**does not exist** (yet?)

## `rust:1.100-bookworm`

**does not exist** (yet?)

## `rust:1.100-slim`

**does not exist** (yet?)

## `rust:1.100-slim-bookworm`

**does not exist** (yet?)

## `rust:1.100-slim-trixie`

**does not exist** (yet?)

## `rust:1.100-trixie`

**does not exist** (yet?)

## `rust:1.100.0`

**does not exist** (yet?)

## `rust:1.100.0-alpine`

**does not exist** (yet?)

## `rust:1.100.0-alpine3.21`

**does not exist** (yet?)

## `rust:1.100.0-alpine3.22`

**does not exist** (yet?)

## `rust:1.100.0-alpine3.23`

**does not exist** (yet?)

## `rust:1.100.0-alpine3.24`

**does not exist** (yet?)

## `rust:1.100.0-bookworm`

**does not exist** (yet?)

## `rust:1.100.0-slim`

**does not exist** (yet?)

## `rust:1.100.0-slim-bookworm`

**does not exist** (yet?)

## `rust:1.100.0-slim-trixie`

**does not exist** (yet?)

## `rust:1.100.0-trixie`

**does not exist** (yet?)

## `rust:alpine`

```console
$ docker pull rust@sha256:44819b27be4c97b0e4d7203bd2e02c4820f97700211b6a37fb4c246a2de59383
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:alpine` - linux; amd64

```console
$ docker pull rust@sha256:2c83bf1a38975801abfd05e92387242ab4d5f96fe05131e2a279f3009ad16393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352121318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40abe462ed26e555a0f7b7955254c583389f419045e7204f77ef75434fda4151`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:35:25 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:35:25 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:35:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:35:41 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fbbe986ae10ecc3202a26f4e055940448e66ac0b03e825d9b9298c615ecc5f`  
		Last Modified: Thu, 05 Nov 2026 19:36:17 GMT  
		Size: 75.1 MB (75077184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685a3e642af459d703470d529121ff1bf5aea0ab151f83e1af6ef46128cd0d1f`  
		Last Modified: Thu, 05 Nov 2026 19:36:21 GMT  
		Size: 273.2 MB (273190461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:495a0f50dd905ffe892458084ca6bee487c939833488c4420d272ab67c7283ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73d82f665fcea07051f2cd44d87fddfb1b5c53ff5bfa7a1cc3cc4df0f8666ea`

```dockerfile
```

-	Layers:
	-	`sha256:f29953a60d9332b81bff2b5bdadc5d979d931ecc694b32d068c2fedc3688c844`  
		Last Modified: Thu, 05 Nov 2026 19:36:14 GMT  
		Size: 988.6 KB (988552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efc4daee14a29b1cbf54d40a4958d4113150267cda75e1727b27305a77188a17`  
		Last Modified: Thu, 05 Nov 2026 19:36:14 GMT  
		Size: 14.0 KB (13980 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:0a555e8b51945db91fd7b8411b4272bb5b8bfa04261d31eaeb2ada564bc02632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351110062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a01cbf903e1ed14014bd087f2969bfdfa4bb5a46336ca44144834b1043a5343`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:39:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:39:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:39:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:39:52 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb2ce395cf59a4915b81411f62f60e586e2c27970543166cf5d78eaf4c139b`  
		Last Modified: Thu, 05 Nov 2026 19:40:27 GMT  
		Size: 66.5 MB (66508260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b20a1e303dd27a6338694831665a3fc6b6ad3d9843873e5ac084421730913f9`  
		Last Modified: Thu, 05 Nov 2026 19:40:31 GMT  
		Size: 280.4 MB (280411207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:9d6cb1dd01da907b557b40b28bf5aa9835e529427b67f66c1a5a4b9c885a3a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc7dd702db3c54b6d589b9f7140524af9d26634346b416931ee6f3bbd430444`

```dockerfile
```

-	Layers:
	-	`sha256:1ce3388581500df6ba1e9ea07692c2c820fbddcc5b2ae467884964d37ad25ebc`  
		Last Modified: Thu, 05 Nov 2026 19:40:24 GMT  
		Size: 1.0 MB (1047503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de045ae33a45ce9a06e67b77c5eba7657942a42586f8905da2d0a1b90fb54417`  
		Last Modified: Thu, 05 Nov 2026 19:40:24 GMT  
		Size: 14.1 KB (14149 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:dd373188d8d974ecfa07201cf62a3db0ecd4cc22402b32bc195ac2fa275421b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367083239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94af2b1b9ffa5282abd65bbffcbc6ef41eeb5e49c790ed13dd760a6c6a8bef`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:49:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:49:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:49:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:49:52 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67ee2e446208abef829fae7e1066334740dfdafd65ad74550cd633bcc350c`  
		Last Modified: Fri, 06 Nov 2026 06:51:08 GMT  
		Size: 66.4 MB (66394990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18edd273d091dd9c1dcd02a5065df3b4b799847cad7a490d2ffb43e94deccb9c`  
		Last Modified: Fri, 06 Nov 2026 06:51:12 GMT  
		Size: 296.9 MB (296866329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:445b6a262614def471a44d789052d803738ee8cdbcc66c1c6fec3953948135c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.1 KB (996149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6281b8ea43db9562d67d7555d6a2dc23c4abbd8d4e5a8f9978035655138766ee`

```dockerfile
```

-	Layers:
	-	`sha256:c1142a7d385ee4ca863b1e0cb0cc3bdce04b25a8979b37b0cad4473954004110`  
		Last Modified: Fri, 06 Nov 2026 06:51:04 GMT  
		Size: 982.1 KB (982097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2abd6907d75a19a567dff0ec7b78111ab55d2884a1ad2a87deb405f1192b20e1`  
		Last Modified: Fri, 06 Nov 2026 06:51:04 GMT  
		Size: 14.1 KB (14052 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; riscv64

```console
$ docker pull rust@sha256:3a5e1d5d5da294742fe27eebdfdc91eb153c63d2e8127e1f75a9baf6fd163128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359199531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630f8bf01029e57fecd926d6de3c1bb0f73cef42036c329acc12ff893c1682a3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:41:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:41:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:41:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:42:29 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db23c5c0afe5d6514814546873347e10bba12ecc3fdb21d02055269f8b4a6991`  
		Last Modified: Thu, 05 Nov 2026 00:50:52 GMT  
		Size: 82.7 MB (82744033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e1bea2a487b36e035e7b1d5316d9b85e660b47e96dce50420746bf1564d508`  
		Last Modified: Thu, 05 Nov 2026 00:51:18 GMT  
		Size: 272.9 MB (272874851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:f4403ab62950053920d261fe0fe558b5fa2f43e33872e318aad477a6e7c8ebb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1050369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb211fc6cfe4a88f499afd120da30bfbf4f9a82ad00cee47fb08d9bca82cf177`

```dockerfile
```

-	Layers:
	-	`sha256:5ca8668d413922ac610961faadc38ec459eedf2df5640d75b0fe490a77e93da6`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 1.0 MB (1036318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17331c6c1335ee6cef5ab0f33a4ae5397a9d22068b8de434eee72af269d95d94`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 14.1 KB (14051 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.21`

```console
$ docker pull rust@sha256:ca6b16892e45db874bfa2bc2d2e591c2e9cd7e3ace77f9bac62e4e81bc893d89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:alpine3.21` - linux; amd64

```console
$ docker pull rust@sha256:0cd832ea4ffca2da1ef0ab7f9e099c96d016501f25233da746981b3af0ba5e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341801781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c5c5e55404e78f301b56580df3e7f102e7782094e634a0b5094e07082bb3df`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:34:15 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:34:15 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:34:15 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:34:32 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036f8f9673c94393e25cb8dfb3edab2bcd6d5fa2c441e346f48383ce9a2ae3bf`  
		Last Modified: Thu, 05 Nov 2026 19:35:07 GMT  
		Size: 65.0 MB (64986028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ca5120b59b9ba94335f9cbcd246d14a96fe0a00f533a761462d5a6f57b7006`  
		Last Modified: Thu, 05 Nov 2026 19:35:10 GMT  
		Size: 273.2 MB (273190351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:ce5a0b6a23d76f2851edd671011963b8eea9d6918321ac610f1640f9550f265e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **954.8 KB (954792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309f01fcb61fd2de747a967464bb33030ed285218f3186f65284cda74996b3df`

```dockerfile
```

-	Layers:
	-	`sha256:6f6c6774817ec5d795e9c9fc4bf4b9011951cc72eed74dd2ef6f573ecac31c02`  
		Last Modified: Thu, 05 Nov 2026 19:35:04 GMT  
		Size: 942.0 KB (942014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22bc7424726262943610b6e07f55a50f1733a14c69f3a6505b0c90dd0336fa32`  
		Last Modified: Thu, 05 Nov 2026 19:35:04 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a2a5cda7db01c37a88507ca9929cbc4b540c9c22ee04d48059bae3138696fbab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.0 MB (346048622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61be65439394aa9476270fe8f1c0eb4ddc65235fb3679348c5fd5357caeea013`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:38:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:38:32 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:38:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:38:46 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de512db3795ef6a3e23d474b10084abdbd387b56d079c70cf3656152e38c2a3`  
		Last Modified: Thu, 05 Nov 2026 19:39:20 GMT  
		Size: 61.7 MB (61662951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e096a35b7ddf5cf800f0f8df22c691c60a87252893b4a221bc154483a831a8a7`  
		Last Modified: Thu, 05 Nov 2026 19:39:24 GMT  
		Size: 280.4 MB (280411248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:9df800f712f1e28192cbd072ac9a77b7278c2f55fb97c651ff94435f5d3579ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1034235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a965b43f23b226183d6d6a2fd269e27a57198966b36625cc4201ed0ba30636`

```dockerfile
```

-	Layers:
	-	`sha256:001e36eb16bab80308dfdf7cc71c3912baad2c4048ca4d1c24fb9e0c09a67da8`  
		Last Modified: Thu, 05 Nov 2026 19:39:18 GMT  
		Size: 1.0 MB (1021338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52bf77d3ec120d601cdccac8a71a0617f373a9cbf8a2946dbec923fd7fb4d185`  
		Last Modified: Thu, 05 Nov 2026 19:39:17 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:48ba782c57d9937891142b58b5efff5364b9866def9c166f27a0f4f4d6798bed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.9 MB (361899819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cf74404f8d0ee9699d78bf14dc6b90ccd53424e29d287e9f6df045b4f1b55c7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:14 GMT
ADD alpine-minirootfs-3.21.10-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:14 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:44:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:44:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:44:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:44:32 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e31aa04035baf79a581d007cc1c93d4abe6462df974b67e564cc540df6845323`  
		Last Modified: Thu, 05 Nov 2026 20:44:22 GMT  
		Size: 3.6 MB (3558023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b185724b138020d162c878b4e0e112efaa479f3c5941f6e0972df6987ccd3f`  
		Last Modified: Fri, 06 Nov 2026 12:42:38 GMT  
		Size: 61.5 MB (61475354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63184e6a968921ff9051797786cbf0b3e227826ebcfc7279c31c690a45bf314`  
		Last Modified: Fri, 06 Nov 2026 12:42:42 GMT  
		Size: 296.9 MB (296866442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:78aa18981f977e1ccea16b821b3c012853bf0eb0222184e1f7ec48f62bf9c198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **968.7 KB (968687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ecb3bad503e10633f66810beb289a9b9022deef65575b4b28d8705bcbd03b1`

```dockerfile
```

-	Layers:
	-	`sha256:af75744a82c1caa67edef13826b533dfe25228844b5bc29d481c350ce95a175c`  
		Last Modified: Fri, 06 Nov 2026 12:42:35 GMT  
		Size: 955.9 KB (955863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd4bbe9d15eec7eff30cf77598b82ddafff85c6bf9761e7ae5efdfb8cd44a53`  
		Last Modified: Fri, 06 Nov 2026 12:42:35 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; riscv64

```console
$ docker pull rust@sha256:fbb5b8ea40f93c17cea8a28016568483903fd9e44a952c4aa5aa8cd4e9c111f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350563950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babf588dda88af6e441c19e8cdd29720102da393b4023e42f20f06c9b0f05659`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 05:00:23 GMT
ADD alpine-minirootfs-3.21.9-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 05:00:23 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:05:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:05:45 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:05:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:06:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:643eca146d1a96f3341a61349fb18d6672657279623f35a5072344018f8aa0f0`  
		Last Modified: Fri, 23 Oct 2026 05:00:57 GMT  
		Size: 3.3 MB (3336841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d1b8b395a77d5ac36590b6276efe6aca87fdb2243fbcbe41ba3631383cef1`  
		Last Modified: Thu, 05 Nov 2026 00:15:07 GMT  
		Size: 74.4 MB (74352319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ce07182754594671f85e85e6656251983e2ee564609ecaba356f51c0d1eded`  
		Last Modified: Thu, 05 Nov 2026 00:15:36 GMT  
		Size: 272.9 MB (272874790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:8e91019b1d805b06de7854bfb12dd5a5f6fc0f0a2bb8f0dc8a777cba2c7e77d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1021710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fd193161265eb2dfc12ae8abbba3bf426f395fa751cc1fbc0a2bec56dc7490`

```dockerfile
```

-	Layers:
	-	`sha256:2c23a1c6efd85b23b6f70234edd95986287762cfdb86f1bee64dfcd98366617f`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 1.0 MB (1008886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6beceaea862104811d3c4b306642d3365fec51cb853b422229f6582ec93386b2`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.22`

```console
$ docker pull rust@sha256:9a744dc47d1ac2a7d17fc3cedfc8b4928b1696dfcba3274ab25bfb40988a9ff0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:alpine3.22` - linux; amd64

```console
$ docker pull rust@sha256:186d884d01890fa10b3fd618aeef3292c8360ed68d9ee62d086ffa664c886df1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (342023467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c632333dbeb0e4436daf9c773ac7a900f72fb1c88c0581813da19461ada009c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:35:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:35:04 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:35:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:35:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f9f210fe47340120f20c48972a76b190ccf0c23ec9f072d488c84a4dfea4e0`  
		Last Modified: Thu, 05 Nov 2026 19:35:56 GMT  
		Size: 65.0 MB (65038530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d448719dd02c86a11658c6ee2eb3c0d23eddb3bd4bee4335e3ef07f399eb582`  
		Last Modified: Thu, 05 Nov 2026 19:36:00 GMT  
		Size: 273.2 MB (273190562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:b047e06c04d18da0af54049deefe1409d6adf42e9073fcbc0fa11a9fa7a95835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.6 KB (955566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf84ee554f57b56ccbe1af021594362ed6f086696dd1bf80773d6524eced6e5f`

```dockerfile
```

-	Layers:
	-	`sha256:49c8b00e575b3dc8e3f300f078512aada661ae00aeafaebfe620af377d63e7d1`  
		Last Modified: Thu, 05 Nov 2026 19:35:54 GMT  
		Size: 942.8 KB (942788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bffee5b8b68c2958fb3c0b26fe708a38f453ed8ab43093802dfe9bfe4621aaa2`  
		Last Modified: Thu, 05 Nov 2026 19:35:54 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:071b9691c59053af3d58d4a029e8b0c1cdc95b3f3369ec5777a5c822587fabec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.3 MB (346250751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5b70e7dc8603f958fabc583dc34cf83dfda19c11b61645a1e7a5cf7a350dd3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:38:37 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:38:37 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:38:37 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:38:52 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1013a199ce83d099c59fa1a15f94a05c8070636a6dac3697eb05abee469865d0`  
		Last Modified: Thu, 05 Nov 2026 19:39:26 GMT  
		Size: 61.7 MB (61712257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c1033e5ea0295af6becca9c978645c7ef7c83119d5866a023f519d37ba8d36`  
		Last Modified: Thu, 05 Nov 2026 19:39:30 GMT  
		Size: 280.4 MB (280411109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:7b5cb8b3ff097f7cfcfc77a71174dbf410e359e3690bdd231aa03337c4868362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2150e82a3ecb9441431e17ea24b0c50e5e094b5a6b71c9db62b23526d3809e`

```dockerfile
```

-	Layers:
	-	`sha256:b4cac6f36a7a6d755a2dbaa889376a1167451c574c5144456e73efba860f2077`  
		Last Modified: Thu, 05 Nov 2026 19:39:24 GMT  
		Size: 1.0 MB (1022112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ebb0f05757ea3d5f59c5438490423b4423c4b1140115dfb06f35dbc23734cba`  
		Last Modified: Thu, 05 Nov 2026 19:39:24 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:72ce46e42a7b3c8d5c867ddb07aba6b7799ef339baa7b91155b5d6d929ff9c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.1 MB (362110878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9338f2f644c055df2d8b36184524b30c7d640d00a8e3b7081c415a3fb684ebc7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:11 GMT
ADD alpine-minirootfs-3.22.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:11 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:45:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:45:24 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:45:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:45:44 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4be1a473c77a45524d8389eeb78602a090c801a1ec4c4187ac5060cd906c4712`  
		Last Modified: Thu, 05 Nov 2026 20:44:20 GMT  
		Size: 3.7 MB (3725514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34407d3ba2b8de9998c7c59662ad5c458c49e5896eccba14d96cc0e10dc90c31`  
		Last Modified: Fri, 06 Nov 2026 06:47:01 GMT  
		Size: 61.5 MB (61518962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db712d8a36494df09bc1ddf1b69b550a79884f493726e21102b0eb7e4a88850f`  
		Last Modified: Fri, 06 Nov 2026 06:47:05 GMT  
		Size: 296.9 MB (296866402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:dd661eb0579f142a2ed099a9d012740a8467416c77ad4cc1c805ba9b8da3e857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e71d29bdd92b5cde55ac27cdebfc47b4edc08768953cbd5eaa4c1a0f8d827a`

```dockerfile
```

-	Layers:
	-	`sha256:9733d9fcfcda186371f53a19feb7ad5db0da3f36f38daec7324a1d393b379501`  
		Last Modified: Fri, 06 Nov 2026 06:46:58 GMT  
		Size: 956.6 KB (956637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:132050bcbdd57e894ad6f3f5eb142d8abe4a8234a5644da20e13061fda4d5353`  
		Last Modified: Fri, 06 Nov 2026 06:46:58 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; riscv64

```console
$ docker pull rust@sha256:705e6d03efb1ff37e7308ce613d85fa7adddfe6c1f8b0cd3947fc5c6cf65a1ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.8 MB (350805816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49bdb81c3779c79163f33cb15d2c2457a5bdeadcb3f206ab0b82da16164a926`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:58:08 GMT
ADD alpine-minirootfs-3.22.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:58:08 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:17:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:17:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:17:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:18:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8ac0a590d56e5959a275a0d1ee0a48b4b3f07fa6305e9f047ef5accff095605b`  
		Last Modified: Fri, 23 Oct 2026 04:58:43 GMT  
		Size: 3.5 MB (3512898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db417513f424f710fdbda1c44d1acec75fd31faf2801672cdcc9ad6f364acf19`  
		Last Modified: Thu, 05 Nov 2026 00:27:13 GMT  
		Size: 74.4 MB (74418133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa70d9f60becab3d64fbecc12b3481c93105b7003253210f7bd8898a901d6320`  
		Last Modified: Thu, 05 Nov 2026 00:27:41 GMT  
		Size: 272.9 MB (272874785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:d23b015dc37139b524c7e3f128c9a2b1749d097999ee6e1a69704072d0bb6898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1022490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b06a0b72b9fad542ebbb7914b64012c3f318bc141f246f51b1b16a422d7b2f0`

```dockerfile
```

-	Layers:
	-	`sha256:b66b0290b2ef100ec00b4c46a368e1dd5cd8c6f7780de0baebcdc911633e90bf`  
		Last Modified: Thu, 05 Nov 2026 00:26:51 GMT  
		Size: 1.0 MB (1009666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a86a7911c75ce5287a5f10be621656787470e71e1187e5878166a52b813f8b25`  
		Last Modified: Thu, 05 Nov 2026 00:26:51 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.23`

```console
$ docker pull rust@sha256:51e1b72c7f236093c084f6e3051239f033fba9e4c0c1430cc2ed479d0a3bd14c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:alpine3.23` - linux; amd64

```console
$ docker pull rust@sha256:736464ed77752aa6c4c26dd245cd8b85bd82612330921090c267e26e0efd9fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352108455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:593cf33347127d04f6a719d17bbf3e8c30d27661ceddbd26089b33bea57e1594`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:35:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:35:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:35:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:35:29 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b992ac8d57669329a04831e4e5d1425b5d8990e46b05695396bec3b1402071`  
		Last Modified: Thu, 05 Nov 2026 19:36:09 GMT  
		Size: 75.1 MB (75065447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a37b8f1620b0be421fcca03c7d7ae2f21add819ec6a38115215fbc7c24abb6`  
		Last Modified: Thu, 05 Nov 2026 19:36:12 GMT  
		Size: 273.2 MB (273190419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:5508517083c9de558509e8e5d77391905af4bfdcf28f6618a6da006d67e38824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **999.2 KB (999193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2ec5c2909c867c4085c130ed4293939f3ec9946b8233b6fae07f7b561e4889`

```dockerfile
```

-	Layers:
	-	`sha256:91d0f1879487830ab10231a815a3ef2b33492c860b86bae7ae3aaf529a4604e6`  
		Last Modified: Thu, 05 Nov 2026 19:36:06 GMT  
		Size: 986.4 KB (986415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e58a572cb566332c313e99ce2f25c5850b94481c244c2988b8cee8550df961e2`  
		Last Modified: Thu, 05 Nov 2026 19:36:06 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:fcfbb06178f0644c8eda5e2aea022fb13a6edcdd7585eed78f33415f4ee1eb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351095542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218385fce0c7359890ba1a44d9ba85edd557d9d2cae62f8e0631d554dd041d3d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:39:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:39:31 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:39:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:39:46 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2ce25a1bbdbd9cc7ee1ef7ed98016856302bba094a4230eedded1f87a55d46`  
		Last Modified: Thu, 05 Nov 2026 19:40:20 GMT  
		Size: 66.5 MB (66494227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000eb9b18aad8e7dfebcc23999f055c3623fab41cb517df178ce86f28a327edb`  
		Last Modified: Thu, 05 Nov 2026 19:40:24 GMT  
		Size: 280.4 MB (280411094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:8a24c4f3b0b4d457e23348f2dce26ad82e5fd4d5ae8ad2c8224c942a3bdce7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1058320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1314a9be9e2960995edcc3c08902d96f1569e1be709a3d27b17538e7fba0e81`

```dockerfile
```

-	Layers:
	-	`sha256:2635e71eaceca1c087d14c8c901c4616f289ebff99140c29268d9eaac49f6905`  
		Last Modified: Thu, 05 Nov 2026 19:40:18 GMT  
		Size: 1.0 MB (1045424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d528f54c45bf90d5313f9a0abae24e230b1533bbca681bcb6a06afce682afbda`  
		Last Modified: Thu, 05 Nov 2026 19:40:18 GMT  
		Size: 12.9 KB (12896 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:5dde5b7de18ea8e8a9f69f93127831752f3306c068413fbe66b1b23b8e0d948d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367059420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044dac9589a1fba263500222dfec8e738af60b9284d83a0da96972b0829bbc7b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:47:21 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:47:21 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:47:21 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:47:42 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4127791b238828d80fee145087354f035184c92e5df6d5d17c22a0c8ba894b1`  
		Last Modified: Fri, 06 Nov 2026 06:49:01 GMT  
		Size: 66.4 MB (66374111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79c31ef9e87bb8f76e1453b3e78f8192d0fba263a54b609f3af57534f06b0648`  
		Last Modified: Fri, 06 Nov 2026 06:49:05 GMT  
		Size: 296.9 MB (296866303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:b2c495a7938b08a56da10218f1edc95336286b2018e27c7b8b5a400627daa149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **992.9 KB (992865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2222db9e91911ba8078d67932ce0807e0881bf13056be6ffe4baffcbc2e6bb37`

```dockerfile
```

-	Layers:
	-	`sha256:52e21342272ce230e254c2295dad98919488912de826fa3e05bfe013da538681`  
		Last Modified: Fri, 06 Nov 2026 06:48:58 GMT  
		Size: 980.0 KB (980042 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:802d9ebbaf5e87ee3a1cba68417a3ab421b6e1d3ba1775ac28f2f5e2e7b3e033`  
		Last Modified: Fri, 06 Nov 2026 06:48:58 GMT  
		Size: 12.8 KB (12823 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; riscv64

```console
$ docker pull rust@sha256:78e9277d799489ff56fa421e152e97e0b5af5607c5becb39d798a04f18f20826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359156273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00ce53ec04515a5c327f703fca92411e3c67b46aeaa04566c39c57627f992cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:29:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:29:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:29:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:30:43 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e59d8e57499165a1ec23f17d333091ae379c949c0f0a4d0a0a216a9efd54f97`  
		Last Modified: Thu, 05 Nov 2026 00:39:02 GMT  
		Size: 82.7 MB (82701801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d1089f8d1a15f6512213a01d8f5f84d448b03774642cbcc2ab9cd282f2f465`  
		Last Modified: Thu, 05 Nov 2026 00:39:29 GMT  
		Size: 272.9 MB (272874860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:8474e1b0bf7ee8dfe919465a23daabec3a950cabfa2c35a036942acd61d26340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1047087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695c79acc8734f0a8bef51415d4be1cf4adbfb070c463a4430d64ae7dc53d933`

```dockerfile
```

-	Layers:
	-	`sha256:7ae80579a9d7fc34f5635bbbce86857a6d958abd140ae4ba3a948e4d8b4129eb`  
		Last Modified: Thu, 05 Nov 2026 00:38:38 GMT  
		Size: 1.0 MB (1034263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0414e85cd34c0ff89fb6f8234e27214afe512557faa1046eb4c6daf7ab705c3`  
		Last Modified: Thu, 05 Nov 2026 00:38:38 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.24`

```console
$ docker pull rust@sha256:44819b27be4c97b0e4d7203bd2e02c4820f97700211b6a37fb4c246a2de59383
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown

### `rust:alpine3.24` - linux; amd64

```console
$ docker pull rust@sha256:2c83bf1a38975801abfd05e92387242ab4d5f96fe05131e2a279f3009ad16393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352121318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40abe462ed26e555a0f7b7955254c583389f419045e7204f77ef75434fda4151`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:35:25 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:35:25 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:35:25 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:35:41 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fbbe986ae10ecc3202a26f4e055940448e66ac0b03e825d9b9298c615ecc5f`  
		Last Modified: Thu, 05 Nov 2026 19:36:17 GMT  
		Size: 75.1 MB (75077184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:685a3e642af459d703470d529121ff1bf5aea0ab151f83e1af6ef46128cd0d1f`  
		Last Modified: Thu, 05 Nov 2026 19:36:21 GMT  
		Size: 273.2 MB (273190461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:495a0f50dd905ffe892458084ca6bee487c939833488c4420d272ab67c7283ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1002532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73d82f665fcea07051f2cd44d87fddfb1b5c53ff5bfa7a1cc3cc4df0f8666ea`

```dockerfile
```

-	Layers:
	-	`sha256:f29953a60d9332b81bff2b5bdadc5d979d931ecc694b32d068c2fedc3688c844`  
		Last Modified: Thu, 05 Nov 2026 19:36:14 GMT  
		Size: 988.6 KB (988552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efc4daee14a29b1cbf54d40a4958d4113150267cda75e1727b27305a77188a17`  
		Last Modified: Thu, 05 Nov 2026 19:36:14 GMT  
		Size: 14.0 KB (13980 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:0a555e8b51945db91fd7b8411b4272bb5b8bfa04261d31eaeb2ada564bc02632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.1 MB (351110062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a01cbf903e1ed14014bd087f2969bfdfa4bb5a46336ca44144834b1043a5343`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:39:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 19:39:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 19:39:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 19:39:52 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb2ce395cf59a4915b81411f62f60e586e2c27970543166cf5d78eaf4c139b`  
		Last Modified: Thu, 05 Nov 2026 19:40:27 GMT  
		Size: 66.5 MB (66508260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b20a1e303dd27a6338694831665a3fc6b6ad3d9843873e5ac084421730913f9`  
		Last Modified: Thu, 05 Nov 2026 19:40:31 GMT  
		Size: 280.4 MB (280411207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:9d6cb1dd01da907b557b40b28bf5aa9835e529427b67f66c1a5a4b9c885a3a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1061652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cc7dd702db3c54b6d589b9f7140524af9d26634346b416931ee6f3bbd430444`

```dockerfile
```

-	Layers:
	-	`sha256:1ce3388581500df6ba1e9ea07692c2c820fbddcc5b2ae467884964d37ad25ebc`  
		Last Modified: Thu, 05 Nov 2026 19:40:24 GMT  
		Size: 1.0 MB (1047503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de045ae33a45ce9a06e67b77c5eba7657942a42586f8905da2d0a1b90fb54417`  
		Last Modified: Thu, 05 Nov 2026 19:40:24 GMT  
		Size: 14.1 KB (14149 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:dd373188d8d974ecfa07201cf62a3db0ecd4cc22402b32bc195ac2fa275421b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367083239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa94af2b1b9ffa5282abd65bbffcbc6ef41eeb5e49c790ed13dd760a6c6a8bef`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:49:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:49:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:49:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:49:52 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f67ee2e446208abef829fae7e1066334740dfdafd65ad74550cd633bcc350c`  
		Last Modified: Fri, 06 Nov 2026 06:51:08 GMT  
		Size: 66.4 MB (66394990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18edd273d091dd9c1dcd02a5065df3b4b799847cad7a490d2ffb43e94deccb9c`  
		Last Modified: Fri, 06 Nov 2026 06:51:12 GMT  
		Size: 296.9 MB (296866329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:445b6a262614def471a44d789052d803738ee8cdbcc66c1c6fec3953948135c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **996.1 KB (996149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6281b8ea43db9562d67d7555d6a2dc23c4abbd8d4e5a8f9978035655138766ee`

```dockerfile
```

-	Layers:
	-	`sha256:c1142a7d385ee4ca863b1e0cb0cc3bdce04b25a8979b37b0cad4473954004110`  
		Last Modified: Fri, 06 Nov 2026 06:51:04 GMT  
		Size: 982.1 KB (982097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2abd6907d75a19a567dff0ec7b78111ab55d2884a1ad2a87deb405f1192b20e1`  
		Last Modified: Fri, 06 Nov 2026 06:51:04 GMT  
		Size: 14.1 KB (14052 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; riscv64

```console
$ docker pull rust@sha256:3a5e1d5d5da294742fe27eebdfdc91eb153c63d2e8127e1f75a9baf6fd163128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359199531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:630f8bf01029e57fecd926d6de3c1bb0f73cef42036c329acc12ff893c1682a3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:41:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:41:26 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:41:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:42:29 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db23c5c0afe5d6514814546873347e10bba12ecc3fdb21d02055269f8b4a6991`  
		Last Modified: Thu, 05 Nov 2026 00:50:52 GMT  
		Size: 82.7 MB (82744033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e1bea2a487b36e035e7b1d5316d9b85e660b47e96dce50420746bf1564d508`  
		Last Modified: Thu, 05 Nov 2026 00:51:18 GMT  
		Size: 272.9 MB (272874851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:f4403ab62950053920d261fe0fe558b5fa2f43e33872e318aad477a6e7c8ebb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1050369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb211fc6cfe4a88f499afd120da30bfbf4f9a82ad00cee47fb08d9bca82cf177`

```dockerfile
```

-	Layers:
	-	`sha256:5ca8668d413922ac610961faadc38ec459eedf2df5640d75b0fe490a77e93da6`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 1.0 MB (1036318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17331c6c1335ee6cef5ab0f33a4ae5397a9d22068b8de434eee72af269d95d94`  
		Last Modified: Thu, 05 Nov 2026 00:50:28 GMT  
		Size: 14.1 KB (14051 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:bookworm`

```console
$ docker pull rust@sha256:e6f2cff35d0f309acf8433b4f05878ed77092602c5065cc81801177da0bb3a9c
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
$ docker pull rust@sha256:4715c3ad743951a3cea90e8b432f2a17e0ef5f3f3c3abf75108879e783b396f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.6 MB (570569578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:527305910196eafb3720343101dcf3ff7c788f350dd132a5c6b9daa1f65729bd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:31:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:53:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:41:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:41:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:41:47 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:338554e9113fa6731ba588cb8f45e85b3e3fe7ada531ee7d7b0bc9291d616727`  
		Last Modified: Thu, 05 Nov 2026 07:38:11 GMT  
		Size: 23.9 MB (23873217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c30932f8d3f5798b438cce12cdf6cebb1717b52f51e22ff010b4d86667031d`  
		Last Modified: Thu, 05 Nov 2026 08:31:58 GMT  
		Size: 64.4 MB (64432621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bab93d346cda15207e5a5000093cee7256ec1092fb689ec3d2997faf31b9a16`  
		Last Modified: Thu, 05 Nov 2026 08:54:13 GMT  
		Size: 211.8 MB (211826577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197527a0befa9c2f78706cf912319f641d33cfc011bd35c5041d98ea2e27c87d`  
		Last Modified: Thu, 05 Nov 2026 09:42:29 GMT  
		Size: 221.9 MB (221910680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:dccc07f763c57e2d936e91a45bb9b481c73f3841ed6704fe71b9cd613757d12d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15881977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab858b6130a0e6fb118c6660c0bb84b43ab33a48ff7d89c859220b26d69149fa`

```dockerfile
```

-	Layers:
	-	`sha256:b2846a19bd5f63c6aa2260aeaa906df0f7385a942d2d78b748bba0526ed650f0`  
		Last Modified: Thu, 05 Nov 2026 09:42:25 GMT  
		Size: 15.9 MB (15868883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b426caaee9785c05838ac4cdeb8f62102423776396ed0ba8c8ad800d8ef5c09`  
		Last Modified: Thu, 05 Nov 2026 09:42:24 GMT  
		Size: 13.1 KB (13094 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:6b72dac1163d31a016b6e41871ee837243e895a2ea890151e4dd7f398dc86ff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.8 MB (562826752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350e9eaf5cc8248f4a580a5617aeb02700590f5a3a5cc2f26a8bfaacb781eec2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:23:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 10:12:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 11:47:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 11:47:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 11:47:03 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b6d0c47d4db8cde48b4a6494637b995ef0a318b3071c7117bba0ff1d4b8ee097`  
		Last Modified: Thu, 05 Nov 2026 06:15:46 GMT  
		Size: 44.2 MB (44223287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e97ea351e800ac58cc1253f0ef68e502b7678904c141c7d93e6a9042e0e5dd`  
		Last Modified: Thu, 05 Nov 2026 08:18:28 GMT  
		Size: 21.8 MB (21769801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deba4733467d14fa01e8bfb1524dd99d6586f87bd64d8d193d5c9fae44d49e`  
		Last Modified: Thu, 05 Nov 2026 09:23:44 GMT  
		Size: 59.7 MB (59697462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e4148b2d8427321c3b41911ad3117638dab74567bdcee89faf176d29bf95430`  
		Last Modified: Thu, 05 Nov 2026 10:12:39 GMT  
		Size: 175.7 MB (175729352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821a348c9ed1d250c5bb3998238973a4098ddf5be95d7099cfed29e226fcff87`  
		Last Modified: Thu, 05 Nov 2026 11:47:49 GMT  
		Size: 261.4 MB (261406850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5fa80ee9ccb8cc6d654c89636ee98c0726db945ef5d110be1bdf69282737e1ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15684535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2079726b29742a6918a0840edfeb1a1c2346e56791a96058aadcdf38e8881c29`

```dockerfile
```

-	Layers:
	-	`sha256:7fd6b18afbf1e8a7986658dc1734a5380021fff3f860c88d97eb78a1d7bdff79`  
		Last Modified: Thu, 05 Nov 2026 11:47:44 GMT  
		Size: 15.7 MB (15671359 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3ef3a4773bfd1b9e640ad94e644a48113557497b37a13aa2b6961a24318e521`  
		Last Modified: Thu, 05 Nov 2026 11:47:43 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:e566673f94ee3013baae79d08125b5ca1e66e9be2db8d4e07f2e4f81b5b99807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.8 MB (526816671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10513cd0b64b1e7470d965645f4ac257a45c2b8b66b394cf775a15102b799e74`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:54:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:54:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:54:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:54:53 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92caadca69c9f4ea298e05129560a9ab38de70d82c9bf5ee3038f358be50d32a`  
		Last Modified: Thu, 05 Nov 2026 07:42:05 GMT  
		Size: 23.4 MB (23440662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8af2c9772ed715b222362477c9f5e5d8622bc2dddb9bd26cc8a32da4345de7`  
		Last Modified: Thu, 05 Nov 2026 08:28:57 GMT  
		Size: 64.5 MB (64528461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31a98848e2c91197f0512a8b453bba957a8398f45a1b8d832754f360bb188ac`  
		Last Modified: Thu, 05 Nov 2026 08:54:47 GMT  
		Size: 203.4 MB (203371836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43df9c20f585577e111b4af5c8cb5f2d6ac85e97b78ac3d9f1a4d9d54e9d29f8`  
		Last Modified: Thu, 05 Nov 2026 09:55:31 GMT  
		Size: 187.1 MB (187063258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:44c827535f35102049b37ad6fc14cbaf2fe3012f8043f02d093eb574b3ede5d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15910609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396891008b800f5b2363665136b75645073c78dc0412b7116e9492c85eb58404`

```dockerfile
```

-	Layers:
	-	`sha256:ad0875b507c9bfd8008939382a1ec2f03e86a52901387e8bc1cb9bb1d414665b`  
		Last Modified: Thu, 05 Nov 2026 09:55:26 GMT  
		Size: 15.9 MB (15897409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7f3d927286173584599a27fa6dba96eba5f5b9e6e99ee829daef545b80b0529`  
		Last Modified: Thu, 05 Nov 2026 09:55:25 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; 386

```console
$ docker pull rust@sha256:cc3d1c886ebb8bb16db7239c2c62484b7f3d51a2241805a6efed0ef13519890f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.8 MB (597823119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282c46897d681303e006af1137a184301cd4fe86b75f74ee5dd73847aba7e6e9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:41:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:24:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:47:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 09:39:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:39:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:39:32 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:989072a722e618d620157d5cc8f15a040692a796ff019856adc5dce2389b3232`  
		Last Modified: Thu, 05 Nov 2026 06:15:51 GMT  
		Size: 49.5 MB (49515693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be98d36659ede814751c7330e91612ca4d73d055912e94b9a90e6adfc1eb30b`  
		Last Modified: Thu, 05 Nov 2026 07:41:27 GMT  
		Size: 24.7 MB (24703903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2dca7ecb6f0d6c1c3297d7e97569ff07eaf0a74e8949b12aa33e39b2fee126`  
		Last Modified: Thu, 05 Nov 2026 08:24:39 GMT  
		Size: 66.3 MB (66277351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d280152d20eeef07be2c9e1e6a073b220a4e1a7b72fd4ef55c1656bf28a5f2c`  
		Last Modified: Thu, 05 Nov 2026 08:48:20 GMT  
		Size: 210.7 MB (210744423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad64e26b7b1b1ed8adf953ac716628fb2a0ee01125c7c02b3fdf8cf9b5d0b81`  
		Last Modified: Thu, 05 Nov 2026 09:40:17 GMT  
		Size: 246.6 MB (246581749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:8bc0050f09461e25069722b6535941d1da73fa926b2bc5e1dbbde8a7f86de28d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15860168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54ec87cc75f109cee3e257add93dc1616b40932b9ab5bcbb9b3074fb6931684e`

```dockerfile
```

-	Layers:
	-	`sha256:939c5131cdae074b459ff5bd58345dca29559f596a3146322851adab8f1b1c7b`  
		Last Modified: Thu, 05 Nov 2026 09:40:12 GMT  
		Size: 15.8 MB (15847104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e7ea1c79c2a59e805d024dd4fce33b4b00035ff749a37857669114f06e8f5ab`  
		Last Modified: Thu, 05 Nov 2026 09:40:11 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:bd778ca3ed03cc695bb4bc042d5f30f53c9573f2fe90b4c6e1f57b0dee4ded86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.3 MB (660306053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c78e1463fdeabfea0295211223de92fa433babfda84ac24db366382735c6c2c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 10:07:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:24:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 20:46:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 06 Nov 2026 06:40:37 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:40:37 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:40:37 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ffec0873fe14b6e584873c80e384c7a988558ed670b69a2083f4a9eff8ef04`  
		Last Modified: Thu, 05 Nov 2026 10:08:16 GMT  
		Size: 25.5 MB (25515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912f86862ce2795897774b132f3a86834590ad3758900c8ec8c600b44058ae52`  
		Last Modified: Thu, 05 Nov 2026 17:25:45 GMT  
		Size: 69.9 MB (69899279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14d5fee07632732bb5754d3454367b1ee28cf1d75bc620bc2ef6967edde5432`  
		Last Modified: Thu, 05 Nov 2026 20:48:27 GMT  
		Size: 214.9 MB (214901016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ec3a1b11e470230854034da67083d5d0cfc4322e7e86f8943fb23d316e92cc`  
		Last Modified: Fri, 06 Nov 2026 06:42:27 GMT  
		Size: 297.6 MB (297621964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:ac154ae64035f91b9ce88458d879574eafa64e90b1b0199bb2eccc591bb29a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15858530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffbbc4f479573ffbd56138da3e7e4a9f48fca4f2ae438847565203ae14f9d167`

```dockerfile
```

-	Layers:
	-	`sha256:282dc638d2ca4b15fb7b3974f79014e2e5c60dd01e64841c36bac52d381f7799`  
		Last Modified: Fri, 06 Nov 2026 06:42:21 GMT  
		Size: 15.8 MB (15845392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e6190021ae3022d25f321182a6508b007a0de3946c33aa620104236e8eaffe`  
		Last Modified: Fri, 06 Nov 2026 06:42:20 GMT  
		Size: 13.1 KB (13138 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:latest`

```console
$ docker pull rust@sha256:8a4e90c7946b74626488b1446f712c0fe0ed1a596cbd3d871684bc9c5433ae07
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
$ docker pull rust@sha256:3ddd9771c00ed2c214d75ba497ad28691ebeaf2279476068dd191cf39b4be033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.0 MB (602009422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0313e287c47409cd6070f58562ca79d4b31a6b617702ae7913a02363ec3e8b21`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:41:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:41:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:41:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696c1fe91c64662be9b13aa92628d62d6685ab94c0b55d185258a8f762133deb`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 237.2 MB (237233076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854216d15c9fbd12e88861fe8759065d09591b3501ca868a409970e223e6afa8`  
		Last Modified: Thu, 05 Nov 2026 09:42:26 GMT  
		Size: 221.9 MB (221910754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:744068f7da13444405e8d44745e55855459a7c3e1fecec18d5e80f83342d0cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17220157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a05d74269d8b725b146547ee44014773b8d4f0639e26591265ae85a7deb6e2b`

```dockerfile
```

-	Layers:
	-	`sha256:02ef2bc4131d5ce118a58168891e0db6fa3899fadb9902c570f64e6a697e5d11`  
		Last Modified: Thu, 05 Nov 2026 09:42:22 GMT  
		Size: 17.2 MB (17204761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c81c89b2e6940fcaf6313b1fdab077993d794430844385734330822df533908e`  
		Last Modified: Thu, 05 Nov 2026 09:42:21 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:d9b6fe19158f51abdfec7c0cd1e671770d98bad3d5684a923164d71212dba10a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.0 MB (587956925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4b356e90eec63d4db99d087b199c337349cdc22b4c732a557a9f8a625b82c6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:47:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 11:47:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 11:47:40 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7eecc700173d8d52639bf67fae48bf06558352b7e8b0a9ca17bb3f4a6e1ef4`  
		Last Modified: Thu, 05 Nov 2026 10:13:30 GMT  
		Size: 194.3 MB (194322402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe2f9f07d29ceeb0eeb6ebbb8846ece1717caa04e785e752af9c405265f3d65`  
		Last Modified: Thu, 05 Nov 2026 11:48:24 GMT  
		Size: 261.4 MB (261406829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:326578bf1cd44e712974de47f00a63b302f95201df18d1f5522f2ee993ec64d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16988299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5b8c06a63da688f8a09e0b3cfce6b9d49df26086addc04b29f2eb57a5fb5fc`

```dockerfile
```

-	Layers:
	-	`sha256:dac49838e752f55a3a0f398fb75955450b233b08901b75b5f67d4e7566382389`  
		Last Modified: Thu, 05 Nov 2026 11:48:20 GMT  
		Size: 17.0 MB (16972792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b1b9b01dfc4cf25f7feeab124f5ab159e4edc8c7c1dfa08a961bf263792ea4f`  
		Last Modified: Thu, 05 Nov 2026 11:48:19 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:38618e9e8971729f1b9f25bf93aaff2dc7b7ff22a6cde1930d96fb8226756029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **556.7 MB (556732592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f921547652f195c1f3675079b1867457789a3542b1189f5e88ef56d8d4db40c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:54:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:54:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65e2c5234276be7d945d8054632dc3750c6c3de75b431be0629199b0507d80`  
		Last Modified: Thu, 05 Nov 2026 08:55:11 GMT  
		Size: 227.2 MB (227219437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb8a572c9d4333ac4cac0ffe60811d3ab93cbe91caa900b66fad1d0364fab9d`  
		Last Modified: Thu, 05 Nov 2026 09:55:37 GMT  
		Size: 187.1 MB (187063265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:b234e82446ce7cbf09548c8cde27e417452ac1ab37888450c9b36af92c53fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17304026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ca4685c97943ff5214ccfde01002e2ecac1bb73d16c274a592b9fa039bc4f9`

```dockerfile
```

-	Layers:
	-	`sha256:e824b010cb4d9cf44ddfe14d38e832e0b5999b9441a61dd8659436be46aae1d9`  
		Last Modified: Thu, 05 Nov 2026 09:55:33 GMT  
		Size: 17.3 MB (17288479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dec0004e5ff85d875bcf15dd5f2f277f82576924ada8f67d2d6e6cb1bb2ac17f`  
		Last Modified: Thu, 05 Nov 2026 09:55:32 GMT  
		Size: 15.5 KB (15547 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:0fd25db1eb8f7fcc873495e1cb9d8c2a6ef5687eb35c35a914bedd9e5c4f46af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.5 MB (635489978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97ecc278c8ea1e37c589c5e470549599ded31eb32c5570ee9fa346d4e31cf92`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:47:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:40:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:40:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:40:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a1ec89f2dabc60d95d6342a31d8eb5e52224414011b5d70687f9f9bfc76b84`  
		Last Modified: Thu, 05 Nov 2026 08:48:42 GMT  
		Size: 241.3 MB (241331389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda64cbe5c9c773fe9bf9b06d26557dbe937275eb74e2c5e921265e587cd024a`  
		Last Modified: Thu, 05 Nov 2026 09:40:44 GMT  
		Size: 246.6 MB (246581656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:347529b38e956d8bc22244253d7a6c5b21fc224f09edd658776a1a91d22521ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17189689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ebf4e1968d72f901cac34d92d24f8447808ba1d4df16ff5d4acd451c04988a`

```dockerfile
```

-	Layers:
	-	`sha256:b42d2de6430e6932040c43f5a74459cc96953348fdab9de89da05a40fab3fa0e`  
		Last Modified: Thu, 05 Nov 2026 09:40:40 GMT  
		Size: 17.2 MB (17174346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb21e6b89c3a1982522d9576a96234da6b24f1b71d3a7891313deb983b18bafc`  
		Last Modified: Thu, 05 Nov 2026 09:40:39 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; ppc64le

```console
$ docker pull rust@sha256:fc64d76655f4ff5c5b7b7dbfc7c2f671210486107ce848d4beac49f2b4e99224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **683.3 MB (683289068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997d5dfb2a629bfc4a2e52b32031b66b5c3e5759bcb0c7473102ce8344c8d5e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:51:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 06 Nov 2026 06:43:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:43:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:43:13 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74542bce662f9d2af3a537e8ff1b094e443166f8dd9befec1119fe5c43a1a52`  
		Last Modified: Thu, 05 Nov 2026 20:52:57 GMT  
		Size: 232.3 MB (232324775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aa5a31dbe37a721d6f786d120f2d33df0781916a0eef717cbc21282fb66086`  
		Last Modified: Fri, 06 Nov 2026 06:45:08 GMT  
		Size: 297.6 MB (297622032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:9c3783db4635141bb4278c1d7bdbe40edc092e8d32ed193c1acc115854d1cafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17205771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63480913ddd12594dcaa20471d3fac10408f43033cbe3e4fd8bedf45337feed2`

```dockerfile
```

-	Layers:
	-	`sha256:9afe4d103147fc748ed64fac51f5c71ea9c30407006d487579aacdb3210534ad`  
		Last Modified: Fri, 06 Nov 2026 06:45:02 GMT  
		Size: 17.2 MB (17190307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e715f54919a83fd756bd832da7e48bfe2f66e53951db07bf0b1c4f83126e63e`  
		Last Modified: Fri, 06 Nov 2026 06:45:01 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; riscv64

```console
$ docker pull rust@sha256:70ed19d7d72df9d1e9bd79d9cea94231fb7b393ad843563652d6d42f9c2d8692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **736.6 MB (736604657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff0d492cbf668a67b031ee714c8ad0c9d21f5d8ca04c1646fe695219f74007c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:50:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 11:01:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 16 Oct 2026 11:01:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 16 Oct 2026 11:01:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7b3723d66e9bf982d90fb7607b939da5f6f73b5ffb86e95027a0feed4cc7b`  
		Last Modified: Sat, 10 Oct 2026 07:06:05 GMT  
		Size: 324.1 MB (324123927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b31c99f621e11836f36b603a0586eb350a8f3391dabf960ed533cbd1f70d651`  
		Last Modified: Fri, 16 Oct 2026 11:17:05 GMT  
		Size: 272.9 MB (272926301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:febda67e568785ec9b14d1d27ef3afadecd9163f0b0eae2b3c1fa0e42365caa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17279120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc5114aa4bc4d2ce97733e712139675b1fe57f093afbf5cfaf90851c5eb887`

```dockerfile
```

-	Layers:
	-	`sha256:650e42278b7674b33ffcea3de507bf34eec219a5d091d21d15cb3c7d9f81828f`  
		Last Modified: Fri, 16 Oct 2026 11:16:28 GMT  
		Size: 17.3 MB (17263656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9380039cc225a10be3dda2f4a2cc5bf9b507f71955ce1dec7b514249de1b82fc`  
		Last Modified: Fri, 16 Oct 2026 11:16:23 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; s390x

```console
$ docker pull rust@sha256:bcb1eff0fb3a7d221628e4b674f614327eee2145fb06c0c227b16089453598d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.9 MB (651888263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef35dd257e81a2e33a3b56b01520c24cc91d3d31c6a1f6d845722cd9b1d1bca7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:52:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 10:52:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 10:52:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7037e61e2f2a3cdeeb35dbe7d9c3b9055786ef002e1958d14c5bdd10287c77c3`  
		Last Modified: Thu, 05 Nov 2026 09:21:55 GMT  
		Size: 207.7 MB (207650334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358bd891fa8af2de13dca5a9b751fe3d2ea871b6c5711f31ad47a4f6032c65d0`  
		Last Modified: Thu, 05 Nov 2026 10:53:19 GMT  
		Size: 299.3 MB (299275386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:b7bc08ca82fd7b24404fc5a67f1a1c6cdd8e36ab13917543d1dbd414b6da484b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16997389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1981dd79aa64431396ec5fcf14a8e959e5212685fc0f13070b9bbd1ac66ef5b`

```dockerfile
```

-	Layers:
	-	`sha256:ebdfb3c9481a429d54df4b8cf3ae505e44eca592ea5151811721bae7117f2107`  
		Last Modified: Thu, 05 Nov 2026 10:53:15 GMT  
		Size: 17.0 MB (16981993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d24c8ed9a392c64618c478ae5a50564948d6c75cc19f56d61c9c79cba6a2ca2`  
		Last Modified: Thu, 05 Nov 2026 10:53:14 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim`

```console
$ docker pull rust@sha256:f6c4a35d21dbb3c89d7a8d056c193e94fc09037f2b58dd858b09c39a47dd02d7
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
$ docker pull rust@sha256:e97df055c54a05160e7c67ba3b2963de6ddb95903911baf8922dbcd1b394f698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327194905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc1f85e641d7765f7cc3b867ebc0fd665ebb7fed1b156b1e9878aa36337d943`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:03:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:03:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:03:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e435aed9d6456d8431f67069e22a2c664717640ea2ca0361cbe56602b9514a2`  
		Last Modified: Thu, 05 Nov 2026 08:03:43 GMT  
		Size: 297.3 MB (297338773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:6ffba9ebe4580e7410900fd7303465b7ce192b73c7fb2266c969b1a0783fa90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2cec7f1e2e4674387d2fe33b36055c3abe654675b1c51c6d3b97bbd83244bf`

```dockerfile
```

-	Layers:
	-	`sha256:0708dc9ad0daeb6c492cffd3f6b8aadf163c5ed22453e8914d8fd4f9bdbf60ba`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 4.2 MB (4169346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27e0bb10cb91b98c21ca5fd5a8e89b2799000a7bb90843832be598ef9a12a480`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:0400183e4df544ad976cd984d7b6e2e8b484441e0bf9e316d07cd456dd4bd35a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337943104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384574104a4725000e99998e82cf71afda768573ffa11d9dea805a993023cfc9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:54:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:54:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:54:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3da5a31372541ab1bf5e318f39bf0f3fe9854a9d8730eede62ca4b5ae48d`  
		Last Modified: Thu, 05 Nov 2026 08:55:27 GMT  
		Size: 311.7 MB (311670189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:54ef50e512425b252cc8fda07911689cb15d41125b36a177c455b3c8e08c6025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99017c654280409894158fe45590a383f86938246085ab50aac9b650a324240`

```dockerfile
```

-	Layers:
	-	`sha256:35d036863a32367260d7365d6ad97bc9e9b87d0666b1daa2d264c66deac56737`  
		Last Modified: Thu, 05 Nov 2026 08:55:22 GMT  
		Size: 4.0 MB (3974215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d67aa30173d0814cf89e02fd5cf0200b0830dd455edc821d1f6aefe6ac07aa`  
		Last Modified: Thu, 05 Nov 2026 08:55:21 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:10d470c049d88eb5dbfc85612f51571edd1ebbbdade35c5d3d89d9ab8fd6bda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286943249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab624ff5404f660cfc64c0b5249c2766ba32809e21f7aa2403e72fab042ec01c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:55 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:11:55 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:11:55 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58041dfb98d1b82f6a1122a264f755c1e93993a2a6c433cca026244a6a42ed4`  
		Last Modified: Thu, 05 Nov 2026 08:12:30 GMT  
		Size: 256.7 MB (256729212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:9742c13a6d23a02c8911b20f6531d14a2676a9cfaa18ca8465c4f7e015cb67bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b506c43eb423f5c2f2262c3f6b19b157aa95438bee60ae844fef0a465dc39c`

```dockerfile
```

-	Layers:
	-	`sha256:0fe11148e8ac84ba7f3410e9fb3ab9f442159ab3158cdb91793b3761ab7c5d50`  
		Last Modified: Thu, 05 Nov 2026 08:12:26 GMT  
		Size: 4.3 MB (4260553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9221fe01cc5fab2e01ec5f41e1160a6c84adf39a27f9c048265c5eac79d4e78`  
		Last Modified: Thu, 05 Nov 2026 08:12:25 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; 386

```console
$ docker pull rust@sha256:aab7352d42d5c3cba38397a313cb4280cc7486aa5489c076c0e2036b455b61ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350446656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31e123e25bf4d93f6b32bc67b517c7601d619a92caf40592bddeea927c1bbd9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:08:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:08:11 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcd82564079cf2fa0d361b2faede7a5b8bd93507bd614e18d2d7aa5e3d3f840`  
		Last Modified: Thu, 05 Nov 2026 08:08:55 GMT  
		Size: 319.1 MB (319075897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:80a49d0853e691f7eabc2b41e69b66c2319a8f3068508bd26201e6007191a12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f1c54607c2251fc51feb5726a883a2ad1184440697a3e6dd6e2f725289527`

```dockerfile
```

-	Layers:
	-	`sha256:171826e2e34b87f80cc792361be5dd777912ef28ed29b5224d85091753708402`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 4.1 MB (4144160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:168bda9ca004d5e07f5f459c87817579179c9d817d89ef324194f21be1776a2c`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; ppc64le

```console
$ docker pull rust@sha256:df244d86d8224840640cebad5f2d47145e9cad529421171ac0c545ca71e137fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398198829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b574cdc3e33be86ee6beb7d624f5d4202177c1bac5304ba3cdb0c4a33f6e399b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:11:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 15:11:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 15:11:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8151d71991b777eaf4716cd8eec772870d3e106dd9d6697e1657ef044c894c`  
		Last Modified: Thu, 05 Nov 2026 15:13:26 GMT  
		Size: 364.5 MB (364531181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:faf8cfb2bd22a616279c81a88f9cc894443f4f6cc2ad69e3d13824401dda99e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f228a37a5bf8438f28446d2199ac8e2115113f353a876b5c6d32d629ee3cf`

```dockerfile
```

-	Layers:
	-	`sha256:edb366ff3e7a07cc56401a8adf9a554ffc397a5c52e0275097cc4a9b123c4e3f`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 4.2 MB (4165802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c4e5c680e39af392230dcbb01e04f6f60752884e1c80139178c26f4115df575`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; riscv64

```console
$ docker pull rust@sha256:c8966fbbf69b024da01c73f3ebb373a9ef672ce655964513e60bcdbedf7fbee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395146929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430454feeee0c64bcc2180c4994fad9cf7be546aaff03577f666e9aaef8676aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 11:58:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sun, 08 Nov 2026 11:58:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Sun, 08 Nov 2026 11:58:31 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba59c81f1eb9fa15a6c23892b9b9d80e23765ef68220c78c63925b51c7d89547`  
		Last Modified: Sun, 08 Nov 2026 12:10:07 GMT  
		Size: 366.8 MB (366800745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:41838ca6bcc939584191770ce4d213b6afa6c69bfb0c0b732d0672843828f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10075a1858e9f5ae500f9d8ce1be993614d26e9618e9dc74eca8a96b2bb2bb53`

```dockerfile
```

-	Layers:
	-	`sha256:3d2ccc262c81d8e0141c5187188bb1ef1377964a414127a68cdaa07b392daf6c`  
		Last Modified: Sun, 08 Nov 2026 12:09:15 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4d897acd9b334d1696a80767f9c5320083f6538eda7eda417051905eaeb73a`  
		Last Modified: Sun, 08 Nov 2026 12:09:14 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; s390x

```console
$ docker pull rust@sha256:34881591699d053faab9db0998c662f35b76d2d29867a30f04f94a86bb6cfaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.6 MB (381569623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506f7768f24b590a7e68a15bed9bb2088bc9157232f4147cbc9b07c38bb42fda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:38:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:38:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:38:26 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b7de5622955f8ca359f2ce90b481834ca2839252c58997e134d51866fe27c`  
		Last Modified: Thu, 05 Nov 2026 08:39:26 GMT  
		Size: 351.6 MB (351645506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:b2ed35d7d8a1de746586df79746648d800e76ceeecd34f091f987c8031406ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8642c563316b0b1653df807f1ab6719c889888df6c1da694ca49843f0b365f63`

```dockerfile
```

-	Layers:
	-	`sha256:54d2589804e2b13887ce35725264efbfaf8529614f604f429b812e2b5d25f67f`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 4.0 MB (3987095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fecd283ec9b230e444d2298ca7850eb0388ce6de5bdb250e19f8a0b556ef06c`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-bookworm`

```console
$ docker pull rust@sha256:f2c004e3d2d8b547e8cf7ffbc29205385f4e71d23e53e4e383065db5e9f822cd
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
$ docker pull rust@sha256:392f221964669402bf4ae133d2a46c3ae270f64734133f4b2703d40019235c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.8 MB (320758259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6253ededdef8047bd5c12ad710ef5ad84a95631fc39804161088612ae3e90e56`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:02:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:02:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:02:52 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e62075da7899cbe9e0a91f5d70e8a166fe17d4766f7813eb2788b126ab247f20`  
		Last Modified: Thu, 05 Nov 2026 08:03:32 GMT  
		Size: 292.5 MB (292510277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:93f0dcce94e092e848d306ab1b450b6ba32a29fba6f611ef7306cde07fd73745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4111509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d98a8f79d15b92c89566e040bc4f90ef7312c5535ff7296b196407a2262bfb`

```dockerfile
```

-	Layers:
	-	`sha256:28ae2df61d5b26b3b5b735720f365f5baefb15aed70c24c3e93a12923c4b1739`  
		Last Modified: Thu, 05 Nov 2026 08:03:26 GMT  
		Size: 4.1 MB (4098202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ac458650404ea24249728bca29cd00d89d2934d0d6f60202d9c15ad7bfdc7f0`  
		Last Modified: Thu, 05 Nov 2026 08:03:26 GMT  
		Size: 13.3 KB (13307 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:db3f0bd5f126ce5a45f4a43661273f666f49c6ba618e5c552072f4251082ddcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.0 MB (333024624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:affe7e62f10172adba170837f174cdea7c5432f91341346981eca19d562d188a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:54:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:54:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:54:42 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b15ddaad97e481db4d09c4772401167ebf5da0da9dbcccf7d7695ab78d6a326`  
		Last Modified: Thu, 05 Nov 2026 08:55:22 GMT  
		Size: 309.1 MB (309063268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9631f55cd1cb310f34ff97a2401df1a5e6bcf9fcd216cd2050dff1bc6c5315a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3925976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35b3e72306ef80b4cdac1a2cceab582067f144bab6e957cbba83379bb1480d7`

```dockerfile
```

-	Layers:
	-	`sha256:b6136ee8b88fd07ee997ad0a88090c92836561d2037042d70e7fb35766d9cddf`  
		Last Modified: Thu, 05 Nov 2026 08:55:16 GMT  
		Size: 3.9 MB (3912589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87ef9ba5dbcf161fb134dacd896e89b93531cf096ff65e922e214a71a00601af`  
		Last Modified: Thu, 05 Nov 2026 08:55:16 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b78cfbe4c0fd96b8a06b259092f1f412cb3ad3c5aed89d188bc40a1b8637f8f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280903058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171deb934b4a0af738eb82ef2dee8daa9b9d15804fa97ae9632fd5a1968e8645`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:11:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:11:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:11:48 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28456d621c3804b8387a480f20972aefc557e69bc57e11304ad78eef9313ca4`  
		Last Modified: Thu, 05 Nov 2026 08:12:24 GMT  
		Size: 252.8 MB (252758700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:ff8efa0f703a01dcc2994a29b7d3fd71b9a32f1cbf5e80b201a5b4196626d73f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3b562f93f6310f7a95f9f09aa6f7c520c538c8dc5a333d39b2d1a0aa89ddd3`

```dockerfile
```

-	Layers:
	-	`sha256:403dc145f6c9139ddf6b4cc74c906ec44920f8ac68690188897fa947930b7df0`  
		Last Modified: Thu, 05 Nov 2026 08:12:19 GMT  
		Size: 4.1 MB (4120496 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bfc273c1a7a67b1962834bfd08fa5d6c1e049efdafe75ca9d012b748b207357`  
		Last Modified: Thu, 05 Nov 2026 08:12:18 GMT  
		Size: 13.4 KB (13411 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:2a47a6238daf3ae6a62acb43f588c85806e0db49808e4c0454e0adb570ef35f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.3 MB (343250090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4738b0aa416ab3b5eaf99119669b96cfb5d0a3caffe9ffb015c565ea041daa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:08:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:08:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:08:09 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fa2a8dfdf94197a7bb0f83c0d6c706699a7b2fe4b93467e51de5fd3e6b5872`  
		Last Modified: Thu, 05 Nov 2026 08:08:51 GMT  
		Size: 314.0 MB (314010878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5e537ac1283c8360085b6c338905950bca94ec169b886a5b83b385c35b1e7fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4092162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b276786bf56ba984e020e838edb6a6eb33999578ef708841d79c8e0b7cc28d36`

```dockerfile
```

-	Layers:
	-	`sha256:ccf3f0afb3911014dff90dcb37860542d19431a10f6dd0f3e68fcafe205e32e0`  
		Last Modified: Thu, 05 Nov 2026 08:08:45 GMT  
		Size: 4.1 MB (4078888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54d9dfebb42b24c7d26d72314fb09298314b2388f0d5c3ca7e7845a0e4aad00b`  
		Last Modified: Thu, 05 Nov 2026 08:08:45 GMT  
		Size: 13.3 KB (13274 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:fa39d200cd60ede4bceb6f37e13abea79b9b50f16addaeadba2f80c59466fe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.3 MB (398336297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90d89bdc375060a2a300a83413dda45deaaffdc667d326d6c4686683099c03b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:09:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 15:09:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 15:09:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1c36515f0c75fba71852afe287f3bd272ccbb96405f9e869881fcb07719eeb`  
		Last Modified: Thu, 05 Nov 2026 15:10:42 GMT  
		Size: 366.2 MB (366242737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:483d9749d223d0ffe354f4e01608923b2b2ebb1844ddceb0629710912d2e210b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4085145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7bc03925895eb780aa96c7092cd5f44c8d16ac14814a88595eef8c7b12933d`

```dockerfile
```

-	Layers:
	-	`sha256:72504e17a1b47d3d6683dad6d53467c644ef22a8503cf53740de6ba6956ea536`  
		Last Modified: Thu, 05 Nov 2026 15:10:35 GMT  
		Size: 4.1 MB (4071794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17c1d918bd575f2292c1e65b853ab7b34d93b8f82f62a306679fb0bd45d145ed`  
		Last Modified: Thu, 05 Nov 2026 15:10:35 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-trixie`

```console
$ docker pull rust@sha256:f6c4a35d21dbb3c89d7a8d056c193e94fc09037f2b58dd858b09c39a47dd02d7
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
$ docker pull rust@sha256:e97df055c54a05160e7c67ba3b2963de6ddb95903911baf8922dbcd1b394f698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.2 MB (327194905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cc1f85e641d7765f7cc3b867ebc0fd665ebb7fed1b156b1e9878aa36337d943`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:03:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:03:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:03:01 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e435aed9d6456d8431f67069e22a2c664717640ea2ca0361cbe56602b9514a2`  
		Last Modified: Thu, 05 Nov 2026 08:03:43 GMT  
		Size: 297.3 MB (297338773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:6ffba9ebe4580e7410900fd7303465b7ce192b73c7fb2266c969b1a0783fa90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2cec7f1e2e4674387d2fe33b36055c3abe654675b1c51c6d3b97bbd83244bf`

```dockerfile
```

-	Layers:
	-	`sha256:0708dc9ad0daeb6c492cffd3f6b8aadf163c5ed22453e8914d8fd4f9bdbf60ba`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 4.2 MB (4169346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27e0bb10cb91b98c21ca5fd5a8e89b2799000a7bb90843832be598ef9a12a480`  
		Last Modified: Thu, 05 Nov 2026 08:03:37 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:0400183e4df544ad976cd984d7b6e2e8b484441e0bf9e316d07cd456dd4bd35a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337943104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384574104a4725000e99998e82cf71afda768573ffa11d9dea805a993023cfc9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:54:47 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:54:47 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:54:47 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd3da5a31372541ab1bf5e318f39bf0f3fe9854a9d8730eede62ca4b5ae48d`  
		Last Modified: Thu, 05 Nov 2026 08:55:27 GMT  
		Size: 311.7 MB (311670189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:54ef50e512425b252cc8fda07911689cb15d41125b36a177c455b3c8e08c6025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99017c654280409894158fe45590a383f86938246085ab50aac9b650a324240`

```dockerfile
```

-	Layers:
	-	`sha256:35d036863a32367260d7365d6ad97bc9e9b87d0666b1daa2d264c66deac56737`  
		Last Modified: Thu, 05 Nov 2026 08:55:22 GMT  
		Size: 4.0 MB (3974215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d67aa30173d0814cf89e02fd5cf0200b0830dd455edc821d1f6aefe6ac07aa`  
		Last Modified: Thu, 05 Nov 2026 08:55:21 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:10d470c049d88eb5dbfc85612f51571edd1ebbbdade35c5d3d89d9ab8fd6bda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286943249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab624ff5404f660cfc64c0b5249c2766ba32809e21f7aa2403e72fab042ec01c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:55 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:11:55 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:11:55 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d58041dfb98d1b82f6a1122a264f755c1e93993a2a6c433cca026244a6a42ed4`  
		Last Modified: Thu, 05 Nov 2026 08:12:30 GMT  
		Size: 256.7 MB (256729212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:9742c13a6d23a02c8911b20f6531d14a2676a9cfaa18ca8465c4f7e015cb67bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b506c43eb423f5c2f2262c3f6b19b157aa95438bee60ae844fef0a465dc39c`

```dockerfile
```

-	Layers:
	-	`sha256:0fe11148e8ac84ba7f3410e9fb3ab9f442159ab3158cdb91793b3761ab7c5d50`  
		Last Modified: Thu, 05 Nov 2026 08:12:26 GMT  
		Size: 4.3 MB (4260553 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9221fe01cc5fab2e01ec5f41e1160a6c84adf39a27f9c048265c5eac79d4e78`  
		Last Modified: Thu, 05 Nov 2026 08:12:25 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:aab7352d42d5c3cba38397a313cb4280cc7486aa5489c076c0e2036b455b61ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350446656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31e123e25bf4d93f6b32bc67b517c7601d619a92caf40592bddeea927c1bbd9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:08:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:08:11 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcd82564079cf2fa0d361b2faede7a5b8bd93507bd614e18d2d7aa5e3d3f840`  
		Last Modified: Thu, 05 Nov 2026 08:08:55 GMT  
		Size: 319.1 MB (319075897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:80a49d0853e691f7eabc2b41e69b66c2319a8f3068508bd26201e6007191a12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410f1c54607c2251fc51feb5726a883a2ad1184440697a3e6dd6e2f725289527`

```dockerfile
```

-	Layers:
	-	`sha256:171826e2e34b87f80cc792361be5dd777912ef28ed29b5224d85091753708402`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 4.1 MB (4144160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:168bda9ca004d5e07f5f459c87817579179c9d817d89ef324194f21be1776a2c`  
		Last Modified: Thu, 05 Nov 2026 08:08:49 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:df244d86d8224840640cebad5f2d47145e9cad529421171ac0c545ca71e137fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **398.2 MB (398198829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b574cdc3e33be86ee6beb7d624f5d4202177c1bac5304ba3cdb0c4a33f6e399b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:11:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 15:11:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 15:11:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8151d71991b777eaf4716cd8eec772870d3e106dd9d6697e1657ef044c894c`  
		Last Modified: Thu, 05 Nov 2026 15:13:26 GMT  
		Size: 364.5 MB (364531181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:faf8cfb2bd22a616279c81a88f9cc894443f4f6cc2ad69e3d13824401dda99e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8f228a37a5bf8438f28446d2199ac8e2115113f353a876b5c6d32d629ee3cf`

```dockerfile
```

-	Layers:
	-	`sha256:edb366ff3e7a07cc56401a8adf9a554ffc397a5c52e0275097cc4a9b123c4e3f`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 4.2 MB (4165802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c4e5c680e39af392230dcbb01e04f6f60752884e1c80139178c26f4115df575`  
		Last Modified: Thu, 05 Nov 2026 15:13:18 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:c8966fbbf69b024da01c73f3ebb373a9ef672ce655964513e60bcdbedf7fbee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395146929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430454feeee0c64bcc2180c4994fad9cf7be546aaff03577f666e9aaef8676aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 11:58:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sun, 08 Nov 2026 11:58:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Sun, 08 Nov 2026 11:58:31 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba59c81f1eb9fa15a6c23892b9b9d80e23765ef68220c78c63925b51c7d89547`  
		Last Modified: Sun, 08 Nov 2026 12:10:07 GMT  
		Size: 366.8 MB (366800745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:41838ca6bcc939584191770ce4d213b6afa6c69bfb0c0b732d0672843828f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10075a1858e9f5ae500f9d8ce1be993614d26e9618e9dc74eca8a96b2bb2bb53`

```dockerfile
```

-	Layers:
	-	`sha256:3d2ccc262c81d8e0141c5187188bb1ef1377964a414127a68cdaa07b392daf6c`  
		Last Modified: Sun, 08 Nov 2026 12:09:15 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4d897acd9b334d1696a80767f9c5320083f6538eda7eda417051905eaeb73a`  
		Last Modified: Sun, 08 Nov 2026 12:09:14 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:34881591699d053faab9db0998c662f35b76d2d29867a30f04f94a86bb6cfaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.6 MB (381569623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506f7768f24b590a7e68a15bed9bb2088bc9157232f4147cbc9b07c38bb42fda`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:38:26 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 08:38:26 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 08:38:26 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a1b7de5622955f8ca359f2ce90b481834ca2839252c58997e134d51866fe27c`  
		Last Modified: Thu, 05 Nov 2026 08:39:26 GMT  
		Size: 351.6 MB (351645506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b2ed35d7d8a1de746586df79746648d800e76ceeecd34f091f987c8031406ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8642c563316b0b1653df807f1ab6719c889888df6c1da694ca49843f0b365f63`

```dockerfile
```

-	Layers:
	-	`sha256:54d2589804e2b13887ce35725264efbfaf8529614f604f429b812e2b5d25f67f`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 4.0 MB (3987095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fecd283ec9b230e444d2298ca7850eb0388ce6de5bdb250e19f8a0b556ef06c`  
		Last Modified: Thu, 05 Nov 2026 08:39:21 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:trixie`

```console
$ docker pull rust@sha256:8a4e90c7946b74626488b1446f712c0fe0ed1a596cbd3d871684bc9c5433ae07
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
$ docker pull rust@sha256:3ddd9771c00ed2c214d75ba497ad28691ebeaf2279476068dd191cf39b4be033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.0 MB (602009422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0313e287c47409cd6070f58562ca79d4b31a6b617702ae7913a02363ec3e8b21`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:38:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:53:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:41:44 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:41:44 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:41:44 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a88afca2bd37d4058d4b33d9d4d29b0557f8b811bb8c106942b5b51e1e4aad`  
		Last Modified: Thu, 05 Nov 2026 07:38:33 GMT  
		Size: 25.6 MB (25634385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411d2dc8717dbb4bb0d3cfa27e6e0275fca455c5220029d7a14dc7a75fbe8665`  
		Last Modified: Thu, 05 Nov 2026 08:32:07 GMT  
		Size: 67.8 MB (67818699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696c1fe91c64662be9b13aa92628d62d6685ab94c0b55d185258a8f762133deb`  
		Last Modified: Thu, 05 Nov 2026 08:54:30 GMT  
		Size: 237.2 MB (237233076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854216d15c9fbd12e88861fe8759065d09591b3501ca868a409970e223e6afa8`  
		Last Modified: Thu, 05 Nov 2026 09:42:26 GMT  
		Size: 221.9 MB (221910754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:744068f7da13444405e8d44745e55855459a7c3e1fecec18d5e80f83342d0cc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17220157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a05d74269d8b725b146547ee44014773b8d4f0639e26591265ae85a7deb6e2b`

```dockerfile
```

-	Layers:
	-	`sha256:02ef2bc4131d5ce118a58168891e0db6fa3899fadb9902c570f64e6a697e5d11`  
		Last Modified: Thu, 05 Nov 2026 09:42:22 GMT  
		Size: 17.2 MB (17204761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c81c89b2e6940fcaf6313b1fdab077993d794430844385734330822df533908e`  
		Last Modified: Thu, 05 Nov 2026 09:42:21 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:d9b6fe19158f51abdfec7c0cd1e671770d98bad3d5684a923164d71212dba10a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.0 MB (587956925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4b356e90eec63d4db99d087b199c337349cdc22b4c732a557a9f8a625b82c6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:18:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:12:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:47:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 11:47:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 11:47:40 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:865302b150ef6501d10367f445f0f9d34479768facdaad7ff5f2570ef01e64e0`  
		Last Modified: Thu, 05 Nov 2026 06:16:17 GMT  
		Size: 45.8 MB (45831124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22bd8270a456c344320ca1bfb723ebee36d6367951065776d9dd7282537e25`  
		Last Modified: Thu, 05 Nov 2026 08:18:57 GMT  
		Size: 23.6 MB (23636480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f984886b94a931860c42ddaa1f808f518535286e993896a737731d0219bcbf9`  
		Last Modified: Thu, 05 Nov 2026 09:24:27 GMT  
		Size: 62.8 MB (62760090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7eecc700173d8d52639bf67fae48bf06558352b7e8b0a9ca17bb3f4a6e1ef4`  
		Last Modified: Thu, 05 Nov 2026 10:13:30 GMT  
		Size: 194.3 MB (194322402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe2f9f07d29ceeb0eeb6ebbb8846ece1717caa04e785e752af9c405265f3d65`  
		Last Modified: Thu, 05 Nov 2026 11:48:24 GMT  
		Size: 261.4 MB (261406829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:326578bf1cd44e712974de47f00a63b302f95201df18d1f5522f2ee993ec64d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16988299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5b8c06a63da688f8a09e0b3cfce6b9d49df26086addc04b29f2eb57a5fb5fc`

```dockerfile
```

-	Layers:
	-	`sha256:dac49838e752f55a3a0f398fb75955450b233b08901b75b5f67d4e7566382389`  
		Last Modified: Thu, 05 Nov 2026 11:48:20 GMT  
		Size: 17.0 MB (16972792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b1b9b01dfc4cf25f7feeab124f5ab159e4edc8c7c1dfa08a961bf263792ea4f`  
		Last Modified: Thu, 05 Nov 2026 11:48:19 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:38618e9e8971729f1b9f25bf93aaff2dc7b7ff22a6cde1930d96fb8226756029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **556.7 MB (556732592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f921547652f195c1f3675079b1867457789a3542b1189f5e88ef56d8d4db40c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:42:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:54:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:54:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:54:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:54:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7287c5b5ce209cf618681832ded105b3182c871815ac857aeb105737563f59`  
		Last Modified: Thu, 05 Nov 2026 07:42:17 GMT  
		Size: 25.0 MB (25037294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6439840073969a08a9c305e28768838fcea379036919203ccf9f9fc966cc9658`  
		Last Modified: Thu, 05 Nov 2026 08:29:35 GMT  
		Size: 67.6 MB (67633992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e65e2c5234276be7d945d8054632dc3750c6c3de75b431be0629199b0507d80`  
		Last Modified: Thu, 05 Nov 2026 08:55:11 GMT  
		Size: 227.2 MB (227219437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb8a572c9d4333ac4cac0ffe60811d3ab93cbe91caa900b66fad1d0364fab9d`  
		Last Modified: Thu, 05 Nov 2026 09:55:37 GMT  
		Size: 187.1 MB (187063265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b234e82446ce7cbf09548c8cde27e417452ac1ab37888450c9b36af92c53fdb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17304026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ca4685c97943ff5214ccfde01002e2ecac1bb73d16c274a592b9fa039bc4f9`

```dockerfile
```

-	Layers:
	-	`sha256:e824b010cb4d9cf44ddfe14d38e832e0b5999b9441a61dd8659436be46aae1d9`  
		Last Modified: Thu, 05 Nov 2026 09:55:33 GMT  
		Size: 17.3 MB (17288479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dec0004e5ff85d875bcf15dd5f2f277f82576924ada8f67d2d6e6cb1bb2ac17f`  
		Last Modified: Thu, 05 Nov 2026 09:55:32 GMT  
		Size: 15.5 KB (15547 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; 386

```console
$ docker pull rust@sha256:0fd25db1eb8f7fcc873495e1cb9d8c2a6ef5687eb35c35a914bedd9e5c4f46af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.5 MB (635489978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97ecc278c8ea1e37c589c5e470549599ded31eb32c5570ee9fa346d4e31cf92`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:41:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:24:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:47:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:40:01 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 09:40:01 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 09:40:01 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:983687147c553c18d6a85d6c62cf12d150ea82b07b75088c878fe988ed17b33f`  
		Last Modified: Thu, 05 Nov 2026 06:16:18 GMT  
		Size: 50.9 MB (50920572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b96b64012e3ccbf1b300a19570dd596c9a0cd7a0a5a03551ebb02b2ec36eab`  
		Last Modified: Thu, 05 Nov 2026 07:41:35 GMT  
		Size: 26.8 MB (26799507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b19228f96bf86cf5dec51abfdfdb655b9c125b586d1d9776e28024470540be5`  
		Last Modified: Thu, 05 Nov 2026 08:25:24 GMT  
		Size: 69.9 MB (69856854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a1ec89f2dabc60d95d6342a31d8eb5e52224414011b5d70687f9f9bfc76b84`  
		Last Modified: Thu, 05 Nov 2026 08:48:42 GMT  
		Size: 241.3 MB (241331389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda64cbe5c9c773fe9bf9b06d26557dbe937275eb74e2c5e921265e587cd024a`  
		Last Modified: Thu, 05 Nov 2026 09:40:44 GMT  
		Size: 246.6 MB (246581656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:347529b38e956d8bc22244253d7a6c5b21fc224f09edd658776a1a91d22521ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17189689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ebf4e1968d72f901cac34d92d24f8447808ba1d4df16ff5d4acd451c04988a`

```dockerfile
```

-	Layers:
	-	`sha256:b42d2de6430e6932040c43f5a74459cc96953348fdab9de89da05a40fab3fa0e`  
		Last Modified: Thu, 05 Nov 2026 09:40:40 GMT  
		Size: 17.2 MB (17174346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb21e6b89c3a1982522d9576a96234da6b24f1b71d3a7891313deb983b18bafc`  
		Last Modified: Thu, 05 Nov 2026 09:40:39 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:fc64d76655f4ff5c5b7b7dbfc7c2f671210486107ce848d4beac49f2b4e99224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **683.3 MB (683289068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:997d5dfb2a629bfc4a2e52b32031b66b5c3e5759bcb0c7473102ce8344c8d5e4`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 10:10:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:26:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 20:51:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 06 Nov 2026 06:43:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:43:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 06 Nov 2026 06:43:13 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b441821aef48e4927b60b63cc49b02baaf25f64d2d6badc6044a1184761c737`  
		Last Modified: Thu, 05 Nov 2026 10:10:24 GMT  
		Size: 27.0 MB (27023201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eacbf9637539d8aa77e81054651dcf509dbf3851a0a1aa8980495316a23c2e`  
		Last Modified: Thu, 05 Nov 2026 17:27:43 GMT  
		Size: 73.1 MB (73093471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74542bce662f9d2af3a537e8ff1b094e443166f8dd9befec1119fe5c43a1a52`  
		Last Modified: Thu, 05 Nov 2026 20:52:57 GMT  
		Size: 232.3 MB (232324775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aa5a31dbe37a721d6f786d120f2d33df0781916a0eef717cbc21282fb66086`  
		Last Modified: Fri, 06 Nov 2026 06:45:08 GMT  
		Size: 297.6 MB (297622032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:9c3783db4635141bb4278c1d7bdbe40edc092e8d32ed193c1acc115854d1cafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17205771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63480913ddd12594dcaa20471d3fac10408f43033cbe3e4fd8bedf45337feed2`

```dockerfile
```

-	Layers:
	-	`sha256:9afe4d103147fc748ed64fac51f5c71ea9c30407006d487579aacdb3210534ad`  
		Last Modified: Fri, 06 Nov 2026 06:45:02 GMT  
		Size: 17.2 MB (17190307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e715f54919a83fd756bd832da7e48bfe2f66e53951db07bf0b1c4f83126e63e`  
		Last Modified: Fri, 06 Nov 2026 06:45:01 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; riscv64

```console
$ docker pull rust@sha256:70ed19d7d72df9d1e9bd79d9cea94231fb7b393ad843563652d6d42f9c2d8692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **736.6 MB (736604657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff0d492cbf668a67b031ee714c8ad0c9d21f5d8ca04c1646fe695219f74007c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Wed, 07 Oct 2026 20:14:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 13:45:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 10 Oct 2026 06:50:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Fri, 16 Oct 2026 11:01:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 16 Oct 2026 11:01:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 16 Oct 2026 11:01:58 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:45e9f88af4f41939baf397baad507403b0b2ad7362c860679e184bbd563c9aca`  
		Last Modified: Tue, 06 Oct 2026 00:30:31 GMT  
		Size: 47.9 MB (47876327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e0101e88ea96d4f49e7fe9273c6eef716c54c0e06234a5a7880913f417bfc5`  
		Last Modified: Wed, 07 Oct 2026 20:16:35 GMT  
		Size: 25.0 MB (24972632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122ad31d36d17ee6939e04e1683afb298fda9a5815f638ddd642254a8cd102f`  
		Last Modified: Thu, 08 Oct 2026 13:49:03 GMT  
		Size: 66.7 MB (66705470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7b3723d66e9bf982d90fb7607b939da5f6f73b5ffb86e95027a0feed4cc7b`  
		Last Modified: Sat, 10 Oct 2026 07:06:05 GMT  
		Size: 324.1 MB (324123927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b31c99f621e11836f36b603a0586eb350a8f3391dabf960ed533cbd1f70d651`  
		Last Modified: Fri, 16 Oct 2026 11:17:05 GMT  
		Size: 272.9 MB (272926301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:febda67e568785ec9b14d1d27ef3afadecd9163f0b0eae2b3c1fa0e42365caa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17279120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc5114aa4bc4d2ce97733e712139675b1fe57f093afbf5cfaf90851c5eb887`

```dockerfile
```

-	Layers:
	-	`sha256:650e42278b7674b33ffcea3de507bf34eec219a5d091d21d15cb3c7d9f81828f`  
		Last Modified: Fri, 16 Oct 2026 11:16:28 GMT  
		Size: 17.3 MB (17263656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9380039cc225a10be3dda2f4a2cc5bf9b507f71955ce1dec7b514249de1b82fc`  
		Last Modified: Fri, 16 Oct 2026 11:16:23 GMT  
		Size: 15.5 KB (15464 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; s390x

```console
$ docker pull rust@sha256:bcb1eff0fb3a7d221628e4b674f614327eee2145fb06c0c227b16089453598d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.9 MB (651888263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef35dd257e81a2e33a3b56b01520c24cc91d3d31c6a1f6d845722cd9b1d1bca7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:57:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:48:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 09:21:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 10:52:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 10:52:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 10:52:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:41b07ac9fb6207a8cfec57ba13f9c1036c8164055359dd5610b3cec2a1af4d37`  
		Last Modified: Thu, 05 Nov 2026 06:15:43 GMT  
		Size: 49.5 MB (49479190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039a271aeb76e594bdb78f1d76c07538a5ea455b8cd1f6400425ca0d855f8054`  
		Last Modified: Thu, 05 Nov 2026 07:58:08 GMT  
		Size: 26.8 MB (26812003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236f934549db09dc0f91ef87581d65c0131867d26faf8e80120237f649a6f355`  
		Last Modified: Thu, 05 Nov 2026 08:49:09 GMT  
		Size: 68.7 MB (68671350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7037e61e2f2a3cdeeb35dbe7d9c3b9055786ef002e1958d14c5bdd10287c77c3`  
		Last Modified: Thu, 05 Nov 2026 09:21:55 GMT  
		Size: 207.7 MB (207650334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:358bd891fa8af2de13dca5a9b751fe3d2ea871b6c5711f31ad47a4f6032c65d0`  
		Last Modified: Thu, 05 Nov 2026 10:53:19 GMT  
		Size: 299.3 MB (299275386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:b7bc08ca82fd7b24404fc5a67f1a1c6cdd8e36ab13917543d1dbd414b6da484b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16997389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1981dd79aa64431396ec5fcf14a8e959e5212685fc0f13070b9bbd1ac66ef5b`

```dockerfile
```

-	Layers:
	-	`sha256:ebdfb3c9481a429d54df4b8cf3ae505e44eca592ea5151811721bae7117f2107`  
		Last Modified: Thu, 05 Nov 2026 10:53:15 GMT  
		Size: 17.0 MB (16981993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d24c8ed9a392c64618c478ae5a50564948d6c75cc19f56d61c9c79cba6a2ca2`  
		Last Modified: Thu, 05 Nov 2026 10:53:14 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json
