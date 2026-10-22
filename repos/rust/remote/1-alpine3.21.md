## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:8c43c39a05f0cf5d4285ebbaabc12c4a9b6fe97093057d8905000069fc0d7d30
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
$ docker pull rust@sha256:ba93103d9e7507979218be8303628b8c44e4c9f3456e8fa7fac9ac7b5988c6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.7 MB (341742159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad98bcac25dfcdba3df67abc7da018a482584483800020f73e1f1491c7113c0b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:51:18 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 21:51:18 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 21 Oct 2026 21:51:18 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 21:51:37 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='2ba97d668c06dc4b1884f2a3fa6f4cf14b9bd0c1db379af7e4f87a705ff19edd';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='7fdbb23acf6495efee2e371580c52b365917551b4835090a225c44ac30915235';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='d0f97151d3ed165ca11c68b460cabf1b828dc605525ce68bb0ef8f62f78ac8b6';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='4890a2396b60d0479a77917b05a78bdd7aa0ef5d29d44b8892314b5ffe2c1d5b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a58021afa018d6bccd5ebec67193975d59218e401d1e2d23e7a95c71e3ce175`  
		Last Modified: Wed, 21 Oct 2026 21:52:17 GMT  
		Size: 65.0 MB (64986090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c2cdf1843a1ab3f72f3fb7bc855d6145ffa8e378e048581238adfaef755eb9`  
		Last Modified: Wed, 21 Oct 2026 21:52:20 GMT  
		Size: 273.1 MB (273130674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:08774d75819e2eeb1772becb399dc8e0b7c7dde53fbb58e64aa74e79b9ae123c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **954.8 KB (954784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9cc82f30b25ae1410c87cff654d479a71b701271917b6ed19654af87eb2ecfd`

```dockerfile
```

-	Layers:
	-	`sha256:85aaf468636275f1d66a1c1d5971c9bd04c15da35088da135a9f0242ee965126`  
		Last Modified: Wed, 21 Oct 2026 21:52:14 GMT  
		Size: 942.0 KB (942008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12619bd8bcf48dd67b942fc0cbb403462925be6185c62f1c8f062da394217a0e`  
		Last Modified: Wed, 21 Oct 2026 21:52:14 GMT  
		Size: 12.8 KB (12776 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:950949d4e3ac72fc3a01ab9f30745a09a6a2a0096b1b0301e3b6ef111bb5ff45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.0 MB (346000757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f239e93a95a82f39c60030d62dec54baa85d6b64760385d922a07fd73c907f0b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:37 GMT
ADD alpine-minirootfs-3.21.9-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:37 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:42:59 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Wed, 21 Oct 2026 22:42:59 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Wed, 21 Oct 2026 22:42:59 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Wed, 21 Oct 2026 22:43:14 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='2ba97d668c06dc4b1884f2a3fa6f4cf14b9bd0c1db379af7e4f87a705ff19edd';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='7fdbb23acf6495efee2e371580c52b365917551b4835090a225c44ac30915235';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='d0f97151d3ed165ca11c68b460cabf1b828dc605525ce68bb0ef8f62f78ac8b6';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='4890a2396b60d0479a77917b05a78bdd7aa0ef5d29d44b8892314b5ffe2c1d5b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7d46ac86a55c03b040c4ce8f9078c3eefe1830e2ec8d99bee5b984e224182102`  
		Last Modified: Wed, 21 Oct 2026 20:47:42 GMT  
		Size: 4.0 MB (3974371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a53ec30ca93dac14742b3284d4c6377c2b1967de5410379306fc5919e843bf`  
		Last Modified: Wed, 21 Oct 2026 22:43:49 GMT  
		Size: 61.7 MB (61662983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13dee7a9be0599e4dcb31d337eb96a28965ba5e4598b280deed089bdd1f6d3d9`  
		Last Modified: Wed, 21 Oct 2026 22:43:53 GMT  
		Size: 280.4 MB (280363403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:38fabd2bfe9ccf22687e76c48e04c2b37dea25ecec15f8af4283cafbbdb1e4e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1034229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c30af8b6840aee4b610bc7a52081589c8a56ae7828c500585df210d7d1412f1`

```dockerfile
```

-	Layers:
	-	`sha256:1c1b00c9215e07707aa4e53cc4d1f6885dfa9e7020b7326a18bbed845d49484c`  
		Last Modified: Wed, 21 Oct 2026 22:43:46 GMT  
		Size: 1.0 MB (1021332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f77381323d65b1a0c5292c9ccd06ccc06c4dc3f82fba3991bda710f4398828d`  
		Last Modified: Wed, 21 Oct 2026 22:43:46 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:7d77bad99380ee95f3ef60d239d98895d5762a3f26c44c58f716cd97e4530511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.8 MB (361830028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd73e3bde7e7597bb45426de7ff6be16a4747fa0dc4f935321d9eeca9dbb12c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 22 Oct 2026 02:46:11 GMT
ADD alpine-minirootfs-3.21.9-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:46:11 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 15:22:37 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 22 Oct 2026 15:22:37 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 22 Oct 2026 15:22:37 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 22 Oct 2026 15:22:59 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='2ba97d668c06dc4b1884f2a3fa6f4cf14b9bd0c1db379af7e4f87a705ff19edd';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='7fdbb23acf6495efee2e371580c52b365917551b4835090a225c44ac30915235';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='d0f97151d3ed165ca11c68b460cabf1b828dc605525ce68bb0ef8f62f78ac8b6';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='4890a2396b60d0479a77917b05a78bdd7aa0ef5d29d44b8892314b5ffe2c1d5b';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.2/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:a081209b48125696a682b02c1c2db84af440ca6edc6d723ef5aff6945b2727a6`  
		Last Modified: Thu, 22 Oct 2026 02:46:40 GMT  
		Size: 3.6 MB (3557985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cdf8c576ebcee4f46b0bb3eae61418f46d06c5aafc01546ce1942990e38265e`  
		Last Modified: Thu, 22 Oct 2026 15:24:30 GMT  
		Size: 61.5 MB (61475359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d8f483ad4c24333a44f7c9f5c5597a7c5dcd1e190a85315c37d7b026789fbf`  
		Last Modified: Thu, 22 Oct 2026 15:24:34 GMT  
		Size: 296.8 MB (296796684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:799e8bb245cdd8c00655fff52ed19f4fbb6d61e0b62369481c7428888049991f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **968.7 KB (968681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c6c463807eeb6a7d8d05843e53c986e88cc0b9a4d391a1a0c85065bb69d1b9`

```dockerfile
```

-	Layers:
	-	`sha256:2ac43051f1195acb51086b9afbd2e01cbbe5a76a809c034d46e6936e013284c6`  
		Last Modified: Thu, 22 Oct 2026 15:24:27 GMT  
		Size: 955.9 KB (955857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a91378d0ae5993d8736c3cb2f6d778be6bc9f6315af311bd80a22bf86a3b9d87`  
		Last Modified: Thu, 22 Oct 2026 15:24:26 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; riscv64

```console
$ docker pull rust@sha256:19810dbae3eb13a8a9d6bf8bee0dbc04f087e37553ea6baefc7797e35950d6ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350560781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99866b51cd8833e60634c2f8074725a9cd959a810fb1c827350f75d8e13350a9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:52:31 GMT
ADD alpine-minirootfs-3.21.8-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:52:31 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 11:34:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 16 Oct 2026 11:34:49 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 16 Oct 2026 11:34:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Fri, 16 Oct 2026 11:35:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4c4570eb9eaaa888fd65dc1c2dc7d575b806ebc64bfc4dfdb52828e1b0679e6b`  
		Last Modified: Fri, 18 Sep 2026 16:52:54 GMT  
		Size: 3.3 MB (3337949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5b95d840735af44268ff0cb8c8708578e9d4c0f710a36899834abaad6ae9b0`  
		Last Modified: Fri, 16 Oct 2026 11:44:00 GMT  
		Size: 74.4 MB (74355788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4415e1cb4c6fd1a7dbba54bc4c4a71d3758b1a34bf611bf05cc103418fc7bc12`  
		Last Modified: Fri, 16 Oct 2026 11:44:28 GMT  
		Size: 272.9 MB (272867044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:5693bcee49cf5390d82759ca8de3e598b1ac88d6bffc73bf5cc48ef420577a01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1023647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd67a252bc5a342463b882553b4b1b9892114207f079ca7a938192ee885455c4`

```dockerfile
```

-	Layers:
	-	`sha256:661b14d8a41b203cc24fd6c05b23ed933eff5380c20a61e665afa88bd8af5ee1`  
		Last Modified: Fri, 16 Oct 2026 11:43:39 GMT  
		Size: 1.0 MB (1010823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09199cc0d280c94ef3fc845009d90f6f4b5dc7698275d9926ccc6a8493da4e6b`  
		Last Modified: Fri, 16 Oct 2026 11:43:38 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json
