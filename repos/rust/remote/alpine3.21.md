## `rust:alpine3.21`

```console
$ docker pull rust@sha256:3ca17000141a7bcdafc52c23a172e23bf7b525685ef23a3402f73c420e2e0728
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
$ docker pull rust@sha256:fc2058d089c75346a26c0fdb0128c97455f39fdf0fdeda9eca9c5db154b85ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.7 MB (341733244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c7fb28acb06e5560cf60e47e25f1cfa4c3156e8a3d2df93d67b336623674ebc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 23:55:33 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 01 Oct 2026 23:55:33 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 01 Oct 2026 23:55:33 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.0
# Thu, 01 Oct 2026 23:55:51 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6362fcd653253ef1be2524200db9388af13fcf63af539453a56ce201d3e4d33`  
		Last Modified: Thu, 01 Oct 2026 23:56:28 GMT  
		Size: 65.0 MB (64989552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2d044637da907021e7c43478365e10fa5722fe0ea83ec646858e5b913713c0`  
		Last Modified: Thu, 01 Oct 2026 23:56:32 GMT  
		Size: 273.1 MB (273117672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:32030d1e87e80c6a90255bcf9edbfb1ebbca764b86cf031cf072685b769194d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **956.7 KB (956723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fabab5e20b6778881bdd9edf3d1b0bd2626b8e2ac749c91dccca9d030c0cc0d`

```dockerfile
```

-	Layers:
	-	`sha256:d189bf9129ef004870ac84544501f3ed7b4f38353cc48f76221ec70c03302112`  
		Last Modified: Thu, 01 Oct 2026 23:56:25 GMT  
		Size: 943.9 KB (943945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4751111b291c12ce9b7aba2769169d24e6c3b27771831d0aefbbfed3e936493`  
		Last Modified: Thu, 01 Oct 2026 23:56:25 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:4ccc23fb9e47ed16988979abd65b5846071138b4fdb9eae18abe9eedd3427ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.0 MB (346025483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5c9f9041151da2a7ecca6c077dd04237f0d65931301720a06d8fb090b942148`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 23:53:05 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 01 Oct 2026 23:53:05 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 01 Oct 2026 23:53:05 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.0
# Thu, 01 Oct 2026 23:53:19 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c39faa7f84de798a20a118013d4c7e43f4da896764e5619d59a84e11f400b5`  
		Last Modified: Thu, 01 Oct 2026 23:53:55 GMT  
		Size: 61.7 MB (61665740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06f4ddd8d544c33e63e3323f174cbfadc6f9e886e01cab192d4c71036d0f946a`  
		Last Modified: Thu, 01 Oct 2026 23:53:59 GMT  
		Size: 280.4 MB (280385242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:9579fced855454e2b0a5b8c07895a358d40a6ed250f2f6a2d129b14429ad6b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbab4c7c929b8f7de1eee6533a8ab184602818e3c0c838c0db93ebcd197d1e7a`

```dockerfile
```

-	Layers:
	-	`sha256:ccc20501bf9b692abab822b4952dd1139feec21ad6cecb68211db95ccd9de145`  
		Last Modified: Thu, 01 Oct 2026 23:53:53 GMT  
		Size: 1.0 MB (1023269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2414e94040952eb55aa856b1c1145d9f107e27cad23e16e9e6c3411fd885818e`  
		Last Modified: Thu, 01 Oct 2026 23:53:52 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:15cccc5a8b69ac14f00a5651b1559edc3c078ebcad76a1aed409b4743bd1f930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.9 MB (361857890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fcb0aaf20555062c2245c7e4f79ef12a165df72eacfb8ff6e8aa9813b60107b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:07 GMT
ADD alpine-minirootfs-3.21.8-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:07 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 03:09:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 02 Oct 2026 03:09:29 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 02 Oct 2026 03:09:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.0
# Fri, 02 Oct 2026 03:09:54 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:b28a33aa72108f40f441b063d4388f0fcb4e9b61a44072cfd1a066a7f99d9455`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.6 MB (3558846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01a2c0f97bc5d633ed151c223c9511d146292c1969b098dd29e744d686d9d06`  
		Last Modified: Fri, 02 Oct 2026 03:11:16 GMT  
		Size: 61.5 MB (61476614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b58a1cb9711bedda7cbc006453242c2adee601787f57a5f8c278e64285332a`  
		Last Modified: Fri, 02 Oct 2026 03:11:20 GMT  
		Size: 296.8 MB (296822430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:fc5640767b85fe6f3d80d10891c447972bf4c7a05cc1a72848d0d4d178ad2034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **970.6 KB (970618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9839f5bea656c50002f54ae37662838a51f82df874ac7162bb79052e88d0db2`

```dockerfile
```

-	Layers:
	-	`sha256:086d566a0047672b15bd147789ac8500b4f582587ffd4774a87ace8e1d0a8152`  
		Last Modified: Fri, 02 Oct 2026 03:11:13 GMT  
		Size: 957.8 KB (957794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8738d19007ea02cced36b93211bd03926aa08234f514c4d4cbaa1865a976fda`  
		Last Modified: Fri, 02 Oct 2026 03:11:13 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:alpine3.21` - linux; riscv64

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

### `rust:alpine3.21` - unknown; unknown

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
