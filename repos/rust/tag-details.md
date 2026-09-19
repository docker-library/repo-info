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
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:da8d60ba23ac31f4dc6da2fb9e8162e6710cae6e06e42204972a38837336c748
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
$ docker pull rust@sha256:f42eebc7101bbecba8fd9870829c75e320e786796e4d9f3264b9636f2c429a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338908709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f85d4877802d084af64a61d73a5f550f4c3b9cc81e4fc09b3a8e94fb00ac94d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:48 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc2a47b778cca89744cefb13a176fbc0b7dbfdf471b322b12c5a88de863c69f`  
		Last Modified: Fri, 18 Sep 2026 17:20:28 GMT  
		Size: 65.0 MB (64989536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d944191917ed1b18c4d951662bc6ea752debb9f0c9a7f32165cb6f8c6281df1`  
		Last Modified: Fri, 18 Sep 2026 17:20:31 GMT  
		Size: 270.3 MB (270293153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:0ac4e55fd99616c0753b7a71889e041a2914d7289d0803e960f93d770da62c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 KB (956130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0455d9e535b156a00d23b678759a991f50baa312f64d70fc3ec5fffbf1c612c6`

```dockerfile
```

-	Layers:
	-	`sha256:89fcdf420c41d1e61b6f2d0b4d0e4cb3534e3dd6a472b1bbcc400af44e732f89`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 943.9 KB (943945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28bbd2886136e7d3f85cfe8669a7e64241ccb8e322eb49f52b59b059864c1a`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 12.2 KB (12185 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bb2bc68feeb42da80ff8be18b2ebe6aa293e262a8932c9dcf0072fcb515ccb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (343010795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9787bea414499a15ae706a18a3c91f2a248cf4344eba5cde487ce6f5b99423`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc55931329ca180e8e99fb9376ce9563efbfa2e3f2a3c9765ad8ec283e50ff69`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 61.7 MB (61665686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace9fc881259197b517740e3bb004aa1bbf783dd9550f58ddb8f0b14353c25e`  
		Last Modified: Fri, 18 Sep 2026 17:20:04 GMT  
		Size: 277.4 MB (277370608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:2f7edf57288236ebff66d9d42cc1cc85561979dea4da3d7bb7239225f1246e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9073517d1161871ce5fe9b628f4921a6f9bc9beee27ee6116078ff266a4c6ef`

```dockerfile
```

-	Layers:
	-	`sha256:5098e7ff4bb19b74c0889096efa11511fd2edee39910f53dca0dcbc286d62e7b`  
		Last Modified: Fri, 18 Sep 2026 17:19:58 GMT  
		Size: 1.0 MB (1023269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9356093c480632e13ce196e466071d1943a5e5ca4b625bd560551eb6829a1c1`  
		Last Modified: Fri, 18 Sep 2026 17:19:57 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:eea78d0420ceb8be7bd20fa6329c4191689f7e1950b266a11ae3d767e267fe04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358970494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad75622fbcb4be06e95a8135769d6bb65480434889200f2acb010bd9b64f287`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:07 GMT
ADD alpine-minirootfs-3.21.8-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:07 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:05:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:05:56 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:05:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:22:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b28a33aa72108f40f441b063d4388f0fcb4e9b61a44072cfd1a066a7f99d9455`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.6 MB (3558846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d8e137c722547c6eb150557a8ccb3f60c96b9d67810d495953825ce8a0fe42`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61476624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f245aaf8ccab7f8229f0a83be81e5d4ca445d4d61f49aa966fbe263d1b68cc`  
		Last Modified: Fri, 18 Sep 2026 17:23:32 GMT  
		Size: 293.9 MB (293935024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:5f33d5d0d00f3035b88dc8afd056728c9fec58a1b82a2739021bd94ae8819549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.0 KB (970026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f900642c405645bc0fde644d4cef633d761e5477d318ea9c04c618e22ce502d5`

```dockerfile
```

-	Layers:
	-	`sha256:1cbcf669db6be1313fc8d47675535bc47cd05730bce5d58458a0b5b91fc8105e`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 957.8 KB (957794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d2d374304557996947d162005fa2959ee48eb41a1f1fff8f5caa0a53adff911`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.22`

```console
$ docker pull rust@sha256:a1796ca6fa216d6727b5f61c69e4c665b120b1a4dcb969639e2f25f1ed309456
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
$ docker pull rust@sha256:df2234c615138222413254f45937ae45d284aad971644fe564e4250609abe452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339122297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce61265c0efed6a98c46baa2c99b1c163c04e9cf656b7ff51866f2e130e3ab67`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:28 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0c839dbe6a61c66498a1921f8a3081c8c3ab87bcdb439256b0df069f46c0ee`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 65.0 MB (65037047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8241433eedcca95e61cf705479a266ce562bb9615fa82c24c08a534bf85a2ad`  
		Last Modified: Fri, 18 Sep 2026 17:20:07 GMT  
		Size: 270.3 MB (270293175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8a24754a587cf75dff5a489c5ba0da5bf1bbecf3069633092c7e2d3d7a131f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.9 KB (956911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6192a28969e4663c266ee32d52ce31a35d5341e0e00c64bf4b989ddf460d00`

```dockerfile
```

-	Layers:
	-	`sha256:1ea2b7b9f2e63c4d0be09cb4d30f26c7ca6e06365159e2365c3c88b67b43ff0e`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 944.7 KB (944725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fbd55c96d66ca15ee50faae3f8540b8f0f6e79bbc00e1303e95418f6d892828`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:8c8136ecbaef3c248920e564a832a5217ff95819fa351984b48d39def57db223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343208002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85672871876c9d633358f7bb4ab23da58b160e532f67f073f45baae208638cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:13 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:27 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4116a5acacb4920f7cc0bbb4affb6e1f9e1374c364613ccb8dbf0e5c0e5dedac`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 61.7 MB (61714505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea50e377bcb9e1941ffb336d05bd45295779bff40d2c0f51b454309c2123890a`  
		Last Modified: Fri, 18 Sep 2026 17:20:06 GMT  
		Size: 277.4 MB (277370413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8c51312cfa7b9e1e17f89271dba2dd939d0fa3992cf532289ac361ea9e49b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a60201724b852be2bfc51e6ff3489e9958ee356f296527a728deaa0711d54b7`

```dockerfile
```

-	Layers:
	-	`sha256:0e4c7b0a2e09ed159e16cf125e4f44d1d611f11b5616b4cf4bf4ffd01a50a3f7`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 1.0 MB (1024049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c5eb6e7dd3ece5aadf78eb7742043f2d5ab6bdc1162661c1da89e98c2c35cc2`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:37b3c5bc39e378f7bebb3769b7ffc48d8a37b87e1b920f4f8ef378c525fd0981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359173473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a382980589c82fad760880d9683673d716f5f841423f797bffc13eb409b7d55`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:06:14 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:06:14 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:06:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:23:40 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f10bbb12b435427a15ff1f63cb2d469f1032b9e85c39f246332f01efb06b71e`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61515530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec90664c4efcfe3240c6e7226b4dc07b817f1db0f6595436957cc9708c3fbae3`  
		Last Modified: Fri, 18 Sep 2026 17:25:04 GMT  
		Size: 293.9 MB (293935187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:3e96593092591bc4a7766e2afc75d4980a8e83c58f34743a3547a51803336478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.8 KB (970806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cb6ecb75776c11c32caea975aa1b85ea056fdee56fd0c9389ea14f49b60d16`

```dockerfile
```

-	Layers:
	-	`sha256:b92e9073ce52eead02b27315d73aa25e172fd8448aaaf45bedb52b7b42681865`  
		Last Modified: Fri, 18 Sep 2026 17:24:58 GMT  
		Size: 958.6 KB (958574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bad214f2b5e1a3463bc1d56f7d0dd2879b139de0deeda2b0ae9c94df9331ee9`  
		Last Modified: Fri, 18 Sep 2026 17:24:57 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.23`

```console
$ docker pull rust@sha256:94a43bda4fd9b71fa3a74621c0982a646f83c7d1a3ba52bb4b7ddfd76d4dca93
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
$ docker pull rust@sha256:654de2105a34d9b1fad1994ae55bc78c9fc21adb551b6b749181c52d4fe0a732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349215459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78457d577ad69a4d63dc55adf0d69345aadc0831d6fe87f0e5919c06f4dc70fe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:53 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:11 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48f519c30c0b29d73e73ad08f3482b1568aec577407abd0b688426d7847b8f2`  
		Last Modified: Fri, 18 Sep 2026 17:20:51 GMT  
		Size: 75.1 MB (75073785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd97ff18caf1617463f8d574a67bf3bedc4741f819d700177bb767ec57d72c`  
		Last Modified: Fri, 18 Sep 2026 17:20:55 GMT  
		Size: 270.3 MB (270293167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:d81908c2af5e6d297dabd61030d787f65fde6c99fca5c393190074918a005072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1000.5 KB (1000538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045dafce090d1eaa47026a6855e61e9dce1268ad651f0fe9824f62d6689841ad`

```dockerfile
```

-	Layers:
	-	`sha256:9266ae7f0bfcce895cda229ce737a596d7720db6eb78c43192b867b3a7d99165`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 988.4 KB (988352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49b8fa123fbce01a81c735b46196576760ff5edf5adec2a2949011c0da045257`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:03401b341e29bbc4b0a4633bfee00e07161a29b38bbf4b22021b20c3cb545ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348049560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d625307b43b095b53caddbc802da2af6d81c82086aa686a3ef44088f20da745`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:22 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:22 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:37 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927634b3786ab173083c4c6a924125e74fcd5b8da6511c940aa8eabeae905316`  
		Last Modified: Fri, 18 Sep 2026 17:20:12 GMT  
		Size: 66.5 MB (66493122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bee5024f1bc4ea576ea72c1d8a4db98ef3381fbb9453fc8c5ad432ffd6969eb`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 277.4 MB (277370382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:406cedb8674407a05b17c15943f9e7c3a255aaef27f64e811c0be56a7741c300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1059666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc0b1989ebbc80b50017b09d8b1157dad9e6307eb6c292acb38ae87668983e`

```dockerfile
```

-	Layers:
	-	`sha256:c7b33b89446095453973af6a91aadea63cc60b63523a412706999fd51fa94186`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 1.0 MB (1047361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efab7540e286731d44067bbdd7152a38c767935677b3f147bba320f3596bda65`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:648b6b9a65c2a29872673007230b19dc33a680034205fd5416d92c64e8869ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364125137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d24b3c94e1b59f1b5ced4ce5fba20720ead16b59abec62be24c91aed1b7877`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:24:05 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57bf0db0a28ed5e11dd732672b13d0a948b3581a08a0d14f93422b4cd21ba6a4`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66375184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b114d23161d7ef737c6caae16c106d1b81bdd0f3de9b96766d6900f6afe51d2`  
		Last Modified: Fri, 18 Sep 2026 17:25:18 GMT  
		Size: 293.9 MB (293935184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:5b9d0bb400c8942d0c36adbd53b56ad6262df391c92309681951e435f6711b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **994.2 KB (994211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c4be00750a1797ab28ba3e06aff8666027bdda8d83f3f4d5def962385b8e5d`

```dockerfile
```

-	Layers:
	-	`sha256:0d14623d149cd8fa1b2dddae4786477da39c457e6c9aede3152b935ec75e9825`  
		Last Modified: Fri, 18 Sep 2026 17:25:12 GMT  
		Size: 982.0 KB (981979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c3716aff45ea4185f057f01acf1c5cbddae75a2049890cd014d89f7ad8ddc18`  
		Last Modified: Fri, 18 Sep 2026 17:25:11 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-alpine3.24`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-bookworm`

```console
$ docker pull rust@sha256:4a8dc0e32ec234e6c76e0047749d84bf742eb165e8af061d8eb65da532403ce7
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
$ docker pull rust@sha256:c49256cbe5ea0188bc658a689500d70c41eb51f009a7a7be209caf60a944f3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.5 MB (562530953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d41993b1f2f78dbd010160b83b06b0a38e17b57a269e9bf0be7f2078073f98`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:40:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:53 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9e8d0a007171cac57d643a3982902d45431cd860400eea55e18df75fc0b12a`  
		Last Modified: Sat, 19 Sep 2026 02:17:13 GMT  
		Size: 211.7 MB (211707818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47495189b3619615361bf1ba54a703b2a44cb7d76757ae1cd6a77d4f845bd357`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 213.8 MB (213839347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:c9a80b39cd894ae26b4535826cd68e9cfa81b1c2a94a455d996364039a1cdbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15884796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95abc9a0505ee48f6eb26f2517991040dc47c971e05e5145ae2b13a61680ee`

```dockerfile
```

-	Layers:
	-	`sha256:8c588c06788a615d23f5a3da0052db65bf8da78cc02af6bd17835d4c5a2a9436`  
		Last Modified: Sat, 19 Sep 2026 03:41:28 GMT  
		Size: 15.9 MB (15871700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04686df85e6e7f67241ada49a8e0dcc7ae8e96f757f988535e76732631b0efde`  
		Last Modified: Sat, 19 Sep 2026 03:41:27 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:7ae83ac4da9943bd335b7ed7d6ab2d6efcba8c87bb10e173f0897f210f73457b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.4 MB (559395342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79981d772efe03060a9671e927d22885bed55938afa7ca1de773810df74dea1`
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
# Fri, 18 Sep 2026 17:17:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:02 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:3502339839ddbdb50d9573ba41ec01929ca111d7bc201d1956dbbd01542e878b`  
		Last Modified: Fri, 18 Sep 2026 17:17:48 GMT  
		Size: 258.0 MB (257987798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6c68c19b8b695dc997e4302d8c6859e7d993ef8f776bb8cf601ee14fbea4e595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd22bc2cfa0e83212a1ea5a4980c15363fcf501f664099c1e56e2f0e4cc1c99`

```dockerfile
```

-	Layers:
	-	`sha256:28c6055a3cd96c5a7fad77667efc5205519c8ccf0cab7402ff0573a8532c090c`  
		Last Modified: Fri, 18 Sep 2026 17:17:43 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a3ff8b4183cf0b3a18d88c81eb7b6cbe8a57d4a9effb2ecb88850f402a6235`  
		Last Modified: Fri, 18 Sep 2026 17:17:42 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:5b993f23fb69746405496e76f91e511d96c82b5b23304fd5d20b4a80a8b223ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.0 MB (522035583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1999f81da8e1f787006d58cbaece8ac4837d7ae04ad16784d829470f4bebc8d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:43:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:43:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:43:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3ba406c16b69d4aa51efbc3e6261745f96834c1468f508f6c0eedfc94b57ad`  
		Last Modified: Sat, 19 Sep 2026 02:16:41 GMT  
		Size: 203.4 MB (203421216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9509957d657ed361410cf3985e80f77ffb71c7917ab2437416c892b0c823ce`  
		Last Modified: Sat, 19 Sep 2026 03:43:56 GMT  
		Size: 182.1 MB (182096628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9fa0ff2206e8c7644f8b3bda86abb13cf399cc83ce5b80778f435e44c53d9dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134b4b6ff29ea75276eaecb637a3360a7fec645d07b4b1d53894445fce90bc4`

```dockerfile
```

-	Layers:
	-	`sha256:eeabcbdfa3ed73e5285c4b5aaf8439dc2b6b7bf15f98770d823cae06cdc4c8e5`  
		Last Modified: Sat, 19 Sep 2026 03:43:53 GMT  
		Size: 15.9 MB (15900226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f187ca2f8a62fef08676aaee58ba4adb148dc439fad8227e1d448253dad029c`  
		Last Modified: Sat, 19 Sep 2026 03:43:52 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; 386

```console
$ docker pull rust@sha256:9c7865a496711c859ce6673aa75f4dca1582dec73a752d10eed1ff9a39a544f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592138312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a9d4ea46ea63f5126d96a6c3195b1a8445e3d351a3be286f3ae03df182f240`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:38:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f002589ea9ffed9d13043e7864c8ed045e3b473b90e4c5bdbc6dc29e56222ad8`  
		Last Modified: Sat, 19 Sep 2026 02:17:11 GMT  
		Size: 210.6 MB (210611416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31f818ffe545caa61bd39d7cb9e962e58e72072a34fe1fa5879897fa10a8974`  
		Last Modified: Sat, 19 Sep 2026 03:39:14 GMT  
		Size: 240.9 MB (240888982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6cd6225667f424cb22158e3bfe75a71f6075c8fc00bca5ab59b15018f0eb2476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15862983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc8a34a95aab432453050916bc397f1ab1ea45618559e4416348fed10bdf152`

```dockerfile
```

-	Layers:
	-	`sha256:f641cf19931fad071ad30f08c1d877d3d00220b5cd526c36bf51eaafeab3af62`  
		Last Modified: Sat, 19 Sep 2026 03:39:09 GMT  
		Size: 15.8 MB (15849919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3935db3016583aa2ce46321fd58416d08cfdc8249155c5de150761f23249d682`  
		Last Modified: Sat, 19 Sep 2026 03:39:08 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:c8cc324c353770020ed6357be1be98f9e5c46286e3c86afc38c5106ed99aac77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.4 MB (657362285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bf09a9ed94d33ae165f9b6dfbc33c1a7ea969b05539706851fc5c52b5fbb50`
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
# Fri, 18 Sep 2026 17:16:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:16:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:16:50 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:b3d0fcd3c0b92b0d3464e36838637d50fb317b753b69f56962c4d99fe74bfc45`  
		Last Modified: Fri, 18 Sep 2026 17:18:42 GMT  
		Size: 294.7 MB (294723995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5bb7172630848452bd952d55b3c904efc258a90b3330c9d9b86b97e57e97c522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a617686404f9869792497018114cfa3f2e80165a2d40f5c21d9429ee22e32a`

```dockerfile
```

-	Layers:
	-	`sha256:606631928a63194e306bf48fa1b4337a324ccd2f1753ac8167fe3fd380d1ffd6`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5206a2a3996e078921e894bfee6058c5876d53e7ca0a2147a09e2d430a138e31`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 13.1 KB (13140 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-bookworm`

```console
$ docker pull rust@sha256:94f07be94ef988b07ffced04e357f26044a1d3e742931886b346138d93ffc843
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
$ docker pull rust@sha256:dacc9e51f252243eb59d2fb4cb4ad8b0d3f607b6a82c398cf8a321e59ff778a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312857406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c4ab4e96dfb4ec55222183735672bf45a3bbfab7e2703dc03eae7e3690e7a7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8f0f20aa55d04c2825907b071dd82893a52a1b4dea49c2c1e8ee4ee0aee415`  
		Last Modified: Sat, 19 Sep 2026 01:09:44 GMT  
		Size: 284.6 MB (284618963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:2ade8fcb7e491bd18deabb233a58bc64c1d2e77b0475bfa90c582789dd3b8cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bf1de22b95be9712c8fcfabece1afee365f214adedec1b52ee0a806d5ebe86`

```dockerfile
```

-	Layers:
	-	`sha256:fa91d0cdf88913ca8b60f4d8b886b10888f25bfffbe4cc8c68708a4355922ca3`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 4.1 MB (4099497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:563b3703fbd2cb0f0bc2f2d775af8b16532d477abd18b0e045476db5d372b83a`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:e7a7ba3e1fae016b73793ddb175179360b9aad8664d47ed8e6b3fb6d9163c84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329776382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e61aa8a089caa0ee88ec270494391023051bea6c4e03660f093ca5bcbed43f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:18:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 00:18:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 00:18:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee406b197dfa543c5ea03c1ebaf8301252578ccf63714c002c86666162ab438`  
		Last Modified: Sat, 19 Sep 2026 00:19:00 GMT  
		Size: 305.8 MB (305833266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d60cb8ec17219b14b7d9299978fa95ca83e89b4dd0a660076f921b0bd790a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d75aed3e3b107503c27b2b2f2de2efc6197a39766e30c158aca02aabfe33d29`

```dockerfile
```

-	Layers:
	-	`sha256:eda739e7cc0ec3dfd86d392bd0e4135bd0c610e2502d0c5c2586705846bb3003`  
		Last Modified: Sat, 19 Sep 2026 00:18:55 GMT  
		Size: 3.9 MB (3913884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91728add892f607b95fe0f3a6d43be906a23c194168dc32ed78e06a6bb33ee3a`  
		Last Modified: Sat, 19 Sep 2026 00:18:54 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:3ebe98baef5911f8461cf81ba05644374a3c5ef1f8a33db3977bd4175f5ff1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276111603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17156b215e21a0b10b1d7576ee47b656ef76bb4f59575f396adcf59320dc6d8a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:32 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b9a6316d31dfc368a367f8ce730b2dedb89578a5050f48554fdc9be3624982`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 248.0 MB (247987923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:04ae8b246a33fa1c2237ec59b2d397e5bf510fd736932974bf484b619b6cf927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2316dfeea71a54010382e711613e452c66a85060c0254a4f143a5454431cd4`

```dockerfile
```

-	Layers:
	-	`sha256:d6e6ce60592c319cdf1b71cd3d0db6f5c829a6d0d85aae588e89ff59d771cbf1`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 4.1 MB (4121791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:920bc9c81ffad9f5439a231cf61a3e5adc237aa043b5c40ff4a643aa26ef186e`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 13.4 KB (13410 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:2724f873455ec980c5e5b3cd94071d3ab237f7cd846284036a50416150be61ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337737042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c7ee413c767c867013691767c299b168990860811571a17494054172da797f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9049aeb5adf75c12cbe2890c88f7a31f47aa28de03827ea4cfb0a8a9dea6fa7`  
		Last Modified: Sat, 19 Sep 2026 01:16:30 GMT  
		Size: 308.5 MB (308510937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d09bb55e173a33bad144f2dc89000ea0e4e6f0e13a52dfb06c906342a6993d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6627438f61473638eb408a90971962921fd0b950bae1717e37d1a8e702b127e`

```dockerfile
```

-	Layers:
	-	`sha256:02baa8901dd11aaff0ae212911de238370c97a733ab45c02507f2964fca32a60`  
		Last Modified: Sat, 19 Sep 2026 01:16:25 GMT  
		Size: 4.1 MB (4080183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be9895cd1c804e7038f82f8fe90f853ea9462ef1c75101edcfe12ad9a907e4bb`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:2e855c1bafecbec2f25145892ad54359dda760895fb5125621f5d34abb980902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395588600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a90437123ae3a17c0881bd8bd29c56a23bf5bca173ab3bdbdb046248e67731a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 18 Sep 2026 17:17:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fae863e578604488f95384ab1bed447d123415926786548371a867a77c0af`  
		Last Modified: Fri, 18 Sep 2026 17:19:55 GMT  
		Size: 363.5 MB (363512123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:fa0dedf58b5dbc4d43f9708a47b351cf8fe6f3d787c77573a7fb7d3d76f561f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983b82343b307f24f26a1ff70eb10882ce7f5070d4a25dd360de63c8b69db857`

```dockerfile
```

-	Layers:
	-	`sha256:47018db193d8866460afef802dad52e03d8c172b0930047d4bdff0cf0a2f20e9`  
		Last Modified: Fri, 18 Sep 2026 17:19:47 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bc5cf5e54d80bfbbc4cd1f8e4ff47b1f1772a4a5e704fb8eed712b454f262fe`  
		Last Modified: Fri, 18 Sep 2026 17:19:46 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-slim-trixie`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1-trixie`

```console
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98`

```console
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.21`

```console
$ docker pull rust@sha256:da8d60ba23ac31f4dc6da2fb9e8162e6710cae6e06e42204972a38837336c748
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
$ docker pull rust@sha256:f42eebc7101bbecba8fd9870829c75e320e786796e4d9f3264b9636f2c429a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338908709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f85d4877802d084af64a61d73a5f550f4c3b9cc81e4fc09b3a8e94fb00ac94d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:48 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc2a47b778cca89744cefb13a176fbc0b7dbfdf471b322b12c5a88de863c69f`  
		Last Modified: Fri, 18 Sep 2026 17:20:28 GMT  
		Size: 65.0 MB (64989536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d944191917ed1b18c4d951662bc6ea752debb9f0c9a7f32165cb6f8c6281df1`  
		Last Modified: Fri, 18 Sep 2026 17:20:31 GMT  
		Size: 270.3 MB (270293153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:0ac4e55fd99616c0753b7a71889e041a2914d7289d0803e960f93d770da62c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 KB (956130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0455d9e535b156a00d23b678759a991f50baa312f64d70fc3ec5fffbf1c612c6`

```dockerfile
```

-	Layers:
	-	`sha256:89fcdf420c41d1e61b6f2d0b4d0e4cb3534e3dd6a472b1bbcc400af44e732f89`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 943.9 KB (943945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28bbd2886136e7d3f85cfe8669a7e64241ccb8e322eb49f52b59b059864c1a`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 12.2 KB (12185 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bb2bc68feeb42da80ff8be18b2ebe6aa293e262a8932c9dcf0072fcb515ccb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (343010795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9787bea414499a15ae706a18a3c91f2a248cf4344eba5cde487ce6f5b99423`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc55931329ca180e8e99fb9376ce9563efbfa2e3f2a3c9765ad8ec283e50ff69`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 61.7 MB (61665686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace9fc881259197b517740e3bb004aa1bbf783dd9550f58ddb8f0b14353c25e`  
		Last Modified: Fri, 18 Sep 2026 17:20:04 GMT  
		Size: 277.4 MB (277370608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:2f7edf57288236ebff66d9d42cc1cc85561979dea4da3d7bb7239225f1246e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9073517d1161871ce5fe9b628f4921a6f9bc9beee27ee6116078ff266a4c6ef`

```dockerfile
```

-	Layers:
	-	`sha256:5098e7ff4bb19b74c0889096efa11511fd2edee39910f53dca0dcbc286d62e7b`  
		Last Modified: Fri, 18 Sep 2026 17:19:58 GMT  
		Size: 1.0 MB (1023269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9356093c480632e13ce196e466071d1943a5e5ca4b625bd560551eb6829a1c1`  
		Last Modified: Fri, 18 Sep 2026 17:19:57 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:eea78d0420ceb8be7bd20fa6329c4191689f7e1950b266a11ae3d767e267fe04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358970494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad75622fbcb4be06e95a8135769d6bb65480434889200f2acb010bd9b64f287`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:07 GMT
ADD alpine-minirootfs-3.21.8-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:07 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:05:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:05:56 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:05:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:22:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b28a33aa72108f40f441b063d4388f0fcb4e9b61a44072cfd1a066a7f99d9455`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.6 MB (3558846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d8e137c722547c6eb150557a8ccb3f60c96b9d67810d495953825ce8a0fe42`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61476624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f245aaf8ccab7f8229f0a83be81e5d4ca445d4d61f49aa966fbe263d1b68cc`  
		Last Modified: Fri, 18 Sep 2026 17:23:32 GMT  
		Size: 293.9 MB (293935024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:5f33d5d0d00f3035b88dc8afd056728c9fec58a1b82a2739021bd94ae8819549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.0 KB (970026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f900642c405645bc0fde644d4cef633d761e5477d318ea9c04c618e22ce502d5`

```dockerfile
```

-	Layers:
	-	`sha256:1cbcf669db6be1313fc8d47675535bc47cd05730bce5d58458a0b5b91fc8105e`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 957.8 KB (957794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d2d374304557996947d162005fa2959ee48eb41a1f1fff8f5caa0a53adff911`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.22`

```console
$ docker pull rust@sha256:a1796ca6fa216d6727b5f61c69e4c665b120b1a4dcb969639e2f25f1ed309456
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
$ docker pull rust@sha256:df2234c615138222413254f45937ae45d284aad971644fe564e4250609abe452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339122297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce61265c0efed6a98c46baa2c99b1c163c04e9cf656b7ff51866f2e130e3ab67`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:28 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0c839dbe6a61c66498a1921f8a3081c8c3ab87bcdb439256b0df069f46c0ee`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 65.0 MB (65037047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8241433eedcca95e61cf705479a266ce562bb9615fa82c24c08a534bf85a2ad`  
		Last Modified: Fri, 18 Sep 2026 17:20:07 GMT  
		Size: 270.3 MB (270293175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8a24754a587cf75dff5a489c5ba0da5bf1bbecf3069633092c7e2d3d7a131f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.9 KB (956911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6192a28969e4663c266ee32d52ce31a35d5341e0e00c64bf4b989ddf460d00`

```dockerfile
```

-	Layers:
	-	`sha256:1ea2b7b9f2e63c4d0be09cb4d30f26c7ca6e06365159e2365c3c88b67b43ff0e`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 944.7 KB (944725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fbd55c96d66ca15ee50faae3f8540b8f0f6e79bbc00e1303e95418f6d892828`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:8c8136ecbaef3c248920e564a832a5217ff95819fa351984b48d39def57db223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343208002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85672871876c9d633358f7bb4ab23da58b160e532f67f073f45baae208638cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:13 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:27 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4116a5acacb4920f7cc0bbb4affb6e1f9e1374c364613ccb8dbf0e5c0e5dedac`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 61.7 MB (61714505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea50e377bcb9e1941ffb336d05bd45295779bff40d2c0f51b454309c2123890a`  
		Last Modified: Fri, 18 Sep 2026 17:20:06 GMT  
		Size: 277.4 MB (277370413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8c51312cfa7b9e1e17f89271dba2dd939d0fa3992cf532289ac361ea9e49b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a60201724b852be2bfc51e6ff3489e9958ee356f296527a728deaa0711d54b7`

```dockerfile
```

-	Layers:
	-	`sha256:0e4c7b0a2e09ed159e16cf125e4f44d1d611f11b5616b4cf4bf4ffd01a50a3f7`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 1.0 MB (1024049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c5eb6e7dd3ece5aadf78eb7742043f2d5ab6bdc1162661c1da89e98c2c35cc2`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:37b3c5bc39e378f7bebb3769b7ffc48d8a37b87e1b920f4f8ef378c525fd0981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359173473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a382980589c82fad760880d9683673d716f5f841423f797bffc13eb409b7d55`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:06:14 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:06:14 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:06:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:23:40 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f10bbb12b435427a15ff1f63cb2d469f1032b9e85c39f246332f01efb06b71e`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61515530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec90664c4efcfe3240c6e7226b4dc07b817f1db0f6595436957cc9708c3fbae3`  
		Last Modified: Fri, 18 Sep 2026 17:25:04 GMT  
		Size: 293.9 MB (293935187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:3e96593092591bc4a7766e2afc75d4980a8e83c58f34743a3547a51803336478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.8 KB (970806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cb6ecb75776c11c32caea975aa1b85ea056fdee56fd0c9389ea14f49b60d16`

```dockerfile
```

-	Layers:
	-	`sha256:b92e9073ce52eead02b27315d73aa25e172fd8448aaaf45bedb52b7b42681865`  
		Last Modified: Fri, 18 Sep 2026 17:24:58 GMT  
		Size: 958.6 KB (958574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bad214f2b5e1a3463bc1d56f7d0dd2879b139de0deeda2b0ae9c94df9331ee9`  
		Last Modified: Fri, 18 Sep 2026 17:24:57 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.23`

```console
$ docker pull rust@sha256:94a43bda4fd9b71fa3a74621c0982a646f83c7d1a3ba52bb4b7ddfd76d4dca93
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
$ docker pull rust@sha256:654de2105a34d9b1fad1994ae55bc78c9fc21adb551b6b749181c52d4fe0a732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349215459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78457d577ad69a4d63dc55adf0d69345aadc0831d6fe87f0e5919c06f4dc70fe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:53 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:11 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48f519c30c0b29d73e73ad08f3482b1568aec577407abd0b688426d7847b8f2`  
		Last Modified: Fri, 18 Sep 2026 17:20:51 GMT  
		Size: 75.1 MB (75073785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd97ff18caf1617463f8d574a67bf3bedc4741f819d700177bb767ec57d72c`  
		Last Modified: Fri, 18 Sep 2026 17:20:55 GMT  
		Size: 270.3 MB (270293167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:d81908c2af5e6d297dabd61030d787f65fde6c99fca5c393190074918a005072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1000.5 KB (1000538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045dafce090d1eaa47026a6855e61e9dce1268ad651f0fe9824f62d6689841ad`

```dockerfile
```

-	Layers:
	-	`sha256:9266ae7f0bfcce895cda229ce737a596d7720db6eb78c43192b867b3a7d99165`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 988.4 KB (988352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49b8fa123fbce01a81c735b46196576760ff5edf5adec2a2949011c0da045257`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:03401b341e29bbc4b0a4633bfee00e07161a29b38bbf4b22021b20c3cb545ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348049560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d625307b43b095b53caddbc802da2af6d81c82086aa686a3ef44088f20da745`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:22 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:22 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:37 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927634b3786ab173083c4c6a924125e74fcd5b8da6511c940aa8eabeae905316`  
		Last Modified: Fri, 18 Sep 2026 17:20:12 GMT  
		Size: 66.5 MB (66493122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bee5024f1bc4ea576ea72c1d8a4db98ef3381fbb9453fc8c5ad432ffd6969eb`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 277.4 MB (277370382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:406cedb8674407a05b17c15943f9e7c3a255aaef27f64e811c0be56a7741c300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1059666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc0b1989ebbc80b50017b09d8b1157dad9e6307eb6c292acb38ae87668983e`

```dockerfile
```

-	Layers:
	-	`sha256:c7b33b89446095453973af6a91aadea63cc60b63523a412706999fd51fa94186`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 1.0 MB (1047361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efab7540e286731d44067bbdd7152a38c767935677b3f147bba320f3596bda65`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:648b6b9a65c2a29872673007230b19dc33a680034205fd5416d92c64e8869ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364125137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d24b3c94e1b59f1b5ced4ce5fba20720ead16b59abec62be24c91aed1b7877`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:24:05 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57bf0db0a28ed5e11dd732672b13d0a948b3581a08a0d14f93422b4cd21ba6a4`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66375184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b114d23161d7ef737c6caae16c106d1b81bdd0f3de9b96766d6900f6afe51d2`  
		Last Modified: Fri, 18 Sep 2026 17:25:18 GMT  
		Size: 293.9 MB (293935184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:5b9d0bb400c8942d0c36adbd53b56ad6262df391c92309681951e435f6711b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **994.2 KB (994211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c4be00750a1797ab28ba3e06aff8666027bdda8d83f3f4d5def962385b8e5d`

```dockerfile
```

-	Layers:
	-	`sha256:0d14623d149cd8fa1b2dddae4786477da39c457e6c9aede3152b935ec75e9825`  
		Last Modified: Fri, 18 Sep 2026 17:25:12 GMT  
		Size: 982.0 KB (981979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c3716aff45ea4185f057f01acf1c5cbddae75a2049890cd014d89f7ad8ddc18`  
		Last Modified: Fri, 18 Sep 2026 17:25:11 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-alpine3.24`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-bookworm`

```console
$ docker pull rust@sha256:4a8dc0e32ec234e6c76e0047749d84bf742eb165e8af061d8eb65da532403ce7
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
$ docker pull rust@sha256:c49256cbe5ea0188bc658a689500d70c41eb51f009a7a7be209caf60a944f3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.5 MB (562530953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d41993b1f2f78dbd010160b83b06b0a38e17b57a269e9bf0be7f2078073f98`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:40:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:53 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9e8d0a007171cac57d643a3982902d45431cd860400eea55e18df75fc0b12a`  
		Last Modified: Sat, 19 Sep 2026 02:17:13 GMT  
		Size: 211.7 MB (211707818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47495189b3619615361bf1ba54a703b2a44cb7d76757ae1cd6a77d4f845bd357`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 213.8 MB (213839347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:c9a80b39cd894ae26b4535826cd68e9cfa81b1c2a94a455d996364039a1cdbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15884796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95abc9a0505ee48f6eb26f2517991040dc47c971e05e5145ae2b13a61680ee`

```dockerfile
```

-	Layers:
	-	`sha256:8c588c06788a615d23f5a3da0052db65bf8da78cc02af6bd17835d4c5a2a9436`  
		Last Modified: Sat, 19 Sep 2026 03:41:28 GMT  
		Size: 15.9 MB (15871700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04686df85e6e7f67241ada49a8e0dcc7ae8e96f757f988535e76732631b0efde`  
		Last Modified: Sat, 19 Sep 2026 03:41:27 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:7ae83ac4da9943bd335b7ed7d6ab2d6efcba8c87bb10e173f0897f210f73457b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.4 MB (559395342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79981d772efe03060a9671e927d22885bed55938afa7ca1de773810df74dea1`
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
# Fri, 18 Sep 2026 17:17:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:02 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:3502339839ddbdb50d9573ba41ec01929ca111d7bc201d1956dbbd01542e878b`  
		Last Modified: Fri, 18 Sep 2026 17:17:48 GMT  
		Size: 258.0 MB (257987798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6c68c19b8b695dc997e4302d8c6859e7d993ef8f776bb8cf601ee14fbea4e595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd22bc2cfa0e83212a1ea5a4980c15363fcf501f664099c1e56e2f0e4cc1c99`

```dockerfile
```

-	Layers:
	-	`sha256:28c6055a3cd96c5a7fad77667efc5205519c8ccf0cab7402ff0573a8532c090c`  
		Last Modified: Fri, 18 Sep 2026 17:17:43 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a3ff8b4183cf0b3a18d88c81eb7b6cbe8a57d4a9effb2ecb88850f402a6235`  
		Last Modified: Fri, 18 Sep 2026 17:17:42 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:5b993f23fb69746405496e76f91e511d96c82b5b23304fd5d20b4a80a8b223ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.0 MB (522035583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1999f81da8e1f787006d58cbaece8ac4837d7ae04ad16784d829470f4bebc8d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:43:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:43:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:43:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3ba406c16b69d4aa51efbc3e6261745f96834c1468f508f6c0eedfc94b57ad`  
		Last Modified: Sat, 19 Sep 2026 02:16:41 GMT  
		Size: 203.4 MB (203421216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9509957d657ed361410cf3985e80f77ffb71c7917ab2437416c892b0c823ce`  
		Last Modified: Sat, 19 Sep 2026 03:43:56 GMT  
		Size: 182.1 MB (182096628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9fa0ff2206e8c7644f8b3bda86abb13cf399cc83ce5b80778f435e44c53d9dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134b4b6ff29ea75276eaecb637a3360a7fec645d07b4b1d53894445fce90bc4`

```dockerfile
```

-	Layers:
	-	`sha256:eeabcbdfa3ed73e5285c4b5aaf8439dc2b6b7bf15f98770d823cae06cdc4c8e5`  
		Last Modified: Sat, 19 Sep 2026 03:43:53 GMT  
		Size: 15.9 MB (15900226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f187ca2f8a62fef08676aaee58ba4adb148dc439fad8227e1d448253dad029c`  
		Last Modified: Sat, 19 Sep 2026 03:43:52 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; 386

```console
$ docker pull rust@sha256:9c7865a496711c859ce6673aa75f4dca1582dec73a752d10eed1ff9a39a544f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592138312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a9d4ea46ea63f5126d96a6c3195b1a8445e3d351a3be286f3ae03df182f240`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:38:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f002589ea9ffed9d13043e7864c8ed045e3b473b90e4c5bdbc6dc29e56222ad8`  
		Last Modified: Sat, 19 Sep 2026 02:17:11 GMT  
		Size: 210.6 MB (210611416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31f818ffe545caa61bd39d7cb9e962e58e72072a34fe1fa5879897fa10a8974`  
		Last Modified: Sat, 19 Sep 2026 03:39:14 GMT  
		Size: 240.9 MB (240888982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6cd6225667f424cb22158e3bfe75a71f6075c8fc00bca5ab59b15018f0eb2476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15862983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc8a34a95aab432453050916bc397f1ab1ea45618559e4416348fed10bdf152`

```dockerfile
```

-	Layers:
	-	`sha256:f641cf19931fad071ad30f08c1d877d3d00220b5cd526c36bf51eaafeab3af62`  
		Last Modified: Sat, 19 Sep 2026 03:39:09 GMT  
		Size: 15.8 MB (15849919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3935db3016583aa2ce46321fd58416d08cfdc8249155c5de150761f23249d682`  
		Last Modified: Sat, 19 Sep 2026 03:39:08 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:c8cc324c353770020ed6357be1be98f9e5c46286e3c86afc38c5106ed99aac77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.4 MB (657362285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bf09a9ed94d33ae165f9b6dfbc33c1a7ea969b05539706851fc5c52b5fbb50`
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
# Fri, 18 Sep 2026 17:16:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:16:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:16:50 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:b3d0fcd3c0b92b0d3464e36838637d50fb317b753b69f56962c4d99fe74bfc45`  
		Last Modified: Fri, 18 Sep 2026 17:18:42 GMT  
		Size: 294.7 MB (294723995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5bb7172630848452bd952d55b3c904efc258a90b3330c9d9b86b97e57e97c522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a617686404f9869792497018114cfa3f2e80165a2d40f5c21d9429ee22e32a`

```dockerfile
```

-	Layers:
	-	`sha256:606631928a63194e306bf48fa1b4337a324ccd2f1753ac8167fe3fd380d1ffd6`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5206a2a3996e078921e894bfee6058c5876d53e7ca0a2147a09e2d430a138e31`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 13.1 KB (13140 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-slim`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-slim-bookworm`

```console
$ docker pull rust@sha256:94f07be94ef988b07ffced04e357f26044a1d3e742931886b346138d93ffc843
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
$ docker pull rust@sha256:dacc9e51f252243eb59d2fb4cb4ad8b0d3f607b6a82c398cf8a321e59ff778a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312857406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c4ab4e96dfb4ec55222183735672bf45a3bbfab7e2703dc03eae7e3690e7a7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8f0f20aa55d04c2825907b071dd82893a52a1b4dea49c2c1e8ee4ee0aee415`  
		Last Modified: Sat, 19 Sep 2026 01:09:44 GMT  
		Size: 284.6 MB (284618963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:2ade8fcb7e491bd18deabb233a58bc64c1d2e77b0475bfa90c582789dd3b8cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bf1de22b95be9712c8fcfabece1afee365f214adedec1b52ee0a806d5ebe86`

```dockerfile
```

-	Layers:
	-	`sha256:fa91d0cdf88913ca8b60f4d8b886b10888f25bfffbe4cc8c68708a4355922ca3`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 4.1 MB (4099497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:563b3703fbd2cb0f0bc2f2d775af8b16532d477abd18b0e045476db5d372b83a`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:e7a7ba3e1fae016b73793ddb175179360b9aad8664d47ed8e6b3fb6d9163c84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329776382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e61aa8a089caa0ee88ec270494391023051bea6c4e03660f093ca5bcbed43f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:18:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 00:18:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 00:18:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee406b197dfa543c5ea03c1ebaf8301252578ccf63714c002c86666162ab438`  
		Last Modified: Sat, 19 Sep 2026 00:19:00 GMT  
		Size: 305.8 MB (305833266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d60cb8ec17219b14b7d9299978fa95ca83e89b4dd0a660076f921b0bd790a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d75aed3e3b107503c27b2b2f2de2efc6197a39766e30c158aca02aabfe33d29`

```dockerfile
```

-	Layers:
	-	`sha256:eda739e7cc0ec3dfd86d392bd0e4135bd0c610e2502d0c5c2586705846bb3003`  
		Last Modified: Sat, 19 Sep 2026 00:18:55 GMT  
		Size: 3.9 MB (3913884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91728add892f607b95fe0f3a6d43be906a23c194168dc32ed78e06a6bb33ee3a`  
		Last Modified: Sat, 19 Sep 2026 00:18:54 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:3ebe98baef5911f8461cf81ba05644374a3c5ef1f8a33db3977bd4175f5ff1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276111603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17156b215e21a0b10b1d7576ee47b656ef76bb4f59575f396adcf59320dc6d8a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:32 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b9a6316d31dfc368a367f8ce730b2dedb89578a5050f48554fdc9be3624982`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 248.0 MB (247987923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:04ae8b246a33fa1c2237ec59b2d397e5bf510fd736932974bf484b619b6cf927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2316dfeea71a54010382e711613e452c66a85060c0254a4f143a5454431cd4`

```dockerfile
```

-	Layers:
	-	`sha256:d6e6ce60592c319cdf1b71cd3d0db6f5c829a6d0d85aae588e89ff59d771cbf1`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 4.1 MB (4121791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:920bc9c81ffad9f5439a231cf61a3e5adc237aa043b5c40ff4a643aa26ef186e`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 13.4 KB (13410 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:2724f873455ec980c5e5b3cd94071d3ab237f7cd846284036a50416150be61ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337737042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c7ee413c767c867013691767c299b168990860811571a17494054172da797f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9049aeb5adf75c12cbe2890c88f7a31f47aa28de03827ea4cfb0a8a9dea6fa7`  
		Last Modified: Sat, 19 Sep 2026 01:16:30 GMT  
		Size: 308.5 MB (308510937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d09bb55e173a33bad144f2dc89000ea0e4e6f0e13a52dfb06c906342a6993d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6627438f61473638eb408a90971962921fd0b950bae1717e37d1a8e702b127e`

```dockerfile
```

-	Layers:
	-	`sha256:02baa8901dd11aaff0ae212911de238370c97a733ab45c02507f2964fca32a60`  
		Last Modified: Sat, 19 Sep 2026 01:16:25 GMT  
		Size: 4.1 MB (4080183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be9895cd1c804e7038f82f8fe90f853ea9462ef1c75101edcfe12ad9a907e4bb`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:2e855c1bafecbec2f25145892ad54359dda760895fb5125621f5d34abb980902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395588600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a90437123ae3a17c0881bd8bd29c56a23bf5bca173ab3bdbdb046248e67731a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 18 Sep 2026 17:17:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fae863e578604488f95384ab1bed447d123415926786548371a867a77c0af`  
		Last Modified: Fri, 18 Sep 2026 17:19:55 GMT  
		Size: 363.5 MB (363512123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:fa0dedf58b5dbc4d43f9708a47b351cf8fe6f3d787c77573a7fb7d3d76f561f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983b82343b307f24f26a1ff70eb10882ce7f5070d4a25dd360de63c8b69db857`

```dockerfile
```

-	Layers:
	-	`sha256:47018db193d8866460afef802dad52e03d8c172b0930047d4bdff0cf0a2f20e9`  
		Last Modified: Fri, 18 Sep 2026 17:19:47 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bc5cf5e54d80bfbbc4cd1f8e4ff47b1f1772a4a5e704fb8eed712b454f262fe`  
		Last Modified: Fri, 18 Sep 2026 17:19:46 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-slim-trixie`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98-trixie`

```console
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1`

```console
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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

### `rust:1.98.1` - linux; amd64

```console
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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

### `rust:1.98.1` - linux; s390x

```console
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.21`

```console
$ docker pull rust@sha256:da8d60ba23ac31f4dc6da2fb9e8162e6710cae6e06e42204972a38837336c748
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
$ docker pull rust@sha256:f42eebc7101bbecba8fd9870829c75e320e786796e4d9f3264b9636f2c429a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338908709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f85d4877802d084af64a61d73a5f550f4c3b9cc81e4fc09b3a8e94fb00ac94d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:48 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc2a47b778cca89744cefb13a176fbc0b7dbfdf471b322b12c5a88de863c69f`  
		Last Modified: Fri, 18 Sep 2026 17:20:28 GMT  
		Size: 65.0 MB (64989536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d944191917ed1b18c4d951662bc6ea752debb9f0c9a7f32165cb6f8c6281df1`  
		Last Modified: Fri, 18 Sep 2026 17:20:31 GMT  
		Size: 270.3 MB (270293153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:0ac4e55fd99616c0753b7a71889e041a2914d7289d0803e960f93d770da62c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 KB (956130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0455d9e535b156a00d23b678759a991f50baa312f64d70fc3ec5fffbf1c612c6`

```dockerfile
```

-	Layers:
	-	`sha256:89fcdf420c41d1e61b6f2d0b4d0e4cb3534e3dd6a472b1bbcc400af44e732f89`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 943.9 KB (943945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28bbd2886136e7d3f85cfe8669a7e64241ccb8e322eb49f52b59b059864c1a`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 12.2 KB (12185 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bb2bc68feeb42da80ff8be18b2ebe6aa293e262a8932c9dcf0072fcb515ccb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (343010795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9787bea414499a15ae706a18a3c91f2a248cf4344eba5cde487ce6f5b99423`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc55931329ca180e8e99fb9376ce9563efbfa2e3f2a3c9765ad8ec283e50ff69`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 61.7 MB (61665686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace9fc881259197b517740e3bb004aa1bbf783dd9550f58ddb8f0b14353c25e`  
		Last Modified: Fri, 18 Sep 2026 17:20:04 GMT  
		Size: 277.4 MB (277370608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:2f7edf57288236ebff66d9d42cc1cc85561979dea4da3d7bb7239225f1246e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9073517d1161871ce5fe9b628f4921a6f9bc9beee27ee6116078ff266a4c6ef`

```dockerfile
```

-	Layers:
	-	`sha256:5098e7ff4bb19b74c0889096efa11511fd2edee39910f53dca0dcbc286d62e7b`  
		Last Modified: Fri, 18 Sep 2026 17:19:58 GMT  
		Size: 1.0 MB (1023269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9356093c480632e13ce196e466071d1943a5e5ca4b625bd560551eb6829a1c1`  
		Last Modified: Fri, 18 Sep 2026 17:19:57 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:eea78d0420ceb8be7bd20fa6329c4191689f7e1950b266a11ae3d767e267fe04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358970494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad75622fbcb4be06e95a8135769d6bb65480434889200f2acb010bd9b64f287`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:07 GMT
ADD alpine-minirootfs-3.21.8-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:07 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:05:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:05:56 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:05:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:22:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b28a33aa72108f40f441b063d4388f0fcb4e9b61a44072cfd1a066a7f99d9455`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.6 MB (3558846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d8e137c722547c6eb150557a8ccb3f60c96b9d67810d495953825ce8a0fe42`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61476624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f245aaf8ccab7f8229f0a83be81e5d4ca445d4d61f49aa966fbe263d1b68cc`  
		Last Modified: Fri, 18 Sep 2026 17:23:32 GMT  
		Size: 293.9 MB (293935024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:5f33d5d0d00f3035b88dc8afd056728c9fec58a1b82a2739021bd94ae8819549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.0 KB (970026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f900642c405645bc0fde644d4cef633d761e5477d318ea9c04c618e22ce502d5`

```dockerfile
```

-	Layers:
	-	`sha256:1cbcf669db6be1313fc8d47675535bc47cd05730bce5d58458a0b5b91fc8105e`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 957.8 KB (957794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d2d374304557996947d162005fa2959ee48eb41a1f1fff8f5caa0a53adff911`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.22`

```console
$ docker pull rust@sha256:a1796ca6fa216d6727b5f61c69e4c665b120b1a4dcb969639e2f25f1ed309456
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
$ docker pull rust@sha256:df2234c615138222413254f45937ae45d284aad971644fe564e4250609abe452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339122297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce61265c0efed6a98c46baa2c99b1c163c04e9cf656b7ff51866f2e130e3ab67`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:28 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0c839dbe6a61c66498a1921f8a3081c8c3ab87bcdb439256b0df069f46c0ee`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 65.0 MB (65037047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8241433eedcca95e61cf705479a266ce562bb9615fa82c24c08a534bf85a2ad`  
		Last Modified: Fri, 18 Sep 2026 17:20:07 GMT  
		Size: 270.3 MB (270293175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8a24754a587cf75dff5a489c5ba0da5bf1bbecf3069633092c7e2d3d7a131f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.9 KB (956911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6192a28969e4663c266ee32d52ce31a35d5341e0e00c64bf4b989ddf460d00`

```dockerfile
```

-	Layers:
	-	`sha256:1ea2b7b9f2e63c4d0be09cb4d30f26c7ca6e06365159e2365c3c88b67b43ff0e`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 944.7 KB (944725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fbd55c96d66ca15ee50faae3f8540b8f0f6e79bbc00e1303e95418f6d892828`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:8c8136ecbaef3c248920e564a832a5217ff95819fa351984b48d39def57db223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343208002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85672871876c9d633358f7bb4ab23da58b160e532f67f073f45baae208638cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:13 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:27 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4116a5acacb4920f7cc0bbb4affb6e1f9e1374c364613ccb8dbf0e5c0e5dedac`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 61.7 MB (61714505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea50e377bcb9e1941ffb336d05bd45295779bff40d2c0f51b454309c2123890a`  
		Last Modified: Fri, 18 Sep 2026 17:20:06 GMT  
		Size: 277.4 MB (277370413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8c51312cfa7b9e1e17f89271dba2dd939d0fa3992cf532289ac361ea9e49b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a60201724b852be2bfc51e6ff3489e9958ee356f296527a728deaa0711d54b7`

```dockerfile
```

-	Layers:
	-	`sha256:0e4c7b0a2e09ed159e16cf125e4f44d1d611f11b5616b4cf4bf4ffd01a50a3f7`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 1.0 MB (1024049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c5eb6e7dd3ece5aadf78eb7742043f2d5ab6bdc1162661c1da89e98c2c35cc2`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:37b3c5bc39e378f7bebb3769b7ffc48d8a37b87e1b920f4f8ef378c525fd0981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359173473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a382980589c82fad760880d9683673d716f5f841423f797bffc13eb409b7d55`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:06:14 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:06:14 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:06:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:23:40 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f10bbb12b435427a15ff1f63cb2d469f1032b9e85c39f246332f01efb06b71e`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61515530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec90664c4efcfe3240c6e7226b4dc07b817f1db0f6595436957cc9708c3fbae3`  
		Last Modified: Fri, 18 Sep 2026 17:25:04 GMT  
		Size: 293.9 MB (293935187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:3e96593092591bc4a7766e2afc75d4980a8e83c58f34743a3547a51803336478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.8 KB (970806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cb6ecb75776c11c32caea975aa1b85ea056fdee56fd0c9389ea14f49b60d16`

```dockerfile
```

-	Layers:
	-	`sha256:b92e9073ce52eead02b27315d73aa25e172fd8448aaaf45bedb52b7b42681865`  
		Last Modified: Fri, 18 Sep 2026 17:24:58 GMT  
		Size: 958.6 KB (958574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bad214f2b5e1a3463bc1d56f7d0dd2879b139de0deeda2b0ae9c94df9331ee9`  
		Last Modified: Fri, 18 Sep 2026 17:24:57 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.23`

```console
$ docker pull rust@sha256:94a43bda4fd9b71fa3a74621c0982a646f83c7d1a3ba52bb4b7ddfd76d4dca93
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
$ docker pull rust@sha256:654de2105a34d9b1fad1994ae55bc78c9fc21adb551b6b749181c52d4fe0a732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349215459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78457d577ad69a4d63dc55adf0d69345aadc0831d6fe87f0e5919c06f4dc70fe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:53 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:11 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48f519c30c0b29d73e73ad08f3482b1568aec577407abd0b688426d7847b8f2`  
		Last Modified: Fri, 18 Sep 2026 17:20:51 GMT  
		Size: 75.1 MB (75073785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd97ff18caf1617463f8d574a67bf3bedc4741f819d700177bb767ec57d72c`  
		Last Modified: Fri, 18 Sep 2026 17:20:55 GMT  
		Size: 270.3 MB (270293167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:d81908c2af5e6d297dabd61030d787f65fde6c99fca5c393190074918a005072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1000.5 KB (1000538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045dafce090d1eaa47026a6855e61e9dce1268ad651f0fe9824f62d6689841ad`

```dockerfile
```

-	Layers:
	-	`sha256:9266ae7f0bfcce895cda229ce737a596d7720db6eb78c43192b867b3a7d99165`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 988.4 KB (988352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49b8fa123fbce01a81c735b46196576760ff5edf5adec2a2949011c0da045257`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:03401b341e29bbc4b0a4633bfee00e07161a29b38bbf4b22021b20c3cb545ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348049560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d625307b43b095b53caddbc802da2af6d81c82086aa686a3ef44088f20da745`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:22 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:22 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:37 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927634b3786ab173083c4c6a924125e74fcd5b8da6511c940aa8eabeae905316`  
		Last Modified: Fri, 18 Sep 2026 17:20:12 GMT  
		Size: 66.5 MB (66493122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bee5024f1bc4ea576ea72c1d8a4db98ef3381fbb9453fc8c5ad432ffd6969eb`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 277.4 MB (277370382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:406cedb8674407a05b17c15943f9e7c3a255aaef27f64e811c0be56a7741c300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1059666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc0b1989ebbc80b50017b09d8b1157dad9e6307eb6c292acb38ae87668983e`

```dockerfile
```

-	Layers:
	-	`sha256:c7b33b89446095453973af6a91aadea63cc60b63523a412706999fd51fa94186`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 1.0 MB (1047361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efab7540e286731d44067bbdd7152a38c767935677b3f147bba320f3596bda65`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:648b6b9a65c2a29872673007230b19dc33a680034205fd5416d92c64e8869ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364125137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d24b3c94e1b59f1b5ced4ce5fba20720ead16b59abec62be24c91aed1b7877`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:24:05 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57bf0db0a28ed5e11dd732672b13d0a948b3581a08a0d14f93422b4cd21ba6a4`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66375184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b114d23161d7ef737c6caae16c106d1b81bdd0f3de9b96766d6900f6afe51d2`  
		Last Modified: Fri, 18 Sep 2026 17:25:18 GMT  
		Size: 293.9 MB (293935184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:5b9d0bb400c8942d0c36adbd53b56ad6262df391c92309681951e435f6711b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **994.2 KB (994211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c4be00750a1797ab28ba3e06aff8666027bdda8d83f3f4d5def962385b8e5d`

```dockerfile
```

-	Layers:
	-	`sha256:0d14623d149cd8fa1b2dddae4786477da39c457e6c9aede3152b935ec75e9825`  
		Last Modified: Fri, 18 Sep 2026 17:25:12 GMT  
		Size: 982.0 KB (981979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c3716aff45ea4185f057f01acf1c5cbddae75a2049890cd014d89f7ad8ddc18`  
		Last Modified: Fri, 18 Sep 2026 17:25:11 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-alpine3.24`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-bookworm`

```console
$ docker pull rust@sha256:4a8dc0e32ec234e6c76e0047749d84bf742eb165e8af061d8eb65da532403ce7
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
$ docker pull rust@sha256:c49256cbe5ea0188bc658a689500d70c41eb51f009a7a7be209caf60a944f3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.5 MB (562530953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d41993b1f2f78dbd010160b83b06b0a38e17b57a269e9bf0be7f2078073f98`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:40:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:53 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9e8d0a007171cac57d643a3982902d45431cd860400eea55e18df75fc0b12a`  
		Last Modified: Sat, 19 Sep 2026 02:17:13 GMT  
		Size: 211.7 MB (211707818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47495189b3619615361bf1ba54a703b2a44cb7d76757ae1cd6a77d4f845bd357`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 213.8 MB (213839347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:c9a80b39cd894ae26b4535826cd68e9cfa81b1c2a94a455d996364039a1cdbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15884796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95abc9a0505ee48f6eb26f2517991040dc47c971e05e5145ae2b13a61680ee`

```dockerfile
```

-	Layers:
	-	`sha256:8c588c06788a615d23f5a3da0052db65bf8da78cc02af6bd17835d4c5a2a9436`  
		Last Modified: Sat, 19 Sep 2026 03:41:28 GMT  
		Size: 15.9 MB (15871700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04686df85e6e7f67241ada49a8e0dcc7ae8e96f757f988535e76732631b0efde`  
		Last Modified: Sat, 19 Sep 2026 03:41:27 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:7ae83ac4da9943bd335b7ed7d6ab2d6efcba8c87bb10e173f0897f210f73457b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.4 MB (559395342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79981d772efe03060a9671e927d22885bed55938afa7ca1de773810df74dea1`
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
# Fri, 18 Sep 2026 17:17:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:02 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:3502339839ddbdb50d9573ba41ec01929ca111d7bc201d1956dbbd01542e878b`  
		Last Modified: Fri, 18 Sep 2026 17:17:48 GMT  
		Size: 258.0 MB (257987798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6c68c19b8b695dc997e4302d8c6859e7d993ef8f776bb8cf601ee14fbea4e595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd22bc2cfa0e83212a1ea5a4980c15363fcf501f664099c1e56e2f0e4cc1c99`

```dockerfile
```

-	Layers:
	-	`sha256:28c6055a3cd96c5a7fad77667efc5205519c8ccf0cab7402ff0573a8532c090c`  
		Last Modified: Fri, 18 Sep 2026 17:17:43 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a3ff8b4183cf0b3a18d88c81eb7b6cbe8a57d4a9effb2ecb88850f402a6235`  
		Last Modified: Fri, 18 Sep 2026 17:17:42 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:5b993f23fb69746405496e76f91e511d96c82b5b23304fd5d20b4a80a8b223ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.0 MB (522035583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1999f81da8e1f787006d58cbaece8ac4837d7ae04ad16784d829470f4bebc8d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:43:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:43:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:43:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3ba406c16b69d4aa51efbc3e6261745f96834c1468f508f6c0eedfc94b57ad`  
		Last Modified: Sat, 19 Sep 2026 02:16:41 GMT  
		Size: 203.4 MB (203421216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9509957d657ed361410cf3985e80f77ffb71c7917ab2437416c892b0c823ce`  
		Last Modified: Sat, 19 Sep 2026 03:43:56 GMT  
		Size: 182.1 MB (182096628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9fa0ff2206e8c7644f8b3bda86abb13cf399cc83ce5b80778f435e44c53d9dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134b4b6ff29ea75276eaecb637a3360a7fec645d07b4b1d53894445fce90bc4`

```dockerfile
```

-	Layers:
	-	`sha256:eeabcbdfa3ed73e5285c4b5aaf8439dc2b6b7bf15f98770d823cae06cdc4c8e5`  
		Last Modified: Sat, 19 Sep 2026 03:43:53 GMT  
		Size: 15.9 MB (15900226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f187ca2f8a62fef08676aaee58ba4adb148dc439fad8227e1d448253dad029c`  
		Last Modified: Sat, 19 Sep 2026 03:43:52 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; 386

```console
$ docker pull rust@sha256:9c7865a496711c859ce6673aa75f4dca1582dec73a752d10eed1ff9a39a544f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592138312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a9d4ea46ea63f5126d96a6c3195b1a8445e3d351a3be286f3ae03df182f240`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:38:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f002589ea9ffed9d13043e7864c8ed045e3b473b90e4c5bdbc6dc29e56222ad8`  
		Last Modified: Sat, 19 Sep 2026 02:17:11 GMT  
		Size: 210.6 MB (210611416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31f818ffe545caa61bd39d7cb9e962e58e72072a34fe1fa5879897fa10a8974`  
		Last Modified: Sat, 19 Sep 2026 03:39:14 GMT  
		Size: 240.9 MB (240888982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6cd6225667f424cb22158e3bfe75a71f6075c8fc00bca5ab59b15018f0eb2476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15862983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc8a34a95aab432453050916bc397f1ab1ea45618559e4416348fed10bdf152`

```dockerfile
```

-	Layers:
	-	`sha256:f641cf19931fad071ad30f08c1d877d3d00220b5cd526c36bf51eaafeab3af62`  
		Last Modified: Sat, 19 Sep 2026 03:39:09 GMT  
		Size: 15.8 MB (15849919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3935db3016583aa2ce46321fd58416d08cfdc8249155c5de150761f23249d682`  
		Last Modified: Sat, 19 Sep 2026 03:39:08 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:c8cc324c353770020ed6357be1be98f9e5c46286e3c86afc38c5106ed99aac77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.4 MB (657362285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bf09a9ed94d33ae165f9b6dfbc33c1a7ea969b05539706851fc5c52b5fbb50`
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
# Fri, 18 Sep 2026 17:16:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:16:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:16:50 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:b3d0fcd3c0b92b0d3464e36838637d50fb317b753b69f56962c4d99fe74bfc45`  
		Last Modified: Fri, 18 Sep 2026 17:18:42 GMT  
		Size: 294.7 MB (294723995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5bb7172630848452bd952d55b3c904efc258a90b3330c9d9b86b97e57e97c522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a617686404f9869792497018114cfa3f2e80165a2d40f5c21d9429ee22e32a`

```dockerfile
```

-	Layers:
	-	`sha256:606631928a63194e306bf48fa1b4337a324ccd2f1753ac8167fe3fd380d1ffd6`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5206a2a3996e078921e894bfee6058c5876d53e7ca0a2147a09e2d430a138e31`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 13.1 KB (13140 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-slim`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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

### `rust:1.98.1-slim` - linux; amd64

```console
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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

### `rust:1.98.1-slim` - linux; s390x

```console
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-slim-bookworm`

```console
$ docker pull rust@sha256:94f07be94ef988b07ffced04e357f26044a1d3e742931886b346138d93ffc843
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
$ docker pull rust@sha256:dacc9e51f252243eb59d2fb4cb4ad8b0d3f607b6a82c398cf8a321e59ff778a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312857406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c4ab4e96dfb4ec55222183735672bf45a3bbfab7e2703dc03eae7e3690e7a7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8f0f20aa55d04c2825907b071dd82893a52a1b4dea49c2c1e8ee4ee0aee415`  
		Last Modified: Sat, 19 Sep 2026 01:09:44 GMT  
		Size: 284.6 MB (284618963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:2ade8fcb7e491bd18deabb233a58bc64c1d2e77b0475bfa90c582789dd3b8cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bf1de22b95be9712c8fcfabece1afee365f214adedec1b52ee0a806d5ebe86`

```dockerfile
```

-	Layers:
	-	`sha256:fa91d0cdf88913ca8b60f4d8b886b10888f25bfffbe4cc8c68708a4355922ca3`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 4.1 MB (4099497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:563b3703fbd2cb0f0bc2f2d775af8b16532d477abd18b0e045476db5d372b83a`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:e7a7ba3e1fae016b73793ddb175179360b9aad8664d47ed8e6b3fb6d9163c84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329776382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e61aa8a089caa0ee88ec270494391023051bea6c4e03660f093ca5bcbed43f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:18:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 00:18:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 00:18:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee406b197dfa543c5ea03c1ebaf8301252578ccf63714c002c86666162ab438`  
		Last Modified: Sat, 19 Sep 2026 00:19:00 GMT  
		Size: 305.8 MB (305833266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d60cb8ec17219b14b7d9299978fa95ca83e89b4dd0a660076f921b0bd790a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d75aed3e3b107503c27b2b2f2de2efc6197a39766e30c158aca02aabfe33d29`

```dockerfile
```

-	Layers:
	-	`sha256:eda739e7cc0ec3dfd86d392bd0e4135bd0c610e2502d0c5c2586705846bb3003`  
		Last Modified: Sat, 19 Sep 2026 00:18:55 GMT  
		Size: 3.9 MB (3913884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91728add892f607b95fe0f3a6d43be906a23c194168dc32ed78e06a6bb33ee3a`  
		Last Modified: Sat, 19 Sep 2026 00:18:54 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:3ebe98baef5911f8461cf81ba05644374a3c5ef1f8a33db3977bd4175f5ff1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276111603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17156b215e21a0b10b1d7576ee47b656ef76bb4f59575f396adcf59320dc6d8a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:32 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b9a6316d31dfc368a367f8ce730b2dedb89578a5050f48554fdc9be3624982`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 248.0 MB (247987923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:04ae8b246a33fa1c2237ec59b2d397e5bf510fd736932974bf484b619b6cf927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2316dfeea71a54010382e711613e452c66a85060c0254a4f143a5454431cd4`

```dockerfile
```

-	Layers:
	-	`sha256:d6e6ce60592c319cdf1b71cd3d0db6f5c829a6d0d85aae588e89ff59d771cbf1`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 4.1 MB (4121791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:920bc9c81ffad9f5439a231cf61a3e5adc237aa043b5c40ff4a643aa26ef186e`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 13.4 KB (13410 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:2724f873455ec980c5e5b3cd94071d3ab237f7cd846284036a50416150be61ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337737042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c7ee413c767c867013691767c299b168990860811571a17494054172da797f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9049aeb5adf75c12cbe2890c88f7a31f47aa28de03827ea4cfb0a8a9dea6fa7`  
		Last Modified: Sat, 19 Sep 2026 01:16:30 GMT  
		Size: 308.5 MB (308510937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d09bb55e173a33bad144f2dc89000ea0e4e6f0e13a52dfb06c906342a6993d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6627438f61473638eb408a90971962921fd0b950bae1717e37d1a8e702b127e`

```dockerfile
```

-	Layers:
	-	`sha256:02baa8901dd11aaff0ae212911de238370c97a733ab45c02507f2964fca32a60`  
		Last Modified: Sat, 19 Sep 2026 01:16:25 GMT  
		Size: 4.1 MB (4080183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be9895cd1c804e7038f82f8fe90f853ea9462ef1c75101edcfe12ad9a907e4bb`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:2e855c1bafecbec2f25145892ad54359dda760895fb5125621f5d34abb980902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395588600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a90437123ae3a17c0881bd8bd29c56a23bf5bca173ab3bdbdb046248e67731a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 18 Sep 2026 17:17:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fae863e578604488f95384ab1bed447d123415926786548371a867a77c0af`  
		Last Modified: Fri, 18 Sep 2026 17:19:55 GMT  
		Size: 363.5 MB (363512123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:fa0dedf58b5dbc4d43f9708a47b351cf8fe6f3d787c77573a7fb7d3d76f561f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983b82343b307f24f26a1ff70eb10882ce7f5070d4a25dd360de63c8b69db857`

```dockerfile
```

-	Layers:
	-	`sha256:47018db193d8866460afef802dad52e03d8c172b0930047d4bdff0cf0a2f20e9`  
		Last Modified: Fri, 18 Sep 2026 17:19:47 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bc5cf5e54d80bfbbc4cd1f8e4ff47b1f1772a4a5e704fb8eed712b454f262fe`  
		Last Modified: Fri, 18 Sep 2026 17:19:46 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-slim-trixie`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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

### `rust:1.98.1-slim-trixie` - linux; amd64

```console
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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

### `rust:1.98.1-slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:1.98.1-trixie`

```console
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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

### `rust:1.98.1-trixie` - linux; amd64

```console
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1.98.1-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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

### `rust:1.98.1-trixie` - linux; s390x

```console
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1.98.1-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.21`

```console
$ docker pull rust@sha256:da8d60ba23ac31f4dc6da2fb9e8162e6710cae6e06e42204972a38837336c748
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
$ docker pull rust@sha256:f42eebc7101bbecba8fd9870829c75e320e786796e4d9f3264b9636f2c429a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338908709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f85d4877802d084af64a61d73a5f550f4c3b9cc81e4fc09b3a8e94fb00ac94d`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:48 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc2a47b778cca89744cefb13a176fbc0b7dbfdf471b322b12c5a88de863c69f`  
		Last Modified: Fri, 18 Sep 2026 17:20:28 GMT  
		Size: 65.0 MB (64989536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d944191917ed1b18c4d951662bc6ea752debb9f0c9a7f32165cb6f8c6281df1`  
		Last Modified: Fri, 18 Sep 2026 17:20:31 GMT  
		Size: 270.3 MB (270293153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:0ac4e55fd99616c0753b7a71889e041a2914d7289d0803e960f93d770da62c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.1 KB (956130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0455d9e535b156a00d23b678759a991f50baa312f64d70fc3ec5fffbf1c612c6`

```dockerfile
```

-	Layers:
	-	`sha256:89fcdf420c41d1e61b6f2d0b4d0e4cb3534e3dd6a472b1bbcc400af44e732f89`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 943.9 KB (943945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd28bbd2886136e7d3f85cfe8669a7e64241ccb8e322eb49f52b59b059864c1a`  
		Last Modified: Fri, 18 Sep 2026 17:20:25 GMT  
		Size: 12.2 KB (12185 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bb2bc68feeb42da80ff8be18b2ebe6aa293e262a8932c9dcf0072fcb515ccb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.0 MB (343010795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9787bea414499a15ae706a18a3c91f2a248cf4344eba5cde487ce6f5b99423`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:25 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc55931329ca180e8e99fb9376ce9563efbfa2e3f2a3c9765ad8ec283e50ff69`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 61.7 MB (61665686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ace9fc881259197b517740e3bb004aa1bbf783dd9550f58ddb8f0b14353c25e`  
		Last Modified: Fri, 18 Sep 2026 17:20:04 GMT  
		Size: 277.4 MB (277370608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:2f7edf57288236ebff66d9d42cc1cc85561979dea4da3d7bb7239225f1246e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9073517d1161871ce5fe9b628f4921a6f9bc9beee27ee6116078ff266a4c6ef`

```dockerfile
```

-	Layers:
	-	`sha256:5098e7ff4bb19b74c0889096efa11511fd2edee39910f53dca0dcbc286d62e7b`  
		Last Modified: Fri, 18 Sep 2026 17:19:58 GMT  
		Size: 1.0 MB (1023269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9356093c480632e13ce196e466071d1943a5e5ca4b625bd560551eb6829a1c1`  
		Last Modified: Fri, 18 Sep 2026 17:19:57 GMT  
		Size: 12.3 KB (12304 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:eea78d0420ceb8be7bd20fa6329c4191689f7e1950b266a11ae3d767e267fe04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358970494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad75622fbcb4be06e95a8135769d6bb65480434889200f2acb010bd9b64f287`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:07 GMT
ADD alpine-minirootfs-3.21.8-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:07 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:05:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:05:56 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:05:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:22:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b28a33aa72108f40f441b063d4388f0fcb4e9b61a44072cfd1a066a7f99d9455`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.6 MB (3558846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d8e137c722547c6eb150557a8ccb3f60c96b9d67810d495953825ce8a0fe42`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61476624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f245aaf8ccab7f8229f0a83be81e5d4ca445d4d61f49aa966fbe263d1b68cc`  
		Last Modified: Fri, 18 Sep 2026 17:23:32 GMT  
		Size: 293.9 MB (293935024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:5f33d5d0d00f3035b88dc8afd056728c9fec58a1b82a2739021bd94ae8819549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.0 KB (970026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f900642c405645bc0fde644d4cef633d761e5477d318ea9c04c618e22ce502d5`

```dockerfile
```

-	Layers:
	-	`sha256:1cbcf669db6be1313fc8d47675535bc47cd05730bce5d58458a0b5b91fc8105e`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 957.8 KB (957794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d2d374304557996947d162005fa2959ee48eb41a1f1fff8f5caa0a53adff911`  
		Last Modified: Fri, 18 Sep 2026 17:23:26 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.22`

```console
$ docker pull rust@sha256:a1796ca6fa216d6727b5f61c69e4c665b120b1a4dcb969639e2f25f1ed309456
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
$ docker pull rust@sha256:df2234c615138222413254f45937ae45d284aad971644fe564e4250609abe452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339122297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce61265c0efed6a98c46baa2c99b1c163c04e9cf656b7ff51866f2e130e3ab67`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:11 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:11 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:11 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:28 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0c839dbe6a61c66498a1921f8a3081c8c3ab87bcdb439256b0df069f46c0ee`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 65.0 MB (65037047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8241433eedcca95e61cf705479a266ce562bb9615fa82c24c08a534bf85a2ad`  
		Last Modified: Fri, 18 Sep 2026 17:20:07 GMT  
		Size: 270.3 MB (270293175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8a24754a587cf75dff5a489c5ba0da5bf1bbecf3069633092c7e2d3d7a131f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.9 KB (956911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6192a28969e4663c266ee32d52ce31a35d5341e0e00c64bf4b989ddf460d00`

```dockerfile
```

-	Layers:
	-	`sha256:1ea2b7b9f2e63c4d0be09cb4d30f26c7ca6e06365159e2365c3c88b67b43ff0e`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 944.7 KB (944725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fbd55c96d66ca15ee50faae3f8540b8f0f6e79bbc00e1303e95418f6d892828`  
		Last Modified: Fri, 18 Sep 2026 17:20:01 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:8c8136ecbaef3c248920e564a832a5217ff95819fa351984b48d39def57db223
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.2 MB (343208002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85672871876c9d633358f7bb4ab23da58b160e532f67f073f45baae208638cc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:13 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:13 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:13 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:27 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4116a5acacb4920f7cc0bbb4affb6e1f9e1374c364613ccb8dbf0e5c0e5dedac`  
		Last Modified: Fri, 18 Sep 2026 17:20:03 GMT  
		Size: 61.7 MB (61714505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea50e377bcb9e1941ffb336d05bd45295779bff40d2c0f51b454309c2123890a`  
		Last Modified: Fri, 18 Sep 2026 17:20:06 GMT  
		Size: 277.4 MB (277370413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a8c51312cfa7b9e1e17f89271dba2dd939d0fa3992cf532289ac361ea9e49b2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a60201724b852be2bfc51e6ff3489e9958ee356f296527a728deaa0711d54b7`

```dockerfile
```

-	Layers:
	-	`sha256:0e4c7b0a2e09ed159e16cf125e4f44d1d611f11b5616b4cf4bf4ffd01a50a3f7`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 1.0 MB (1024049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c5eb6e7dd3ece5aadf78eb7742043f2d5ab6bdc1162661c1da89e98c2c35cc2`  
		Last Modified: Fri, 18 Sep 2026 17:20:00 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:37b3c5bc39e378f7bebb3769b7ffc48d8a37b87e1b920f4f8ef378c525fd0981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.2 MB (359173473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a382980589c82fad760880d9683673d716f5f841423f797bffc13eb409b7d55`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:06:14 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:06:14 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:06:14 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:23:40 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f10bbb12b435427a15ff1f63cb2d469f1032b9e85c39f246332f01efb06b71e`  
		Last Modified: Fri, 18 Sep 2026 01:07:42 GMT  
		Size: 61.5 MB (61515530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec90664c4efcfe3240c6e7226b4dc07b817f1db0f6595436957cc9708c3fbae3`  
		Last Modified: Fri, 18 Sep 2026 17:25:04 GMT  
		Size: 293.9 MB (293935187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:3e96593092591bc4a7766e2afc75d4980a8e83c58f34743a3547a51803336478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.8 KB (970806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8cb6ecb75776c11c32caea975aa1b85ea056fdee56fd0c9389ea14f49b60d16`

```dockerfile
```

-	Layers:
	-	`sha256:b92e9073ce52eead02b27315d73aa25e172fd8448aaaf45bedb52b7b42681865`  
		Last Modified: Fri, 18 Sep 2026 17:24:58 GMT  
		Size: 958.6 KB (958574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bad214f2b5e1a3463bc1d56f7d0dd2879b139de0deeda2b0ae9c94df9331ee9`  
		Last Modified: Fri, 18 Sep 2026 17:24:57 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.23`

```console
$ docker pull rust@sha256:94a43bda4fd9b71fa3a74621c0982a646f83c7d1a3ba52bb4b7ddfd76d4dca93
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
$ docker pull rust@sha256:654de2105a34d9b1fad1994ae55bc78c9fc21adb551b6b749181c52d4fe0a732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349215459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78457d577ad69a4d63dc55adf0d69345aadc0831d6fe87f0e5919c06f4dc70fe`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:53 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:11 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48f519c30c0b29d73e73ad08f3482b1568aec577407abd0b688426d7847b8f2`  
		Last Modified: Fri, 18 Sep 2026 17:20:51 GMT  
		Size: 75.1 MB (75073785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dd97ff18caf1617463f8d574a67bf3bedc4741f819d700177bb767ec57d72c`  
		Last Modified: Fri, 18 Sep 2026 17:20:55 GMT  
		Size: 270.3 MB (270293167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:d81908c2af5e6d297dabd61030d787f65fde6c99fca5c393190074918a005072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1000.5 KB (1000538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045dafce090d1eaa47026a6855e61e9dce1268ad651f0fe9824f62d6689841ad`

```dockerfile
```

-	Layers:
	-	`sha256:9266ae7f0bfcce895cda229ce737a596d7720db6eb78c43192b867b3a7d99165`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 988.4 KB (988352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49b8fa123fbce01a81c735b46196576760ff5edf5adec2a2949011c0da045257`  
		Last Modified: Fri, 18 Sep 2026 17:20:48 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:03401b341e29bbc4b0a4633bfee00e07161a29b38bbf4b22021b20c3cb545ace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348049560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d625307b43b095b53caddbc802da2af6d81c82086aa686a3ef44088f20da745`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:22 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:22 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:22 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:37 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927634b3786ab173083c4c6a924125e74fcd5b8da6511c940aa8eabeae905316`  
		Last Modified: Fri, 18 Sep 2026 17:20:12 GMT  
		Size: 66.5 MB (66493122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bee5024f1bc4ea576ea72c1d8a4db98ef3381fbb9453fc8c5ad432ffd6969eb`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 277.4 MB (277370382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:406cedb8674407a05b17c15943f9e7c3a255aaef27f64e811c0be56a7741c300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1059666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fc0b1989ebbc80b50017b09d8b1157dad9e6307eb6c292acb38ae87668983e`

```dockerfile
```

-	Layers:
	-	`sha256:c7b33b89446095453973af6a91aadea63cc60b63523a412706999fd51fa94186`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 1.0 MB (1047361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efab7540e286731d44067bbdd7152a38c767935677b3f147bba320f3596bda65`  
		Last Modified: Fri, 18 Sep 2026 17:20:09 GMT  
		Size: 12.3 KB (12305 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.23` - linux; ppc64le

```console
$ docker pull rust@sha256:648b6b9a65c2a29872673007230b19dc33a680034205fd5416d92c64e8869ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364125137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d24b3c94e1b59f1b5ced4ce5fba20720ead16b59abec62be24c91aed1b7877`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:24:05 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57bf0db0a28ed5e11dd732672b13d0a948b3581a08a0d14f93422b4cd21ba6a4`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66375184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b114d23161d7ef737c6caae16c106d1b81bdd0f3de9b96766d6900f6afe51d2`  
		Last Modified: Fri, 18 Sep 2026 17:25:18 GMT  
		Size: 293.9 MB (293935184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.23` - unknown; unknown

```console
$ docker pull rust@sha256:5b9d0bb400c8942d0c36adbd53b56ad6262df391c92309681951e435f6711b4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **994.2 KB (994211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c4be00750a1797ab28ba3e06aff8666027bdda8d83f3f4d5def962385b8e5d`

```dockerfile
```

-	Layers:
	-	`sha256:0d14623d149cd8fa1b2dddae4786477da39c457e6c9aede3152b935ec75e9825`  
		Last Modified: Fri, 18 Sep 2026 17:25:12 GMT  
		Size: 982.0 KB (981979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c3716aff45ea4185f057f01acf1c5cbddae75a2049890cd014d89f7ad8ddc18`  
		Last Modified: Fri, 18 Sep 2026 17:25:11 GMT  
		Size: 12.2 KB (12232 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:alpine3.24`

```console
$ docker pull rust@sha256:7cc1c22d77d9432f7fe012a70e6d3e555af54c2a6832700ed7d553f1769ae89f
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
$ docker pull rust@sha256:6d9066cf04ed2cc9d1a406016f4c9b2574bafda23f9e88bcad8e5d24fa6aec8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.2 MB (349226069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bd64fbb5e3f8b9fd5d0982a21f8aa53de6cb74957318d31766601c3c40be91`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:38 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:56 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c7bd6e2b647dde3ccb4eba5611b30678a6b7e895c3cbc9e305d977873abb2`  
		Last Modified: Fri, 18 Sep 2026 17:20:36 GMT  
		Size: 75.1 MB (75083053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4557981ccc77736318fe075908bff5b2679571a906478de1446e4ab751eda238`  
		Last Modified: Fri, 18 Sep 2026 17:20:40 GMT  
		Size: 270.3 MB (270293278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:181bd9dee327ace9f2ff7daf9c7149e498a421985040031349bd8dd1419ad725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1003879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a09644c91bddf713693dbe51790a44b95ca39862ebbd3b393e3009cabf2198`

```dockerfile
```

-	Layers:
	-	`sha256:29a6c31af93f2d464f2d347d313639597cafd558e5f57563ed49a2f0fc872a88`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 990.5 KB (990489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0be538bb63543af7540c8d6f25980b1b926cac0140d3e38f2e86b7bbc988fc46`  
		Last Modified: Fri, 18 Sep 2026 17:20:33 GMT  
		Size: 13.4 KB (13390 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:400acfd2e044747555ff87ead291c3c480b7a02ba54bc7ac1a1bbce927b862cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348064585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14239ca0a7f24da29ecef6953c3ff6e40e1eccad685823ba1dd22bc01e74ee33`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 17:19:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 17:19:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:20:06 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cc8c83bbbb99a5a7bfdb7067a13196834b594ddc45e8aff1516e826504cfe9`  
		Last Modified: Fri, 18 Sep 2026 17:20:41 GMT  
		Size: 66.5 MB (66506491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ce0bcae56692d73ac118b28a2a872354519ffd48c2c435ae064614c54c2ed`  
		Last Modified: Fri, 18 Sep 2026 17:20:44 GMT  
		Size: 277.4 MB (277370435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:76decc47c157f3f73ac36c3c53140034e779a03ec48d2ed55897cb977c60082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1062997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf642583251c1ff1e07c4e1397498e2d0effced35dd4ea3fa66d7afb721a0f`

```dockerfile
```

-	Layers:
	-	`sha256:8b5af71193ceefdbbb29e76a400e449b60e5ed542bc59a34b60addcd61cf00c2`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 1.0 MB (1049440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:836066884d11f3cc3654c8d21b9664cbe85051f9d0a574b2bbd417c800009354`  
		Last Modified: Fri, 18 Sep 2026 17:20:38 GMT  
		Size: 13.6 KB (13557 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.24` - linux; ppc64le

```console
$ docker pull rust@sha256:8085af582b7b986cea7f12ded81a20dc3cc344922fc0a2858ddd02a161d91527
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.1 MB (364149807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194ee3309258e81a1927dc8d2df98d845d2860645d2f5556b108c117dd3496ff`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 18 Sep 2026 01:08:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 01:08:20 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 18 Sep 2026 01:08:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:25:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a014e7360bfb082983bea1f62e6054d94435bdbf9a30a84847e199058f0caabc`  
		Last Modified: Fri, 18 Sep 2026 01:10:25 GMT  
		Size: 66.4 MB (66397154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1fec09319c8e401f923ad186001dca346fcc612bd92d2e1273a3d4aa30e388`  
		Last Modified: Fri, 18 Sep 2026 17:27:08 GMT  
		Size: 293.9 MB (293935176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.24` - unknown; unknown

```console
$ docker pull rust@sha256:49aec3222e7a6db791b9580a65fe1b0ece5304d640dfeb3ecfd420d94ca03602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **997.5 KB (997494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff507849bc31dfed70a42a81b8e132c1508c75af7cbb150066ed34193dc1d85`

```dockerfile
```

-	Layers:
	-	`sha256:54f016fb364e60f6243f2ced2b9d201ce3ac204b6ce0c3b698f37ee7fc5ce2c7`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 984.0 KB (984034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d550427635006eab25cd7ece9deee44365b0497445f9eafd6df7df01b6aed6ee`  
		Last Modified: Fri, 18 Sep 2026 17:27:02 GMT  
		Size: 13.5 KB (13460 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:bookworm`

```console
$ docker pull rust@sha256:4a8dc0e32ec234e6c76e0047749d84bf742eb165e8af061d8eb65da532403ce7
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
$ docker pull rust@sha256:c49256cbe5ea0188bc658a689500d70c41eb51f009a7a7be209caf60a944f3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **562.5 MB (562530953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d41993b1f2f78dbd010160b83b06b0a38e17b57a269e9bf0be7f2078073f98`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:44:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:40:53 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:53 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:53 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2de2423ebd9d3290883175c0e46dccd6de955b08e6e9a5bd20909e3face240`  
		Last Modified: Sat, 19 Sep 2026 00:44:47 GMT  
		Size: 24.1 MB (24056077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81578410df169380efec491bfdc60a7e586d4b48ef4c0aeb9b6ff085812d9a7d`  
		Last Modified: Sat, 19 Sep 2026 01:46:20 GMT  
		Size: 64.4 MB (64424271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9e8d0a007171cac57d643a3982902d45431cd860400eea55e18df75fc0b12a`  
		Last Modified: Sat, 19 Sep 2026 02:17:13 GMT  
		Size: 211.7 MB (211707818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47495189b3619615361bf1ba54a703b2a44cb7d76757ae1cd6a77d4f845bd357`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 213.8 MB (213839347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:c9a80b39cd894ae26b4535826cd68e9cfa81b1c2a94a455d996364039a1cdbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15884796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b95abc9a0505ee48f6eb26f2517991040dc47c971e05e5145ae2b13a61680ee`

```dockerfile
```

-	Layers:
	-	`sha256:8c588c06788a615d23f5a3da0052db65bf8da78cc02af6bd17835d4c5a2a9436`  
		Last Modified: Sat, 19 Sep 2026 03:41:28 GMT  
		Size: 15.9 MB (15871700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04686df85e6e7f67241ada49a8e0dcc7ae8e96f757f988535e76732631b0efde`  
		Last Modified: Sat, 19 Sep 2026 03:41:27 GMT  
		Size: 13.1 KB (13096 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:7ae83ac4da9943bd335b7ed7d6ab2d6efcba8c87bb10e173f0897f210f73457b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **559.4 MB (559395342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79981d772efe03060a9671e927d22885bed55938afa7ca1de773810df74dea1`
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
# Fri, 18 Sep 2026 17:17:02 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:02 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:02 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:3502339839ddbdb50d9573ba41ec01929ca111d7bc201d1956dbbd01542e878b`  
		Last Modified: Fri, 18 Sep 2026 17:17:48 GMT  
		Size: 258.0 MB (257987798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6c68c19b8b695dc997e4302d8c6859e7d993ef8f776bb8cf601ee14fbea4e595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15687893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd22bc2cfa0e83212a1ea5a4980c15363fcf501f664099c1e56e2f0e4cc1c99`

```dockerfile
```

-	Layers:
	-	`sha256:28c6055a3cd96c5a7fad77667efc5205519c8ccf0cab7402ff0573a8532c090c`  
		Last Modified: Fri, 18 Sep 2026 17:17:43 GMT  
		Size: 15.7 MB (15674717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13a3ff8b4183cf0b3a18d88c81eb7b6cbe8a57d4a9effb2ecb88850f402a6235`  
		Last Modified: Fri, 18 Sep 2026 17:17:42 GMT  
		Size: 13.2 KB (13176 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:5b993f23fb69746405496e76f91e511d96c82b5b23304fd5d20b4a80a8b223ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.0 MB (522035583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1999f81da8e1f787006d58cbaece8ac4837d7ae04ad16784d829470f4bebc8d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:47:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:31:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:43:19 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:43:19 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:43:19 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e528fa46febdafdfec8e02c978fc9de14e76dd532505c33472d8f915ac27a2f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:27 GMT  
		Size: 23.6 MB (23627721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328a0fa474a1ca8d79c015c72bce6d935298ea38f98b4e04dec9e350442e03d7`  
		Last Modified: Sat, 19 Sep 2026 01:31:38 GMT  
		Size: 64.5 MB (64500108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d3ba406c16b69d4aa51efbc3e6261745f96834c1468f508f6c0eedfc94b57ad`  
		Last Modified: Sat, 19 Sep 2026 02:16:41 GMT  
		Size: 203.4 MB (203421216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9509957d657ed361410cf3985e80f77ffb71c7917ab2437416c892b0c823ce`  
		Last Modified: Sat, 19 Sep 2026 03:43:56 GMT  
		Size: 182.1 MB (182096628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:9fa0ff2206e8c7644f8b3bda86abb13cf399cc83ce5b80778f435e44c53d9dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15913426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134b4b6ff29ea75276eaecb637a3360a7fec645d07b4b1d53894445fce90bc4`

```dockerfile
```

-	Layers:
	-	`sha256:eeabcbdfa3ed73e5285c4b5aaf8439dc2b6b7bf15f98770d823cae06cdc4c8e5`  
		Last Modified: Sat, 19 Sep 2026 03:43:53 GMT  
		Size: 15.9 MB (15900226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f187ca2f8a62fef08676aaee58ba4adb148dc439fad8227e1d448253dad029c`  
		Last Modified: Sat, 19 Sep 2026 03:43:52 GMT  
		Size: 13.2 KB (13200 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; 386

```console
$ docker pull rust@sha256:9c7865a496711c859ce6673aa75f4dca1582dec73a752d10eed1ff9a39a544f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592138312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a9d4ea46ea63f5126d96a6c3195b1a8445e3d351a3be286f3ae03df182f240`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:49:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:35:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 02:16:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 03:38:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:33 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5251485f272d2f5b30f340b3424d4885551b55c64d74f383ca196bc8338f8f3e`  
		Last Modified: Sat, 19 Sep 2026 00:03:27 GMT  
		Size: 49.5 MB (49491404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ef8e3c04f871b1b16e9e51e8bd832c4d6c6367991bf2fb4fa68e1ada0e92f4d`  
		Last Modified: Sat, 19 Sep 2026 00:49:43 GMT  
		Size: 24.9 MB (24889211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5707b21c933ac81a1325c7daf018024e4ba50850e560f2913144ce64343b9d3b`  
		Last Modified: Sat, 19 Sep 2026 01:35:29 GMT  
		Size: 66.3 MB (66257299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f002589ea9ffed9d13043e7864c8ed045e3b473b90e4c5bdbc6dc29e56222ad8`  
		Last Modified: Sat, 19 Sep 2026 02:17:11 GMT  
		Size: 210.6 MB (210611416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31f818ffe545caa61bd39d7cb9e962e58e72072a34fe1fa5879897fa10a8974`  
		Last Modified: Sat, 19 Sep 2026 03:39:14 GMT  
		Size: 240.9 MB (240888982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:6cd6225667f424cb22158e3bfe75a71f6075c8fc00bca5ab59b15018f0eb2476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15862983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc8a34a95aab432453050916bc397f1ab1ea45618559e4416348fed10bdf152`

```dockerfile
```

-	Layers:
	-	`sha256:f641cf19931fad071ad30f08c1d877d3d00220b5cd526c36bf51eaafeab3af62`  
		Last Modified: Sat, 19 Sep 2026 03:39:09 GMT  
		Size: 15.8 MB (15849919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3935db3016583aa2ce46321fd58416d08cfdc8249155c5de150761f23249d682`  
		Last Modified: Sat, 19 Sep 2026 03:39:08 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:c8cc324c353770020ed6357be1be98f9e5c46286e3c86afc38c5106ed99aac77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.4 MB (657362285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bf09a9ed94d33ae165f9b6dfbc33c1a7ea969b05539706851fc5c52b5fbb50`
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
# Fri, 18 Sep 2026 17:16:50 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:16:50 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:16:50 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:b3d0fcd3c0b92b0d3464e36838637d50fb317b753b69f56962c4d99fe74bfc45`  
		Last Modified: Fri, 18 Sep 2026 17:18:42 GMT  
		Size: 294.7 MB (294723995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:5bb7172630848452bd952d55b3c904efc258a90b3330c9d9b86b97e57e97c522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15861896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a617686404f9869792497018114cfa3f2e80165a2d40f5c21d9429ee22e32a`

```dockerfile
```

-	Layers:
	-	`sha256:606631928a63194e306bf48fa1b4337a324ccd2f1753ac8167fe3fd380d1ffd6`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 15.8 MB (15848756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5206a2a3996e078921e894bfee6058c5876d53e7ca0a2147a09e2d430a138e31`  
		Last Modified: Fri, 18 Sep 2026 17:18:36 GMT  
		Size: 13.1 KB (13140 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:latest`

```console
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:latest` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:latest` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-bookworm`

```console
$ docker pull rust@sha256:94f07be94ef988b07ffced04e357f26044a1d3e742931886b346138d93ffc843
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
$ docker pull rust@sha256:dacc9e51f252243eb59d2fb4cb4ad8b0d3f607b6a82c398cf8a321e59ff778a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.9 MB (312857406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c4ab4e96dfb4ec55222183735672bf45a3bbfab7e2703dc03eae7e3690e7a7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:09:04 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:04 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:04 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8f0f20aa55d04c2825907b071dd82893a52a1b4dea49c2c1e8ee4ee0aee415`  
		Last Modified: Sat, 19 Sep 2026 01:09:44 GMT  
		Size: 284.6 MB (284618963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:2ade8fcb7e491bd18deabb233a58bc64c1d2e77b0475bfa90c582789dd3b8cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4112803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96bf1de22b95be9712c8fcfabece1afee365f214adedec1b52ee0a806d5ebe86`

```dockerfile
```

-	Layers:
	-	`sha256:fa91d0cdf88913ca8b60f4d8b886b10888f25bfffbe4cc8c68708a4355922ca3`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 4.1 MB (4099497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:563b3703fbd2cb0f0bc2f2d775af8b16532d477abd18b0e045476db5d372b83a`  
		Last Modified: Sat, 19 Sep 2026 01:09:38 GMT  
		Size: 13.3 KB (13306 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm variant v7

```console
$ docker pull rust@sha256:e7a7ba3e1fae016b73793ddb175179360b9aad8664d47ed8e6b3fb6d9163c84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.8 MB (329776382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e61aa8a089caa0ee88ec270494391023051bea6c4e03660f093ca5bcbed43f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:18:20 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 00:18:20 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 00:18:20 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee406b197dfa543c5ea03c1ebaf8301252578ccf63714c002c86666162ab438`  
		Last Modified: Sat, 19 Sep 2026 00:19:00 GMT  
		Size: 305.8 MB (305833266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d60cb8ec17219b14b7d9299978fa95ca83e89b4dd0a660076f921b0bd790a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3927271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d75aed3e3b107503c27b2b2f2de2efc6197a39766e30c158aca02aabfe33d29`

```dockerfile
```

-	Layers:
	-	`sha256:eda739e7cc0ec3dfd86d392bd0e4135bd0c610e2502d0c5c2586705846bb3003`  
		Last Modified: Sat, 19 Sep 2026 00:18:55 GMT  
		Size: 3.9 MB (3913884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91728add892f607b95fe0f3a6d43be906a23c194168dc32ed78e06a6bb33ee3a`  
		Last Modified: Sat, 19 Sep 2026 00:18:54 GMT  
		Size: 13.4 KB (13387 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:3ebe98baef5911f8461cf81ba05644374a3c5ef1f8a33db3977bd4175f5ff1fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276111603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17156b215e21a0b10b1d7576ee47b656ef76bb4f59575f396adcf59320dc6d8a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:32 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b9a6316d31dfc368a367f8ce730b2dedb89578a5050f48554fdc9be3624982`  
		Last Modified: Sat, 19 Sep 2026 01:16:09 GMT  
		Size: 248.0 MB (247987923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:04ae8b246a33fa1c2237ec59b2d397e5bf510fd736932974bf484b619b6cf927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2316dfeea71a54010382e711613e452c66a85060c0254a4f143a5454431cd4`

```dockerfile
```

-	Layers:
	-	`sha256:d6e6ce60592c319cdf1b71cd3d0db6f5c829a6d0d85aae588e89ff59d771cbf1`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 4.1 MB (4121791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:920bc9c81ffad9f5439a231cf61a3e5adc237aa043b5c40ff4a643aa26ef186e`  
		Last Modified: Sat, 19 Sep 2026 01:16:04 GMT  
		Size: 13.4 KB (13410 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; 386

```console
$ docker pull rust@sha256:2724f873455ec980c5e5b3cd94071d3ab237f7cd846284036a50416150be61ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337737042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c7ee413c767c867013691767c299b168990860811571a17494054172da797f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:15:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:49 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9049aeb5adf75c12cbe2890c88f7a31f47aa28de03827ea4cfb0a8a9dea6fa7`  
		Last Modified: Sat, 19 Sep 2026 01:16:30 GMT  
		Size: 308.5 MB (308510937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:d09bb55e173a33bad144f2dc89000ea0e4e6f0e13a52dfb06c906342a6993d22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4093458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6627438f61473638eb408a90971962921fd0b950bae1717e37d1a8e702b127e`

```dockerfile
```

-	Layers:
	-	`sha256:02baa8901dd11aaff0ae212911de238370c97a733ab45c02507f2964fca32a60`  
		Last Modified: Sat, 19 Sep 2026 01:16:25 GMT  
		Size: 4.1 MB (4080183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be9895cd1c804e7038f82f8fe90f853ea9462ef1c75101edcfe12ad9a907e4bb`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 13.3 KB (13275 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-bookworm` - linux; ppc64le

```console
$ docker pull rust@sha256:2e855c1bafecbec2f25145892ad54359dda760895fb5125621f5d34abb980902
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.6 MB (395588600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a90437123ae3a17c0881bd8bd29c56a23bf5bca173ab3bdbdb046248e67731a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 18 Sep 2026 17:17:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:17:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:17:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fae863e578604488f95384ab1bed447d123415926786548371a867a77c0af`  
		Last Modified: Fri, 18 Sep 2026 17:19:55 GMT  
		Size: 363.5 MB (363512123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-bookworm` - unknown; unknown

```console
$ docker pull rust@sha256:fa0dedf58b5dbc4d43f9708a47b351cf8fe6f3d787c77573a7fb7d3d76f561f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4086404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983b82343b307f24f26a1ff70eb10882ce7f5070d4a25dd360de63c8b69db857`

```dockerfile
```

-	Layers:
	-	`sha256:47018db193d8866460afef802dad52e03d8c172b0930047d4bdff0cf0a2f20e9`  
		Last Modified: Fri, 18 Sep 2026 17:19:47 GMT  
		Size: 4.1 MB (4073053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bc5cf5e54d80bfbbc4cd1f8e4ff47b1f1772a4a5e704fb8eed712b454f262fe`  
		Last Modified: Fri, 18 Sep 2026 17:19:46 GMT  
		Size: 13.4 KB (13351 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:slim-trixie`

```console
$ docker pull rust@sha256:b006de2a6c2d36ee0156a59777ba2ebb90e9266c1311ade0ac5508454d809736
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
$ docker pull rust@sha256:fce83543909cd5409924a61ce296bdf5bab0fca37f004c0f6c8ef6f4a37bbc59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319098044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3807bfc7862f0e7e5f64fb10278b09a0c150fb05329afdf1b4878820eef226b8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:09:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:09:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:09:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf267fd7f2be00938ed639cacfa604452304723eed29b413d7e381a2895c9cc`  
		Last Modified: Sat, 19 Sep 2026 01:10:00 GMT  
		Size: 289.3 MB (289267626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:7a2977fb029e55a14a7568c7bd601f827439c95abba16b0815e2006b820833b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4186255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96619f6a663daaa810019087f41bf541d914efacdf6fef8f07557d0036729dbe`

```dockerfile
```

-	Layers:
	-	`sha256:efff59c1d5f565f0dd8e813856b5c262f9121bbe0207bb29d158f50d7d804602`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 4.2 MB (4170623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39df1e11e1e3d64e4f0f6c03893b6310da2f2cf090d6e4a218122bd1d05b9580`  
		Last Modified: Sat, 19 Sep 2026 01:09:54 GMT  
		Size: 15.6 KB (15632 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:c002b041cd16226417bb27f0f2b696416360ddd2259193acd8158b6be94af1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341989381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3252ab3e92292f7eec87337efcbfb5aa7a397353214bf9a76461789b6f39b8d5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:00 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:00 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:00 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474f095ab1479499b90beaa566ccf8c6637e76480c53880a815d82b5ec121b32`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 315.8 MB (315770240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:32e056b52261fa1d5202bfcf118894227b3a417b1ad76c56bc66f0a92979d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2b6297818da0f6256202da88bf54491182acab5504a0dba7c5fcca6ccd9b64`

```dockerfile
```

-	Layers:
	-	`sha256:4f915e8d3a72dbba7f1d39257b20e8030bd27f60e19154ce430ea945b8d35311`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 4.0 MB (3969782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7625ee0f1420884741889dcd565248de376b818c5428ed89a7e92e8f14a8daeb`  
		Last Modified: Fri, 18 Sep 2026 17:21:35 GMT  
		Size: 15.7 KB (15745 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:441452f8033b93f69dce3a3ff5c821c411f0a580723e6343932fc34a1b03ba5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281962968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa8fafc925472ff98d14b89a5f4b97adf803fe20a68b2a0a1a22cb68bc6d324`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:16:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:16:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:16:45 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094311c80135e2cb20767b8587e25e7e6d5e1acb5922e85f1a70e92d33be249f`  
		Last Modified: Sat, 19 Sep 2026 01:17:23 GMT  
		Size: 251.8 MB (251773277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:1fa3eee56c8177c919ab46bf54ee1079c3ee3bf3eac47d828458fb17d1f2bdf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843da6bb565e99508f3ed3f2c764a1066adcba2a5e0a8fc3f00ee22499b72d42`

```dockerfile
```

-	Layers:
	-	`sha256:1eb4a7f67d2a858b56a7bc0dae7760ec5c87dc4a28117dc2264693ec0b4c4fe8`  
		Last Modified: Sat, 19 Sep 2026 01:17:18 GMT  
		Size: 4.3 MB (4261830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97546b85e1a7e5d9d5c8b444b0cb1e2d25cf86c3af7aec5f45e2e77311c18168`  
		Last Modified: Sat, 19 Sep 2026 01:17:17 GMT  
		Size: 15.8 KB (15785 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:6987201413bf70fbc33ed0901f81366682890901f51a125dd8b085fc1bdeb62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.7 MB (344732860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0719d3bcff3e5a6e2d6dd58ca3cffc20f7543c4e2a3f3359b0bf66de8becf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:15:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667d843237f80fc454c4d56382e63f2ce672f571c99a73d7828ecc85f702d7f1`  
		Last Modified: Sat, 19 Sep 2026 01:16:41 GMT  
		Size: 313.4 MB (313392462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5c6fc265910f1607803b7f4d918b5184a8441eb3ba059500a4f57b9ce1a4e47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4161018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20406034ec6dcb2f0a13bf5fce5638579e5c4331a01f1d6022aac569112fa2db`

```dockerfile
```

-	Layers:
	-	`sha256:38867a647dd75f22d76b2092d355b67521e28738a6d0b510513c944dfdefdd58`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 4.1 MB (4145437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a0baa173f575375e2fe546ec62e32b57be618f1998ecd2c2f6bd76b101abde`  
		Last Modified: Sat, 19 Sep 2026 01:16:34 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:effa6bc9143502a2e53dc62311eae089c016d3d347b36f89fdc81f9e696e9495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.1 MB (405136022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f687c151a491c496c7e3cbd7df3222948920e7d7f31791ff5ccee6973336bc5c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 18 Sep 2026 17:21:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:21:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:21:34 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49788ab71dcd6881099d14fbea12baa67ddb56540861dd558262fd25fbe208ce`  
		Last Modified: Fri, 18 Sep 2026 17:23:10 GMT  
		Size: 371.5 MB (371520561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:82b3ce6cf49e02ae5a03ebc1ff80399caf505a488dc796aab16e014f6e750e34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4177070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777042fcf469c931c668d27651696ed96e87b358be7a6ee0183db8831cc54de7`

```dockerfile
```

-	Layers:
	-	`sha256:ab5c742fc7a88addc36f5699a57a2d15eb6de0ad60082fe81cddd3ee6784800a`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
		Size: 4.2 MB (4161369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13b822fa861b1a0437120283a13480ca7a7dede6eed6467ec6ebd8788ba148e1`  
		Last Modified: Fri, 18 Sep 2026 17:23:02 GMT  
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
$ docker pull rust@sha256:98735dae2c7e2df8d8a004300390026bfaaa3ad9f070135b82a33cd00d4424ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.9 MB (377854455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed4305d498208dfcd3b21430df4cc8c809696da6d93b26d85eb1edff8059858`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:30:16 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 01:30:16 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 01:30:16 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094644ab865140fc220e37dc88e492d9af44a8b1212a00812df0e2df5baaa568`  
		Last Modified: Sat, 19 Sep 2026 01:31:14 GMT  
		Size: 348.0 MB (347955306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:528e5018f4aaa1b696568d5a96543469ca1c25775fc58519c1df7c139a205157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4004005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538eb312cac28e88675bca94dbc9b2a70bd5771e914664cb551bb178a21b0dd4`

```dockerfile
```

-	Layers:
	-	`sha256:535891fd838d1dcba219f344b45d22eec831b6214bc232176c82471757277aba`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 4.0 MB (3988372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2effb0ce0e6cfc3d67961548f297352b29e517442fa6199bce0edad2416647f6`  
		Last Modified: Sat, 19 Sep 2026 01:31:08 GMT  
		Size: 15.6 KB (15633 bytes)  
		MIME: application/vnd.in-toto+json

## `rust:trixie`

```console
$ docker pull rust@sha256:cf9fb3b5e1d2d5aa4e1452e306153774973de490a5d662819b5ee00cc286cb17
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
$ docker pull rust@sha256:f31fa9eaac4e417505e10009786ec0c636558e02dff3fa662cc92c10894ba065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.1 MB (593065239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8b264f0d1c889fe9510197a0b16a85d06685b2d112bb4115f7b33072ce46ec4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:45:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:40:57 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:40:57 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:40:57 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f0cc32f2e355552fbfad163210ddc51f7b8bc7cfaddb2a41bd9c4a7c5e3c49`  
		Last Modified: Sat, 19 Sep 2026 00:45:14 GMT  
		Size: 25.6 MB (25640088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38985a14f2b1b8215895ecb448f3dfc4067cb494aa00b547c78c9a012e9b2460`  
		Last Modified: Sat, 19 Sep 2026 01:24:14 GMT  
		Size: 67.8 MB (67807472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7272a918094ebc3b66e08b23223afd37614df4ba4518b2dfd9da5ee9247fce6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 236.4 MB (236398594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed8a5e9f2f6f9e9d6249ecb1e59a379bebee7a579302a7efeeb6c70ba7d4e4b7`  
		Last Modified: Sat, 19 Sep 2026 03:41:36 GMT  
		Size: 213.8 MB (213839386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:c40d758698bfe159184b069a99c2007992aa3ea1b3c2ce3d8367c3f878e563e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17222925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c90812c10a254a90e2b0fe232efdc90e6038e0239ac305cb8b4fca9c9ebd367`

```dockerfile
```

-	Layers:
	-	`sha256:a902981352671fb34c30fb62015b233ed2316ca2377c6f1bde03c5e3d3036c44`  
		Last Modified: Sat, 19 Sep 2026 03:41:32 GMT  
		Size: 17.2 MB (17207529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9cfe81e8cec72b115fa394c8b814260f6aedc0d850452b7b6e9b1abf8ca48f9`  
		Last Modified: Sat, 19 Sep 2026 03:41:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:501c42680053b5125e089bab23f63cb8543340ddce37f2ea7930bc984f03eaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.8 MB (583760172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49ad0c654de80ebcd4b80d5ed6e654570ed7867c272f965d2859b9139267c01`
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
# Fri, 18 Sep 2026 17:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:35 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:5879255e7d5719e0ffcf3143f66d2877fdc6f5935013deec9dcffbf20137c50e`  
		Last Modified: Fri, 18 Sep 2026 17:20:22 GMT  
		Size: 258.0 MB (257987718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:ec7c670a0c62d59f1093deaee12a2ee7292ad6bcfa45246966a709cc37ded0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (16990127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba5dfc07d988ea04a1296d4b9b63dee67a60d0bf48a8e169a9be7caccf7ccfa`

```dockerfile
```

-	Layers:
	-	`sha256:af4c603698e9446feea70fd208419754d504efe9454ec6f424ccb02c4d315cf6`  
		Last Modified: Fri, 18 Sep 2026 17:20:17 GMT  
		Size: 17.0 MB (16974620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125affc1442d13657cd9ee01bf1877ae4b20807221db48ea852114f21fcb531c`  
		Last Modified: Fri, 18 Sep 2026 17:20:16 GMT  
		Size: 15.5 KB (15507 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:218765d808d35e2e3fa1b12b2e1314e2bfdd427a3530de071398553a95743cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.0 MB (551037605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc278072c558b378b3ac75902b0e4ebe7d2e91feb6c8d412d22dda54be61327b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:47:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:31:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:16:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:44:12 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:44:12 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:44:12 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48a960533f349c100af0847a3bcf602ee922ba6929053341585cdec455dde6`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 25.0 MB (25038666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc42934ae55dd8b0dae5d89dbe5ee202f4708b362d63ab1ceadbac29cbe502`  
		Last Modified: Sat, 19 Sep 2026 01:31:45 GMT  
		Size: 67.6 MB (67622554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509699aefca8644182ba53d01f998f83920f606f076b388179b8f50e80622dd3`  
		Last Modified: Sat, 19 Sep 2026 02:17:25 GMT  
		Size: 226.5 MB (226531000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d90cec24d7b8d965bca5be5dadc7338f8c170ffba6ff21473b7281a19e80e8`  
		Last Modified: Sat, 19 Sep 2026 03:44:49 GMT  
		Size: 182.1 MB (182096549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:805a1067d5cdc839f8377008eaa63ee911c3054ba233fa8463c7cc6891e8ce27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17306793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd2a0537fb3ca9f16b3f7a133e5e0e8873e3abdb474bca3447f367daa6276fbf`

```dockerfile
```

-	Layers:
	-	`sha256:934f9d902d04a419276384433437e4ad9c46b63e501c2e98f564728a6f2e8d5f`  
		Last Modified: Sat, 19 Sep 2026 03:44:46 GMT  
		Size: 17.3 MB (17291247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d75f5e6afc3d364eed031b27d7fa91aed730aadeb7106589687de22658abf23`  
		Last Modified: Sat, 19 Sep 2026 03:44:45 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; 386

```console
$ docker pull rust@sha256:ac26e9c808e36dabb8c88620a2e3566c5e5bae0748e98eb2f017e4e92c404f6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.0 MB (628953261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc643317513e19f0ab801c06e15f932b918afe47f05f9da4ba37012631bf031`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:49:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:35:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:17:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:38:46 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:38:46 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:38:46 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ffd2284b186f37d076edb6bb362413f19f0e8ea0bc4b5a6c7b5963d826956d`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 50.9 MB (50892716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8938dac21b814cbb51e6eb46f13553905a682bce92017f3a8e2de34c5543d1c2`  
		Last Modified: Sat, 19 Sep 2026 00:50:01 GMT  
		Size: 26.8 MB (26803699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807515466c2d8e513780f39229d29240ac99539137bdc4620e7024e8182006af`  
		Last Modified: Sat, 19 Sep 2026 01:35:59 GMT  
		Size: 69.8 MB (69846378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1719797c78978ea73d9c5668c01164a647e1afce3b6bb681199090bc294632`  
		Last Modified: Sat, 19 Sep 2026 02:18:37 GMT  
		Size: 240.5 MB (240521431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f13730358cc8bbaf0c6594d7b2eb46fbba08fe185cae953ed0386b96740fbf`  
		Last Modified: Sat, 19 Sep 2026 03:39:28 GMT  
		Size: 240.9 MB (240889037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:a834f893ec67212d60c3a2586e0194dd83d5cff24e9ba15bcc9cbb26c3be915d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17192455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7c72d6b91eab6f4d4cc972615f16548890c5c06cb23da22d8d0b81da6ea5d1a`

```dockerfile
```

-	Layers:
	-	`sha256:a3447127e1d768194fae8ab04de65aabec078931a094f0144ef0ee57ecc4e774`  
		Last Modified: Sat, 19 Sep 2026 03:39:24 GMT  
		Size: 17.2 MB (17177112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3338f86f343bba6b7afccf8535ac59e5a66467c449b2fc6775d3d2ce2707fa04`  
		Last Modified: Sat, 19 Sep 2026 03:39:23 GMT  
		Size: 15.3 KB (15343 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:a4f7e2049fbf29d7a634ab35f027cead65366d0f522829beadf0216da8967d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **679.5 MB (679467852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f58f7c67d585c385290b1ee773b74bf5dacfe2254b2dca941a928ea252f9ef`
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
# Fri, 18 Sep 2026 17:19:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 18 Sep 2026 17:19:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Fri, 18 Sep 2026 17:19:29 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
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
	-	`sha256:af63b1d1d3a76382b990937070faa26c306ab5361f07ef28acd2459170604905`  
		Last Modified: Fri, 18 Sep 2026 17:21:46 GMT  
		Size: 294.7 MB (294724254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:5fcdb3a8986a26a39cb3e11152014c2b1eaf8aca959ef413230162c294bed357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.2 MB (17207615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a03bb424003c64eafe79e421e192628373e0b0c23b9b6aa6f160680aded5f4`

```dockerfile
```

-	Layers:
	-	`sha256:4ab3faa12ed1e5fd63a634307d04a87658d149d214cede4c25f885eaa17d25b0`  
		Last Modified: Fri, 18 Sep 2026 17:21:41 GMT  
		Size: 17.2 MB (17192151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:634e41b34c7277fc3d063465eaf901b0172d56a90f66f9cca6bb922d41c86d37`  
		Last Modified: Fri, 18 Sep 2026 17:21:40 GMT  
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
$ docker pull rust@sha256:a0f47705f6adee613b423337b156dd5ba7b88f382ec71c98493efb92c4a4e050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.4 MB (647424752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b746449dcf2d60a53d319dbe7f93121cbe9719c06361c5b9f89a0aebff6516a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:58:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:14:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		default-libmysqlclient-dev 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmaxminddb-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 03:41:34 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sat, 19 Sep 2026 03:41:34 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.98.1
# Sat, 19 Sep 2026 03:41:34 GMT
RUN set -eux;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='dda7234360b7f578ca8b0ddcb80145646fa61a67c1720a5abc7051b35c9fcb71';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='6f34abb0d553273ce08306ea3adb758d0171f21090cc5ad5426f474ded5504d1';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='15f6e4ce9f583b929c996c91562bad6d4454f3281de858b02cdfdef615fac433';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='5b993042a9f0d3577592f08cb76f8b850951487c2556d90f6e9846abbb083a88';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='86ebc5b46b20013fca57dff4f83aa0c325ee90914626ce1c80ae76e126e48afb';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='312ac9390467fd7870f8aff6557c7cb3bff0a04bb11b263173fdfd81586da641';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e94134ed99fed1a3a1f13a3bf0a05d616fc1c2496ec0b557aaee4856cd34b2f2';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2ed8bc14ef34322e37568fcf822dda5fb354320e771878af1d41823e41ee2b24`  
		Last Modified: Sat, 19 Sep 2026 00:03:07 GMT  
		Size: 49.4 MB (49447624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538fc03d4383441d7c4817793af9d0e1e353f222ed83885697b344e60adaac7b`  
		Last Modified: Sat, 19 Sep 2026 00:59:02 GMT  
		Size: 26.8 MB (26815591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b419851585b6203f5736559b918b6389ce9658b290a7285d463e24132b479dc`  
		Last Modified: Sat, 19 Sep 2026 01:39:16 GMT  
		Size: 68.7 MB (68657128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d7f01aaf1425e5bab35f21787552e84e690f2ebd0b23f38a585ea9de889a6a`  
		Last Modified: Sat, 19 Sep 2026 02:15:49 GMT  
		Size: 206.9 MB (206919365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4c36a4f90f53a47aabab1fc26a635c23b9b40ad5c58b322e04e92df1dba830`  
		Last Modified: Sat, 19 Sep 2026 03:42:36 GMT  
		Size: 295.6 MB (295585044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:trixie` - unknown; unknown

```console
$ docker pull rust@sha256:99cbac62921371e58346d19be83f7523b6403bebc9d8ef90c6df40a2ebfb3cc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.0 MB (17000157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb260af68c535ac56cd3a818ba34c2ebe93923a278dfd6ae53cc3551afd96941`

```dockerfile
```

-	Layers:
	-	`sha256:20d8e1b1fa2d45f1f66d5a9a09041dae00bde80281d1bdb347d033784d34367e`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 17.0 MB (16984761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aabee7a34f5eff1854291199928c1e9f29866d54f0d6c5be79dd92e5d1359aaf`  
		Last Modified: Sat, 19 Sep 2026 03:42:31 GMT  
		Size: 15.4 KB (15396 bytes)  
		MIME: application/vnd.in-toto+json
