## `rust:latest`

```console
$ docker pull rust@sha256:53766005847cbe02c3f59bfa49c1c4bb16695f2c9e5829c3d576a15406f5e733
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
$ docker pull rust@sha256:d841af61827b29b3efa46f5363e8f2e972b379cc0463c319e8f320d9f0c8eb0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **601.8 MB (601848698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422f648b094a4a82b384c4a5a181e6d78d78df4a0d013a5727091e0db43c7234`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:39:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:23:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:39:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 04:39:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 04:39:10 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac3b752bd4f060dcf33c0f54d1fad29fce8ff42b8fb544f9ec95372f0933bf`  
		Last Modified: Wed, 28 Oct 2026 01:40:03 GMT  
		Size: 25.6 MB (25634411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0168c6e6744fc499abc90618818f9e4aaf652a587fb6345b3882dc57de1495c`  
		Last Modified: Wed, 28 Oct 2026 02:24:06 GMT  
		Size: 67.8 MB (67818749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425148f8d5eb4d6dad76e4d080661ed0ad6ed5c270bf028517e6dde8bd0952cc`  
		Last Modified: Wed, 28 Oct 2026 03:16:22 GMT  
		Size: 237.1 MB (237134175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc91be842e82d89691335685219797863269de9b07c30022464f68a8288a2473`  
		Last Modified: Wed, 28 Oct 2026 04:39:51 GMT  
		Size: 221.9 MB (221853468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:9b7d36f4fcf77aade5919fd1f734a65ee39ad9508f499a8b026d0c0b461ff199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17220156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465b814d72ff36d5765b275887c848ad37f12d8813238682df2a6ba62159f527`

```dockerfile
```

-	Layers:
	-	`sha256:f96e8bf4b7e17949ec6aefe1ddae7a2e90d10f58f57cf73aa054d742e4b0a115`  
		Last Modified: Wed, 28 Oct 2026 04:39:47 GMT  
		Size: 17.2 MB (17204761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7aca41946f87f22a5d88fba1f28397ec92c3f1301479f47802958cc1b9f9e1c8`  
		Last Modified: Wed, 28 Oct 2026 04:39:46 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:b7b36d9c91d3e59fc553b19dabe8b444eb30d47e6cfa01bd4a33d8fe57c4b773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.8 MB (587790910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20807aed5b5b73fcab0e1b3e4ba6d62049f0eba8c70eb00b10e10aeca2e0ed0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:47:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:13:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 05:48:39 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 05:48:39 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 05:48:39 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:05cefee146590a5be2c7703c704e5fd78889941e24ab1dfa8296ebafd4153810`  
		Last Modified: Wed, 28 Oct 2026 00:10:51 GMT  
		Size: 45.8 MB (45829380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a1c0c7b220c9feb691744bd05f84ba55525499337ec4765cb6cddb293d793f`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 23.6 MB (23636373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a0126d5d4fff102f74230092157c786fe380675192253be404b15787941f55b`  
		Last Modified: Wed, 28 Oct 2026 03:47:33 GMT  
		Size: 62.8 MB (62760118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae0df74453e7578f0b532f5491f76a5ccf0d1e6e238ea46cabc45cd3faac6f4`  
		Last Modified: Wed, 28 Oct 2026 04:13:45 GMT  
		Size: 194.2 MB (194213062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88524d455b40546c2e754e55b16f0508bff68cc668d9d1fa1eaaf098349bfa2f`  
		Last Modified: Wed, 28 Oct 2026 05:49:24 GMT  
		Size: 261.4 MB (261351977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:edec14341745bb44eb7a1774a991d8050f1cf48fb39af607889c4403ea70034b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16988299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb123d3d011e8c2deef88d612554a5b828053dadd289c0effe34f1876184fb3`

```dockerfile
```

-	Layers:
	-	`sha256:e82e499f7a4407aaac5e465e37dff80a8c3df5a11e013161ad30e54c13902f0d`  
		Last Modified: Wed, 28 Oct 2026 05:49:20 GMT  
		Size: 17.0 MB (16972792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43ac9c57cc146dbfc81148d435a70abff698f6ade90eb1752c180f01b03fdcd7`  
		Last Modified: Wed, 28 Oct 2026 05:49:19 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:921d0846059e80eb1723e542a5090a76a245945511e4f59ea168e461febe3baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **556.6 MB (556562484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e4d001789fb7e9d81d0cf3b8ecf7c19ee093f649511ea53ced8bd393d4493e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:17:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:41:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 04:41:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 04:41:56 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47142302fe74338cf6ed49f9110b011080a21c8ad97badf03a6bb996588537`  
		Last Modified: Wed, 28 Oct 2026 01:43:25 GMT  
		Size: 25.0 MB (25037338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8bb6fc1504f78dd21539a6470860dc388c32916976117deb157b66d9d076c3`  
		Last Modified: Wed, 28 Oct 2026 02:35:13 GMT  
		Size: 67.6 MB (67634185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a48e1a423f7b0196a5eeb30fa9312d4ddac8315491bfd1dec87951691b59309`  
		Last Modified: Wed, 28 Oct 2026 03:17:45 GMT  
		Size: 227.1 MB (227134615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8482506853f03ab8f5881d3b919cf14b1a037ec430e5d70d9d6067bd9a71c8`  
		Last Modified: Wed, 28 Oct 2026 04:42:33 GMT  
		Size: 187.0 MB (186980167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:3be3591cde40a8b5956214f865f5492055480a99efb7e8aecce07bf5e887e4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17304025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03e47fa2cda7af5d7ee5a821f298c832dbd48f02f85bb98c1c302dcfe7b5a83c`

```dockerfile
```

-	Layers:
	-	`sha256:ce5b96cada9c0614889016536ec748eb16d66667cfa7fb1eee266de2def966e2`  
		Last Modified: Wed, 28 Oct 2026 04:42:30 GMT  
		Size: 17.3 MB (17288479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac74731b5a1a301e202fe68d5e22ee875489ac10ec212e8a0dd1546677d8d6fc`  
		Last Modified: Wed, 28 Oct 2026 04:42:29 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:7204e90978c1c31a2605baf6aa91d9fb6d0427064c130e8903fad6996e96a87e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.3 MB (635343020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1187b028d97e0e4b390d3ec61effb8ac6a6f8cdcfe092703cdbbce3b6f6198d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:43:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:28:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 03:15:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:40:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 28 Oct 2026 04:40:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 28 Oct 2026 04:40:17 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:685483d080bb85d9422359e87391511d4083eee621a4085004f9ddd70e2a5f5a`  
		Last Modified: Wed, 28 Oct 2026 00:10:56 GMT  
		Size: 50.9 MB (50921567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62933a21b583195e4f59a0ffcfb66f567701192ffacb0e69c5e6b700655a5147`  
		Last Modified: Wed, 28 Oct 2026 01:43:19 GMT  
		Size: 26.8 MB (26799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4462378acf938c7c0307009b8bfe3cf23a2b4953f37ac5df637e8266f3ac56`  
		Last Modified: Wed, 28 Oct 2026 02:28:54 GMT  
		Size: 69.9 MB (69857152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea71845d228c6088a2dfec056b0829f75c6e36f4c00fb865adb1f84607edf6e`  
		Last Modified: Wed, 28 Oct 2026 03:16:39 GMT  
		Size: 241.3 MB (241256135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82b3c2d3f0fa5bf47e66100bb2dacc3db7ad1e32596d594edd04d8d8a5a2f61`  
		Last Modified: Wed, 28 Oct 2026 04:41:03 GMT  
		Size: 246.5 MB (246508667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:2c505e7b3522ef3a453a7722bac9aeb8a2f2785cb3364b3dc313995316ca6fe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17189690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e10f23b36bd3b87a9b69bb5eb83876d6713beb368384bc286b419d37a4b03ed4`

```dockerfile
```

-	Layers:
	-	`sha256:6672cfd5bcc34bc0279eb1db14586af85c04d1da05668f8f8d395fc0debe4395`  
		Last Modified: Wed, 28 Oct 2026 04:40:59 GMT  
		Size: 17.2 MB (17174346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9406942458462417254f6924258f3ec9fbd8751b09119ae793179098b976343d`  
		Last Modified: Wed, 28 Oct 2026 04:40:58 GMT  
		Size: 15.3 KB (15344 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; ppc64le

```console
$ docker pull rust@sha256:47797b1c2ea323507ec942e253dcd504a6ef0381595682869675ba5fd3e22c8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **683.1 MB (683147923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f66a06131f08b4b8f9cb41067522908cc591c023d1d24924a4f0ba56ba57432`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 04:22:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 12:05:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:33:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Thu, 22 Oct 2026 09:45:54 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 22 Oct 2026 09:45:54 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 22 Oct 2026 09:45:54 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8de6f8901db850f86f9e68b13db2e5cfb33d704fa35193b08356b97ed1e8ec`  
		Last Modified: Wed, 21 Oct 2026 04:22:54 GMT  
		Size: 27.0 MB (27024125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7744e5d6fd3bfcd3262b3a9e3b2a27318e06fd070d6b1166cec1ffd0eb1390b`  
		Last Modified: Wed, 21 Oct 2026 12:06:36 GMT  
		Size: 73.1 MB (73097411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c246ff8874bafd896a244316cd9b47022a611e7669e29e48a6f989acbe99379d`  
		Last Modified: Wed, 21 Oct 2026 15:35:32 GMT  
		Size: 232.2 MB (232208302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf33f2a1c44b667574b74472c0e9c1445c6d6cc8ed6a1f5c2ffae5287d2aed7`  
		Last Modified: Thu, 22 Oct 2026 09:47:41 GMT  
		Size: 297.6 MB (297610507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:8d224c0e723e05b8dd16af8ed801efa8da1aa1b40100d4d783e2426e3930f071
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2fe01588d2a8262116a1afc44a935b937c967a44856fe2a70756356e46ae91`

```dockerfile
```

-	Layers:
	-	`sha256:d1e3e0a449c990cfa5a1072d7b63ed9796bcab82a6d16df8a51682c0a63492a1`  
		Last Modified: Thu, 22 Oct 2026 09:47:34 GMT  
		Size: 17.2 MB (17191884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5a5e8d9afc79c8d3b605f3f3dbb409f06a3e95ed8b340947c4d82c9acf70abd`  
		Last Modified: Thu, 22 Oct 2026 09:47:33 GMT  
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
$ docker pull rust@sha256:deb6aec26f76cd1e03423dadfb9f7242d36f2fdc5ec01368d79ac7975cb88391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.7 MB (651670159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472224a9bdb52e9d20320914fcfdd7ce8d64a6d8b730d1af71b3695593029fe2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:10:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 02:25:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 23:10:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 23:10:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 23:10:13 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='5be191e8c70a5007074254cb74d78dbfdd25cd5a61c27de7b8e5410122ec24f4';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='fb8cc6c0ff713fd405a6940c80138516da9b75e6649e280cb65342afa3dcf188';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='a9c168dbea81a84671c6b7a5c1795cb0eb699020110d107ddfca427bd797e697';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='01c158bbee6bf70a57bd2642349b6f70e0be8b98b366fc4bbe38dfe7f82e1acb';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='96d46b6164ff778288c789e7e94dd09ce55d35777043aabe4e7af1d99b04bd71';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='c60999321d0363f6e4d75b646f59ba25feb41b20f872ffb3a46b9a9aea6da1fc';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='1217772975cb864e12a2cad757cd27d7dcdbac3b490a05ad9b86b61ffa6a8b3b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:704f7e15662a961f845613a96026b2730c44eeb4278aaecb894b38a2faf73324`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 49.5 MB (49460141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd33cdea1fbdb4ffcd44fee7135b211b2c5a2a70ab9e516ec85432c1bc07fb61`  
		Last Modified: Wed, 21 Oct 2026 01:10:22 GMT  
		Size: 26.8 MB (26814219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44aa5ddd4c553ac7c2cac8bb00eeba4af94a81fbefe6045c863220ef11212b`  
		Last Modified: Wed, 21 Oct 2026 01:56:41 GMT  
		Size: 68.7 MB (68663139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21749c740ddcacabb16b27febc2fc7e459e877eb7fd999966f02bf7486ea4a04`  
		Last Modified: Wed, 21 Oct 2026 02:26:11 GMT  
		Size: 207.5 MB (207534168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c5eeb467dbda6fec741bc97f5f2212fd4e67ade84e84199fbaddf8cf40c0a9`  
		Last Modified: Wed, 21 Oct 2026 23:11:20 GMT  
		Size: 299.2 MB (299198492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:247c7035dc0a759467f3471cef54a84610fa932ff61902638f80efc7104a8708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16998961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:524ee48e9e742d2eaff4e6cd8b5f10b863b6b4a0ee87cc34cdaff97b57b240b8`

```dockerfile
```

-	Layers:
	-	`sha256:ff5c9524ccb08f0bf021c2e2a11e7ca78bbffeea9c1a913da1fc6bd29bee4a73`  
		Last Modified: Wed, 21 Oct 2026 23:11:15 GMT  
		Size: 17.0 MB (16983566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1b6b264eac835014e273a058b2f43141f9facc696a2439a86277c695aeb9f0a`  
		Last Modified: Wed, 21 Oct 2026 23:11:15 GMT  
		Size: 15.4 KB (15395 bytes)  
		MIME: application/vnd.in-toto+json
