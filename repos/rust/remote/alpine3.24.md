## `rust:alpine3.24`

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

### `rust:alpine3.24` - linux; amd64

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

### `rust:alpine3.24` - unknown; unknown

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

### `rust:alpine3.24` - linux; arm64 variant v8

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

### `rust:alpine3.24` - unknown; unknown

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

### `rust:alpine3.24` - linux; ppc64le

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

### `rust:alpine3.24` - unknown; unknown

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
