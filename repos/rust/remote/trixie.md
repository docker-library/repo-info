## `rust:trixie`

```console
$ docker pull rust@sha256:edc584c5d2f915bcc5b08049987e7a492ccb8ab188444daf0a870b3ef82a3b2e
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
$ docker pull rust@sha256:a408316aa82c7fd6877ef5d527c9c16f2e8878c4b81090ebd0e3d8ea306d8084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **587.8 MB (587845790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:061ad62e2346b4351839c64a0f05892cf0dc799062c471f8f6214138127fcab7`
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
# Tue, 03 Nov 2026 21:54:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:54:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:54:49 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:dbbd7a9a02aad7b28df10dd45d8604b178ed139f21875aaecbb72303da91d697`  
		Last Modified: Tue, 03 Nov 2026 21:55:39 GMT  
		Size: 261.4 MB (261406857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:1b5c6437d8d84a2a0f80558d2a7cebda284c4b3f1f981b29eb8f300abc9fe592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16988300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c70a636e40a08a1eafaa93d9b1a8b58ca7fc30308facf594d618b1ab077cbc4`

```dockerfile
```

-	Layers:
	-	`sha256:cbcf692a98482bf93003109ff62a46c26d69dfb42f13cb3817bb27ed0f8ec993`  
		Last Modified: Tue, 03 Nov 2026 21:55:33 GMT  
		Size: 17.0 MB (16972792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cffe8678c45d3de4b079275deeba57a4618c5d8c2563acc2b442b6301e6379f5`  
		Last Modified: Tue, 03 Nov 2026 21:55:31 GMT  
		Size: 15.5 KB (15508 bytes)  
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
$ docker pull rust@sha256:c73f40a2265248656bd75e7d093cc9922dd622c8fbc27e72e7fa199f29670b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **683.2 MB (683193405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee718597c7db85a55ca3a92979ebf2292a71229d849fd373892e71f65d0bc3a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 04:20:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 11:57:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 15:05:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 21:55:37 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:55:37 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:55:37 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0211c9ed62620780a710c0cb995ed73df4683591de20af0c8ccc39999890b`  
		Last Modified: Wed, 28 Oct 2026 04:20:40 GMT  
		Size: 27.0 MB (27023152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8d8ceab2b16cf2542e733824abb0b41dde9a2e11d20fda83fd8246cfb3e620`  
		Last Modified: Wed, 28 Oct 2026 11:57:57 GMT  
		Size: 73.1 MB (73093257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2621d2c198fe09079ae61d78184c6cab9e61ef89eb433037fa2f84d0cccce35`  
		Last Modified: Wed, 28 Oct 2026 15:07:01 GMT  
		Size: 232.2 MB (232232773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38a84d7b80c52b910304a2dbe280b9088e6898323ef722a5d37bf3195afaabd`  
		Last Modified: Tue, 03 Nov 2026 21:57:49 GMT  
		Size: 297.6 MB (297621981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:761ba22958e281aedca19b33798981c01cfba036653b49e9f9b6aa2f2d088648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17205771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dfada9542339ea09431e933069a820e55d36bf2581dceefb16b680ee8ce58e`

```dockerfile
```

-	Layers:
	-	`sha256:f782895d56719f4da7abd9e954cfa64a7a065d30e545a7b08a13d3789e39a8e3`  
		Last Modified: Tue, 03 Nov 2026 21:57:43 GMT  
		Size: 17.2 MB (17190307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352a64474ec71f0046c6c1bea39183b9a20affde3e62e6038792a5bf0f3dab60`  
		Last Modified: Tue, 03 Nov 2026 21:57:42 GMT  
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
$ docker pull rust@sha256:16f9cf8cda81ccdd9a7ac9ff7754c96f223d62c0f9ed159d202dd2c84e5ed502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **651.8 MB (651792586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:232742e9c657db8c24d6c40befb5a7c4cb4685682f377d9a05ff5770e9d52724`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:43:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 04:12:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 16:48:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Tue, 03 Nov 2026 21:52:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:52:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:52:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2250e610e1393c26b6c89de550932ab3d31129c6532b4cf00f5c62c0d6bda7d2`  
		Last Modified: Wed, 28 Oct 2026 00:10:37 GMT  
		Size: 49.5 MB (49475831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ee5e1f1d6256810cb42c0392efc9c686df4046ca11a10101e09b70baca67e9`  
		Last Modified: Wed, 28 Oct 2026 02:43:16 GMT  
		Size: 26.8 MB (26811804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdbcc8858cde6193263947c31b5152380d626a1b64ea15511915cf0be7d9cec`  
		Last Modified: Wed, 28 Oct 2026 04:12:36 GMT  
		Size: 68.7 MB (68663295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adeaf67b059ddfeb19f0c204f11395a066c7e1581c6ac5af4783a99e69eee49e`  
		Last Modified: Wed, 28 Oct 2026 16:49:43 GMT  
		Size: 207.6 MB (207566449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ab6a515c70a055ce3a28054fe4c36e1311e18b1a5afe87c469c075dd700e4b`  
		Last Modified: Tue, 03 Nov 2026 21:53:49 GMT  
		Size: 299.3 MB (299275207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:13161bcb8db8a18988fa2d08c5fde6b2fbc2103444ac21b7f2c032433a17a572
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16997389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d2c3b789901e3a0b06e3cd4ef00e20f4aa2d1b5123540eed3baa99e3ae592c`

```dockerfile
```

-	Layers:
	-	`sha256:3599653919a66e3c85095e9533d9fae24f0c27860c5788e6698493c4d536e3b9`  
		Last Modified: Tue, 03 Nov 2026 21:53:44 GMT  
		Size: 17.0 MB (16981993 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4da73b117f574ea4645fe9bc6ef9159b86a7a1c128de80b9f0a09c7f9cbb893d`  
		Last Modified: Tue, 03 Nov 2026 21:53:43 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json
