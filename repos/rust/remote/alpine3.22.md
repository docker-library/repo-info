## `rust:alpine3.22`

```console
$ docker pull rust@sha256:7a54a528456cc1cae43aab7a23e346198a68fdde39134e207110d91273ea3cea
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
$ docker pull rust@sha256:4a97841a6b3f66d263b2ac160352912e328b8dccbd2178aac137cfe251d67355
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (342023149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813664900132cb606a06ac6136a929a23a027f83d56421f6aad9e427faf7b9c7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:54:42 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:54:42 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 03 Nov 2026 21:54:42 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:54:59 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a84390372a49e35bc9eeadc93dcaccce620e1243f53cac35ee1023454de6af1`  
		Last Modified: Tue, 03 Nov 2026 21:55:35 GMT  
		Size: 65.0 MB (65038390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4627e79f636bef53840af876b84576267a2f7bfd97e3965d581e49a375cffafa`  
		Last Modified: Tue, 03 Nov 2026 21:55:39 GMT  
		Size: 273.2 MB (273190402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:4bf952d23d34f3c2f56bc84d1a65bbda267c772f1a453919b805d9aef525f130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **955.6 KB (955566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c3f9dd88d5a67b7b620ea845abe0e1d902b97399d88576037586533e469cca5`

```dockerfile
```

-	Layers:
	-	`sha256:21deea456f7f755a392bcd36a0c758bcd30d83d6008aec1aa95d6c6b68c224a9`  
		Last Modified: Tue, 03 Nov 2026 21:55:33 GMT  
		Size: 942.8 KB (942788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d22aada94c01a33699d2e9a195289dd4d2e005ed7e18f242bc4fd50ebb5c3c4`  
		Last Modified: Tue, 03 Nov 2026 21:55:32 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:fb7219b59f29b2b1295ef45e82b45902ba3966646a3554c0de61e2ae9e83567f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.3 MB (346250888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa25db86926253fa705e211953351b28dee4de00ea915c92e6dae2d6d41e5a5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:02 GMT
ADD alpine-minirootfs-3.22.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:02 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:55:24 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:55:24 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 03 Nov 2026 21:55:24 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:55:38 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:281d5a96263b1ebc7051f11d9b9a4ca111ed1c711d5e209682310fc62c4b8bef`  
		Last Modified: Wed, 21 Oct 2026 20:47:07 GMT  
		Size: 4.1 MB (4127381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786b5a5817dba47b06a90452e94952e6df30e8537aa38fad1c18e6c6107d2550`  
		Last Modified: Tue, 03 Nov 2026 21:56:14 GMT  
		Size: 61.7 MB (61712285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02016ee07ffb3443ecb5a199f20f500f2f17d1d4156e0263bd398008d2d9215f`  
		Last Modified: Tue, 03 Nov 2026 21:56:18 GMT  
		Size: 280.4 MB (280411222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:f64e01d917475db138b611d52b1b5a1295941ddd4bfdc0db6da4aa6f192bc745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1035009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608216d9ffd0bc89b900539a7523c804a1afe641bb1d3a650b0bd68016037aa5`

```dockerfile
```

-	Layers:
	-	`sha256:bd45366dc1488a929f7334248a57d5c0f1c5de264b7db7b5472b41848a788912`  
		Last Modified: Tue, 03 Nov 2026 21:56:11 GMT  
		Size: 1.0 MB (1022112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9363f2fa787172ce3204929be9425c3e37dba287111ca2d4696b3242109d308a`  
		Last Modified: Tue, 03 Nov 2026 21:56:11 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:6f0301315b616224c3f1643d825e94fdd95f6e789f776adc773e1677723aea94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.1 MB (362110762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0302175a4893046f014bbbf6aee780c355629bd336a485ada5d035a7d9a821d2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.22.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 21:58:48 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 03 Nov 2026 21:58:48 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Tue, 03 Nov 2026 21:58:48 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Tue, 03 Nov 2026 21:59:21 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:6292411e96b44c5d76aac019d2f95f8c7a9e90210868cfdbc37ed4c3ba65fcab`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.7 MB (3725437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e45d8df8351fc62355b5aae62b1cc4ac28595091479e4440af4b70322de9348`  
		Last Modified: Tue, 03 Nov 2026 22:00:55 GMT  
		Size: 61.5 MB (61518956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c3eb1a1831f82304d606affbd42398ae48d7ee22cab0c9af35ec4f52ca9c9b`  
		Last Modified: Tue, 03 Nov 2026 22:01:00 GMT  
		Size: 296.9 MB (296866369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:5f0d9d2a2bb106e2e3de75b32ef6492b4e4bbd232c996ab5f0436fbb9c241b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **969.5 KB (969461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2252107c9e5e27de84d71efd032e2b8b90c193d9d7828ee89f55f1f4e3ed4f5d`

```dockerfile
```

-	Layers:
	-	`sha256:3b6110e72f417455674361b0eb11f719f925822d97445bb32deb6d4c656926b4`  
		Last Modified: Tue, 03 Nov 2026 22:00:53 GMT  
		Size: 956.6 KB (956637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a62778c6e9d886038087db03a3572e9ac4d26b59fe92b240a1b74f79a2972997`  
		Last Modified: Tue, 03 Nov 2026 22:00:52 GMT  
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
