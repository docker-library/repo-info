## `rust:slim-trixie`

```console
$ docker pull rust@sha256:51fdc80ccc3fb83bf14481f2cd8d0d11703eeb9f416ab47476c32a793a822307
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
$ docker pull rust@sha256:6014030547c3168bb80e700b7aaf653fbb92e5ac1e2712c49a1c9ec1beea49d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329304489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ccf2040ce5b4a77ac62de2ec145806fa1301ec8285df404ff350f6321191fa7`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:04:28 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 05:04:28 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 05:04:28 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508417ea2a6f865b01ff518ed8d9b085ba7bfa78b8648fe0d5472a870db3fbd4`  
		Last Modified: Tue, 24 Nov 2026 05:05:10 GMT  
		Size: 299.5 MB (299462307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:cf47f6da4a0b9af750203eed90ca86dc66ac8e64bdfd1044ab6900f3afb0db88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4185028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5afa4bc555dfa4fcafd7cd8776a255b856776609d6cd4f28faa553d5f743ddf`

```dockerfile
```

-	Layers:
	-	`sha256:8d98c44dff2b651cd6f9a12700d6ef8ee36ea45da73dfbc6f92aaa73d8359ac3`  
		Last Modified: Tue, 24 Nov 2026 05:05:05 GMT  
		Size: 4.2 MB (4169382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4629a1d9f9d0b086270e90bba0a0f7bcd04d0598ef13c1cc8c15e23634fda1a`  
		Last Modified: Tue, 24 Nov 2026 05:05:04 GMT  
		Size: 15.6 KB (15646 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:5b83cae097bb69f5f8eb632fdc98e33daa7ea484c4979140701944bee7fe4d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340003044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5a81acb7ee4b747151ecd3423a26ac12eb3945564256424c1ae7ba5ee38a76`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:52:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 05:52:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 05:52:29 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05059e51f5811253511ae5419294ee42e1deec27afd2a4cfa8ab041721662839`  
		Last Modified: Tue, 24 Nov 2026 05:53:10 GMT  
		Size: 313.7 MB (313740584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:41cf0f6658f3360a2233a5c76601e9bec872b82d734474e896726a9905473baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3990009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d7d6782c4a96aceaa32c5de9167db622b86b5f19c29b41f219e1d1589965f5`

```dockerfile
```

-	Layers:
	-	`sha256:d3a06f9bd1acd4584b4f6025bc454fa7fc6a5d94d476c1ed074a1cde5f22ab67`  
		Last Modified: Tue, 24 Nov 2026 05:53:04 GMT  
		Size: 4.0 MB (3974251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35d2704a688d033333c2c1e867ea9a993d0887d10ffb36a681e9cc8e3bf0a0fc`  
		Last Modified: Tue, 24 Nov 2026 05:53:04 GMT  
		Size: 15.8 KB (15758 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a4a93336fc1d0e50059899e760e2d214ce8efc1beec7b38f634c4217c94dc8ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.4 MB (289351131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0240894d480d859b67d4483943fbc500d15f5957a8ae6bebc1dfcc8ec8ef15`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:19:38 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 05:19:38 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 05:19:38 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81a7426909d640fdd3030ff4deb9fccd92f8eb783382e114d09a9d0cbabc09e`  
		Last Modified: Tue, 24 Nov 2026 05:20:15 GMT  
		Size: 259.2 MB (259153097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:df5dc05fa12db9436841f0809ed1b7e131ae61e1dce4934dd92464a869b3b699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2d2da8ea087e7a00086cee61571eb98f351c484635c7cf9a4a000403bc9604`

```dockerfile
```

-	Layers:
	-	`sha256:ae3c56931db82e23677e952c3e195c61e95ee02c010d4cf4aa2600c520eda75c`  
		Last Modified: Tue, 24 Nov 2026 05:20:11 GMT  
		Size: 4.3 MB (4260589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba5a62b64a57e93c294c4fb66cda8bf42111b1232fd0edeb6bdce2119c40e5cc`  
		Last Modified: Tue, 24 Nov 2026 05:20:11 GMT  
		Size: 15.8 KB (15798 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:916ae460c22659a187e0d15e8a1235f1febbc20cd3090d807e6d5845b08ece2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.9 MB (352948390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12fc9b57f3a6b910e78c1d7f7631259aa2db2dee45b83fed5a24d1e061b5a5a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:08:27 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 24 Nov 2026 05:08:27 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 24 Nov 2026 05:08:27 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e426cbe99ee8bf88b1fa434595edd9b9f97f5ed3cba80daea26b79d355bea701`  
		Last Modified: Tue, 24 Nov 2026 05:09:12 GMT  
		Size: 321.6 MB (321590471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:f7046ac5bd243c6ba04cc205c1897cebf22d1fc71a9807cbd939b7e31c13d667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba08efd5741ee896fbc2c327858ad248c60b242b8b6f8707f5f9eb61c878a85d`

```dockerfile
```

-	Layers:
	-	`sha256:7e513207fe4b455d5ccc73d8e7a0c5fb308c8822a67524915b4f0e96d82975c2`  
		Last Modified: Tue, 24 Nov 2026 05:09:07 GMT  
		Size: 4.1 MB (4144196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de0e18528c044ade564ee9c569ea7ede2ac4a247a61e9a063422570b277b3769`  
		Last Modified: Tue, 24 Nov 2026 05:09:07 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; ppc64le

```console
$ docker pull rust@sha256:140f83d9408d1c945b0bf02810efae6bc40cce6824a102c7f4ff4bef4ceba7c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.6 MB (400628494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d51c20ebe7970b3a9f4fa566f0f8652601727a4a70d370ba4b768f55b8cf4b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:29:10 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:29:10 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:29:10 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605361b9d13a0d4cd152a4ea08d9a56cc14a334e489f59d2c6712ecf25bab252`  
		Last Modified: Thu, 12 Nov 2026 20:31:14 GMT  
		Size: 367.0 MB (366960846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:361c3fe9cc7697bce1f1a8fa68446dce0556a41951f26becf1f28971a52e1560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4181524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b738369f5b1cadb266a42966c67ccb7da3b07eb01f0787fffd9de206dee7b61`

```dockerfile
```

-	Layers:
	-	`sha256:5bb7f67e3830a77b796f05ef13ccd45b5d9513a7716248178617231d0534bb68`  
		Last Modified: Thu, 12 Nov 2026 20:31:07 GMT  
		Size: 4.2 MB (4165810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4d87ced680d63270515c03288746c947d760f83ab1d5e6337cae7945e64d07a`  
		Last Modified: Thu, 12 Nov 2026 20:31:06 GMT  
		Size: 15.7 KB (15714 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:6608febcde1bbbb747068ea4fece949d5f1c3540ee2947d4ded3f699e999482f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.2 MB (397170468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e41c2a36bbbf56be22e5b1203d7bbf8064d860d90c4564dbe284d50762b981`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Tue, 17 Nov 2026 19:23:09 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Tue, 17 Nov 2026 19:23:09 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Tue, 17 Nov 2026 19:23:09 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f32ce02270731751b69eac1ba84dd25297eb3b553c9a24559fcfb97b2973a8`  
		Last Modified: Tue, 17 Nov 2026 19:34:25 GMT  
		Size: 368.8 MB (368824284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:df4d0175af5cb3deb66d6781292141ec4ff8e5cfdf0ecf76b3526e85a2f924ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bb98ea2531453777a29a03fd50405cdc7add7d9831bffe7a80602416351321`

```dockerfile
```

-	Layers:
	-	`sha256:1d13779cbd6fb19bd5891d432af824f9085f8785f71b5f1627b859c41b186897`  
		Last Modified: Tue, 17 Nov 2026 19:33:29 GMT  
		Size: 4.2 MB (4243766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c26a39905d7be15b541480664c24744acda3b2539c93c70b21a08fe4beea826b`  
		Last Modified: Tue, 17 Nov 2026 19:33:28 GMT  
		Size: 15.7 KB (15714 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:slim-trixie` - linux; s390x

```console
$ docker pull rust@sha256:3c558325bf9bb4c85d39a4e4dfeaeb91b4cca8e50c94b01283a49383043d5c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.6 MB (383572723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10234b114db9e41b8c06f172dc37ee3f530f10645f412cd8fd89785628e16266`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:23:56 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:23:56 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:23:56 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd19bbed6319d2814992f91635da0ecc57c2298fd88370dac454d9dd7736002`  
		Last Modified: Thu, 12 Nov 2026 20:25:27 GMT  
		Size: 353.6 MB (353648606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:e239fc6a838c199583a0c6cf3bfea2156663ba6631bfeea8fb96c9892a4b231b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4002749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f622599402fa550387925c7ca8e208a1f2f60e88eafce2ee20888a12d9c4b4`

```dockerfile
```

-	Layers:
	-	`sha256:7e4cecd45085efe7947739ca37266c82a5ad4cec3127f1bdbe15fad467fe6111`  
		Last Modified: Thu, 12 Nov 2026 20:25:21 GMT  
		Size: 4.0 MB (3987103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b33fee41d9b2899e5f6b2042924674f822dc5576cee778c4f395f9a787eda00`  
		Last Modified: Thu, 12 Nov 2026 20:25:20 GMT  
		Size: 15.6 KB (15646 bytes)  
		MIME: application/vnd.in-toto+json
