## `rust:1-alpine3.22`

```console
$ docker pull rust@sha256:ff048518d8970f65cadabdc0ac6b9c579e0f1bda76fe5c7c53caa1f664ff2fdb
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
$ docker pull rust@sha256:398cd1e580e664cc7f4a20923ca65c8dfdb1402af0bb26c6365a128a7ace399a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341971361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c6eada397d7eaf5cc783c32e782fbfa176382601dbbafb5150a4086d5e3d9fc`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:10:35 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 19:10:35 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 19:10:35 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 19:10:53 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45b59f43fe107b0bd5eef00edb8450e5f200cb966b7e6c4a2bec261d8aa216e`  
		Last Modified: Thu, 15 Oct 2026 19:11:32 GMT  
		Size: 65.0 MB (65037083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76196e31834e2513074f7c0f3629627693bcded16f14d689c22f21ec01da06`  
		Last Modified: Thu, 15 Oct 2026 19:11:35 GMT  
		Size: 273.1 MB (273142203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:313852e3a46588dc9cf96a6e5e2c10dfe2c54145e1b6a8c5bc45150041a703f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **957.5 KB (957503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39b9e4609d0bd815cda33e21908cba2d8ebb765e79967bc64373b0a887f7cdf`

```dockerfile
```

-	Layers:
	-	`sha256:4d8361c5e91dbff902be1172914de1e11e0fa67152e70274f4509ca4de017229`  
		Last Modified: Thu, 15 Oct 2026 19:11:29 GMT  
		Size: 944.7 KB (944725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96372f9b14524a275cb989e5c4e6dd3b20759918db37bfc763a318238af74c8`  
		Last Modified: Thu, 15 Oct 2026 19:11:29 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:bac2110a413f183aea10e808191bc110c5811bdc0d807f31c566cae086d006f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.2 MB (346202707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4dd17814ffdc56b4909235f7acf5d2998eae227cedadab7a1d1597c37a63c63`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 19:08:52 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 19:08:52 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 19:08:52 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 19:09:07 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0d4cb720242bc3d5e1da42680bda17c65c11d12d696cbd04556c8e29e94437`  
		Last Modified: Thu, 15 Oct 2026 19:09:42 GMT  
		Size: 61.7 MB (61714486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca2ede0c8dffb7a46eb6e9492633bf6819e2040563101a98d8195b02f4e2979`  
		Last Modified: Thu, 15 Oct 2026 19:09:45 GMT  
		Size: 280.4 MB (280365137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:a1c94cea948ceb1a18f420c186da164d98a859d4dbe4f45aea35f398ccaef581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1036946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511f15fa3c09efa9d09115043027a2534887ab55ac446cda943ad0fdcf71a444`

```dockerfile
```

-	Layers:
	-	`sha256:8baad179d543030587dde926ca6ec0bab4bac4832fb71f9c1b3e4c27cf34af78`  
		Last Modified: Thu, 15 Oct 2026 19:09:39 GMT  
		Size: 1.0 MB (1024049 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e1e1cb13381a4b999845dabbf639e153fdb7ae0b69474f924e462043de41255`  
		Last Modified: Thu, 15 Oct 2026 19:09:39 GMT  
		Size: 12.9 KB (12897 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; ppc64le

```console
$ docker pull rust@sha256:9e2fbdbda4a6167e3176edef176e997fab7f09fd3ab9e877e079328681f6ed82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.1 MB (362064860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44be7b5e2aae39d4fda38e9563cdb67a9265ee739fbabc88d74a87446d163c49`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.22.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 15 Oct 2026 20:21:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 15 Oct 2026 20:21:56 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 15 Oct 2026 20:21:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 15 Oct 2026 20:22:18 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:ac2cdfd8691fd8a1706e77cb6a4b1dc437a9a48221de4063f427c894a022d2ce`  
		Last Modified: Thu, 17 Sep 2026 20:37:16 GMT  
		Size: 3.7 MB (3722756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025e02c73d75f2f3a80fcacab91e6bd48689258a821fd87600b44c55ce576ede`  
		Last Modified: Thu, 15 Oct 2026 20:23:36 GMT  
		Size: 61.5 MB (61515533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba3e650ba0e72ceb89037411ad701c9f6f856f688e43caf9c5f9ba52ff0cddf`  
		Last Modified: Thu, 15 Oct 2026 20:23:46 GMT  
		Size: 296.8 MB (296826571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:2c7a95dceb77d06da3f39d55e6bbddad009cfb94f39be4e62e6f2d718b406c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **971.4 KB (971398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44c27a80b910817c8c8e31df550df1421ddcd4fb5adce78a7bd443251887754d`

```dockerfile
```

-	Layers:
	-	`sha256:4d484caae8c1a0ae043fa9299b790d58a0ecbc5a720ec15fa3f7aaaa5f10c339`  
		Last Modified: Thu, 15 Oct 2026 20:23:33 GMT  
		Size: 958.6 KB (958574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e561b8c517841797adf6b7d4381913dac43e72593e4b18dfff1583b5d55a440`  
		Last Modified: Thu, 15 Oct 2026 20:23:33 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.22` - linux; riscv64

```console
$ docker pull rust@sha256:115f5c3480d01ae8fc513040ea0005cb3c48239c96eb33ec1c25664e3420d4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.8 MB (350798186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f634581c712d496e59820a4bc40b1f0abe390d1754494c03a134ac71449e2a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 18 Sep 2026 16:51:27 GMT
ADD alpine-minirootfs-3.22.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:51:27 GMT
CMD ["/bin/sh"]
# Sun, 04 Oct 2026 16:46:55 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sun, 04 Oct 2026 16:46:55 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Sun, 04 Oct 2026 16:46:55 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.0
# Sun, 04 Oct 2026 16:47:58 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='331228566cc931f32cd684f9bebc5956a5e5d7394c8d5de595f196a658ab98e6';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='1ddf36182ac5d1782dbeefcb9bea7f5f9412d88f4a0d5047b1564a223624e8c6';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='8bee6e9158cbfba278df2b28941e64450be4b4aac423881ee380d3e85f774deb';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='e29a1d528186309c19710c40a70ca4aa3bec975cbbeaa6b65493728e4366c89d';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.1/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:2a1d82802a115e0877bfa46896e006cbb3ff2674a03067caa13e6d5e0863f715`  
		Last Modified: Fri, 18 Sep 2026 16:51:51 GMT  
		Size: 3.5 MB (3508871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b88322340d2c70ca5da4a90de97996dae8b525bb0070ac72e31761a783c9ac`  
		Last Modified: Sun, 04 Oct 2026 16:56:13 GMT  
		Size: 74.4 MB (74419256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa0342687273b9e4d5523993bb7b7b41bb7e097d73323d55290139c440e584c`  
		Last Modified: Sun, 04 Oct 2026 16:56:42 GMT  
		Size: 272.9 MB (272870059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.22` - unknown; unknown

```console
$ docker pull rust@sha256:f735a4d5381cd0c135f4416a781e6715f3ef31ce8fc74b73ec37cfc9b4423e9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1024427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc991a27baad5271458fa744a497565caa6037414aea43edf51ee22d733a2e4b`

```dockerfile
```

-	Layers:
	-	`sha256:427e2e30b4d8b410ab43d50c4d15be3247715c53120eb63ce19a6bdda41453f4`  
		Last Modified: Sun, 04 Oct 2026 16:55:52 GMT  
		Size: 1.0 MB (1011603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:240a0ce089e37c1d5f31ae3e422fff31a6df4f803e9e49dc89f0ea956bc4d3f5`  
		Last Modified: Sun, 04 Oct 2026 16:55:51 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json
