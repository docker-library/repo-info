## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:eb293af1c78abbfc18b7e9ec81ca5cecea5867a72141c747394417d7fe47d24c
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
$ docker pull rust@sha256:a557c5086c4dd7d82b06a97ab8cbeabdec92a8a5b72da9f3d67f9a684d8d7de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.8 MB (341757681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548ca6413fb36ca44ce54ad5200cd54cd7ee56069f3927d2755918134983ed2a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:10:32 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 19:10:32 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 19:10:32 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 19:10:49 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc7d23b387f44f7fcf293de681982b163c0a07d10ef572309f947f93bc256d7`  
		Last Modified: Thu, 15 Oct 2026 19:11:26 GMT  
		Size: 65.0 MB (64989510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ec634dccc05d5aec124b270ce1069bf5ec3586468cf3caffe592be18399840`  
		Last Modified: Thu, 15 Oct 2026 19:11:30 GMT  
		Size: 273.1 MB (273142151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:7892a73706b904447c349741e01d5ab67bcf031743adeeb7c76d4c135307d6be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.7 KB (956723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae3304a8aa70a0ecac2ed238917365f6d76cc5c7a7970ab86d0fee4c145c7e9`

```dockerfile
```

-	Layers:
	-	`sha256:d08092bb16ad8755ee12d4b2516ef982afe5705e9170d7e40efe72c91cdbbcd7`  
		Last Modified: Thu, 15 Oct 2026 19:11:23 GMT  
		Size: 943.9 KB (943945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a52317b7b325035fa15de12d47d297e489d54a9ab83726864fb9654eec1129c`  
		Last Modified: Thu, 15 Oct 2026 19:11:23 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:b098358e92ad8c8cd5717750105c566df8fe65c3761b4097d639c9097fae5ba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.0 MB (346005370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a680f5ad837aca395d80e62b05d874a480d569e582bdc65b121346e631c76a96`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:08:49 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 19:08:49 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 19:08:49 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 19:09:03 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fcd52e74a48809d4ad49bc3098d51554448ae41a5f0e075283c4f5965df776c`  
		Last Modified: Thu, 15 Oct 2026 19:09:39 GMT  
		Size: 61.7 MB (61665685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cea805174d1b930e865fdea6da6f9848be72bd604298fb1c72daedff349fcfe`  
		Last Modified: Thu, 15 Oct 2026 19:09:42 GMT  
		Size: 280.4 MB (280365184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:e815310ba2ad7d4f371652401fc9695b61e3e98ccbe42a38eeaa82f13f9267e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6aa7d05f543291d48d699eea6dcf71337b7df90c3131e3205b629b467de460`

```dockerfile
```

-	Layers:
	-	`sha256:fc477380c589e3a0f1dd834721ed319abc68f643fbd5ce4d8bbad37d1b245936`  
		Last Modified: Thu, 15 Oct 2026 19:09:36 GMT  
		Size: 1.0 MB (1023269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8f32f8bf004712bf67b910be27424184a10b91be14f7fb356825fb1bdd31ab0`  
		Last Modified: Thu, 15 Oct 2026 19:09:36 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:266ad729c57a43d6e09a96fdd3088d6680011855320ff083c7945244c147e132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.9 MB (361862027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1530acd923b9d728bb075d2ffb4edb942b21dffe175f88eba84e687b619327c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:07 GMT
ADD alpine-minirootfs-3.21.8-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:07 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 20:19:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 20:19:35 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 20:19:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 20:20:16 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b28a33aa72108f40f441b063d4388f0fcb4e9b61a44072cfd1a066a7f99d9455`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.6 MB (3558846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01fa8a32c1db4b99a470a3a8f92b96f92b2b064894c7e60aa0126d89cf2ed55`  
		Last Modified: Thu, 15 Oct 2026 20:21:32 GMT  
		Size: 61.5 MB (61476644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8fe5a9d56dabf655b73692467b4c145df23c4b8b14628cd8d3607d94e14d1d`  
		Last Modified: Thu, 15 Oct 2026 20:21:37 GMT  
		Size: 296.8 MB (296826537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:b8691a960f81e79d117a0c13032c77f2b1d6c96168a37c8dfc23c7627705d388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.6 KB (970618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf7c75a0a3ffe969c1ae31a1b9bf27f6d618ec840a99ade9a6b117062f591d6`

```dockerfile
```

-	Layers:
	-	`sha256:2afabc41b789012ff9e0ba953d90c8039c61c1e15cff529d7f438ccb4d1ad8d7`  
		Last Modified: Thu, 15 Oct 2026 20:21:30 GMT  
		Size: 957.8 KB (957794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed0da799bb4745ee622e706a4dec3ead8ac3b8dd8c8b5aaafa115c85ff3712bc`  
		Last Modified: Thu, 15 Oct 2026 20:21:29 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; riscv64

```console
$ docker pull rust@sha256:881ffef6d623d24ef68b3ff67ca0f753973d486539c352b2faa0908131260eac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350563754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb418d13b3f240034a74b20035a2d4f3ccd95b123467c08c75ba24e1637268e4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:52:31 GMT
ADD alpine-minirootfs-3.21.8-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:52:31 GMT
CMD ["/bin/sh"]
# Sun, 04 Oct 2026 16:35:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sun, 04 Oct 2026 16:35:10 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Sun, 04 Oct 2026 16:35:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.0
# Sun, 04 Oct 2026 16:36:13 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4c4570eb9eaaa888fd65dc1c2dc7d575b806ebc64bfc4dfdb52828e1b0679e6b`  
		Last Modified: Fri, 18 Sep 2026 16:52:54 GMT  
		Size: 3.3 MB (3337949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b78129c54900346a1ec0b8c6418b6fd4a0c0a4c8564292e8cbfc90c4bec7e4b`  
		Last Modified: Sun, 04 Oct 2026 16:44:24 GMT  
		Size: 74.4 MB (74355669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c457066cdc2492ef992f6d88add1887bd9b89b1cba0cc3b55e715cda4e43ef3`  
		Last Modified: Sun, 04 Oct 2026 16:44:54 GMT  
		Size: 272.9 MB (272870136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:135896fe9d91e6fdc35f0998a2086e183217e16002c189294a72ff0dbcf771e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1023647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25191a4f4ad3007693f500afd68a57f3fc9ad50cf8b4a67fe1b6e2457794f027`

```dockerfile
```

-	Layers:
	-	`sha256:574bc608d38b575118495ab7b94024d6bb38c4c5ca547864ac0ca7776c9ee644`  
		Last Modified: Sun, 04 Oct 2026 16:44:02 GMT  
		Size: 1.0 MB (1010823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d21ee0f096bbb43d9dd9245b0b45ab13441a91d54536817a603915cc44bce2d6`  
		Last Modified: Sun, 04 Oct 2026 16:44:02 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json
