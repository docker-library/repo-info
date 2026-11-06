## `rust:1-alpine3.24`

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

### `rust:1-alpine3.24` - linux; amd64

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

### `rust:1-alpine3.24` - unknown; unknown

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

### `rust:1-alpine3.24` - linux; arm64 variant v8

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

### `rust:1-alpine3.24` - unknown; unknown

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

### `rust:1-alpine3.24` - linux; ppc64le

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

### `rust:1-alpine3.24` - unknown; unknown

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
