## `rust:1-slim-trixie`

```console
$ docker pull rust@sha256:cc9edbcadf2c27013a642b1d1bb7504e26b1142d6b5ebe58f64cf2eb2bc128ae
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
$ docker pull rust@sha256:4b68057dc8c103af4fa66b5cd29f21b18afec79fadfcd8fb91e295e939f0690c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.3 MB (329318674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5dfbb6ea0391a9c8373a4329d9f53d092d746a17aea8aa744b9b7187f0033b6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:25:40 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:40 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:40 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f4b2aef92c90d9510b803b0a891eb45f4301f4dca92c60dd442668ada0ed71`  
		Last Modified: Thu, 12 Nov 2026 20:26:22 GMT  
		Size: 299.5 MB (299462542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:10b7065b06971a3340c81f277f6bd219c22ca5f939dac05cb83c5989ea488ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4184999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e945dbe0358089f931ccac5d9c62125e0412a0918c99c8e8cc7ba5e15868a8e`

```dockerfile
```

-	Layers:
	-	`sha256:b81df1f442ad30e4f8d7b4f008e4adc18e9240380347af4e9f3609ad002a25c2`  
		Last Modified: Thu, 12 Nov 2026 20:26:16 GMT  
		Size: 4.2 MB (4169354 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c635e01d0084faf1db14f36de1be9e34bef1014f013b78f96cffa7d10e88c296`  
		Last Modified: Thu, 12 Nov 2026 20:26:15 GMT  
		Size: 15.6 KB (15645 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm variant v7

```console
$ docker pull rust@sha256:9384ec9cc6d9526c720d296872d6f2bc48d73fe1e7fb0b3405da9290084295ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.0 MB (340013249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60da1707bc4073521afbccff842f8d3d0cae01c14fc8f2a1b6cffd8ff7bbcf3d`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:25:58 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:58 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:58 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58071698968c87a34a40d6778413666285a28d4a0c7ae0e338bf4611307c624a`  
		Last Modified: Thu, 12 Nov 2026 20:26:39 GMT  
		Size: 313.7 MB (313740334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:46732e959f5e2d30dd3400cbe2ce2c8b2c85e301338f7c892a191f6a56ca7de6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dc138fbd4dfadb16dfba163d01ee3f99ac469c9cd72053bf7551278fcf48fd4`

```dockerfile
```

-	Layers:
	-	`sha256:0d6eb0e13d8757034fb340780bdba97d0d45b22201bb9f52efa4487d9d0a9f4c`  
		Last Modified: Thu, 12 Nov 2026 20:26:33 GMT  
		Size: 4.0 MB (3974223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32caebd66147e277c3ed78081e8889c5e3ac3bda675f799f118e7f12b6558c2a`  
		Last Modified: Thu, 12 Nov 2026 20:26:33 GMT  
		Size: 15.8 KB (15758 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:11acfd0f07018a7c60d33b5e95618275feb39e465c4fbc9a73b438b1ee1e43ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.4 MB (289366972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c378312b6e03005c4d6885352bf14e82d5a25c4141dc02ded9cb86b999dc862`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:24:30 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:24:30 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:24:30 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b57c607f7731459c6135fa24f9443a18ab2c05bb04a9757a1286aae5cad6420d`  
		Last Modified: Thu, 12 Nov 2026 20:25:08 GMT  
		Size: 259.2 MB (259152935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:3129dc57d76e9589ee5bfc322e2e77e68cc0d03f3059cb4981e7aece79b32683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:891a5bf73713af3cb97a076cd877493f7a1a14dc5d189e97e82d6f907dc1b6b8`

```dockerfile
```

-	Layers:
	-	`sha256:c9b6b1dc1cf1eb9c70e8bb21e813249870e3051cc104b4c423cf875aa0b80b55`  
		Last Modified: Thu, 12 Nov 2026 20:25:03 GMT  
		Size: 4.3 MB (4260561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fe31649e6046da54f958953da90a2e1a5434d10a1a8c5e89f5d1fc7657fb19a`  
		Last Modified: Thu, 12 Nov 2026 20:25:03 GMT  
		Size: 15.8 KB (15798 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; 386

```console
$ docker pull rust@sha256:07839279e31ab83f03feaf7ef3e8c67b7d7916979d83cbed446777264641d233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352961136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73dc50598f98c5fae94cffc76f78bf42c5c3405e112df9b08fbcee37d3123ca`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 20:26:03 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:26:03 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:26:03 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f62b3755bf1bed5180949e1472037da894333cc4aa0e26dd7c0483eb8cd5fde`  
		Last Modified: Thu, 12 Nov 2026 20:26:47 GMT  
		Size: 321.6 MB (321590377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:037f6d261cb03520258481ade9f9041f59933c65ab2ae1013ce74bfcdf19013f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f60fe03eb9da891e9ef5a426f81103c1992c573328dcb4a6370d2fb29d778c5`

```dockerfile
```

-	Layers:
	-	`sha256:cf0a987893cfd58084af82d2ee66658445ef7fab2ad95cfcd31f32d7f5c72381`  
		Last Modified: Thu, 12 Nov 2026 20:26:39 GMT  
		Size: 4.1 MB (4144168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d59d7afc3e8adc104885ccde5d33fae47cf789b7473b7a99bc129c943c6bccdd`  
		Last Modified: Thu, 12 Nov 2026 20:26:39 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; ppc64le

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

### `rust:1-slim-trixie` - unknown; unknown

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

### `rust:1-slim-trixie` - linux; riscv64

```console
$ docker pull rust@sha256:c8966fbbf69b024da01c73f3ebb373a9ef672ce655964513e60bcdbedf7fbee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395146929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430454feeee0c64bcc2180c4994fad9cf7be546aaff03577f666e9aaef8676aa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Sun, 08 Nov 2026 11:58:31 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Sun, 08 Nov 2026 11:58:31 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Sun, 08 Nov 2026 11:58:31 GMT
RUN set -eux;         apt-get update;     apt-get install -y --no-install-recommends         ca-certificates         gcc         libc6-dev         wget         ;         arch="$(dpkg --print-architecture)";     case "$arch" in         'amd64')             rustArch='x86_64-unknown-linux-gnu';             rustupSha256='b1c8cb14e30889e7e2999e6b69e62d9e9b9ffc0f4df8180564d306d9680e6c55';             ;;         'armhf')             rustArch='armv7-unknown-linux-gnueabihf';             rustupSha256='3d5771c716551ee55368be40e02859705f06d725b31df07c15e3593be2d2a5de';             ;;         'arm64')             rustArch='aarch64-unknown-linux-gnu';             rustupSha256='9f608c142e0e38a78957d0661ba1dfaf0b6fb37184cfaa4b9a0aa57af6184282';             ;;         'i386')             rustArch='i686-unknown-linux-gnu';             rustupSha256='ef58377096e940ed8ba0d7f8841e6d125922d9d218e04897a05b7f667cf6f5c5';             ;;         'ppc64el')             rustArch='powerpc64le-unknown-linux-gnu';             rustupSha256='d5b321db031525fbee38b736846f07a16df22b354a1964bbb79ff83495dbc0c9';             ;;         's390x')             rustArch='s390x-unknown-linux-gnu';             rustupSha256='df1762614062280a326ac988019ed1f8ceebeafa5fac95164a7201ff10e31d4b';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-gnu';             rustupSha256='e4a960952692ac3dfb5fa4f74e593517241b83e43a93fbdcf2213c811748f1ae';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget --progress=dot:giga "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         apt-get remove -y --auto-remove         wget         ;     rm -rf /var/lib/apt/lists/*;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba59c81f1eb9fa15a6c23892b9b9d80e23765ef68220c78c63925b51c7d89547`  
		Last Modified: Sun, 08 Nov 2026 12:10:07 GMT  
		Size: 366.8 MB (366800745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-slim-trixie` - unknown; unknown

```console
$ docker pull rust@sha256:41838ca6bcc939584191770ce4d213b6afa6c69bfb0c0b732d0672843828f486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10075a1858e9f5ae500f9d8ce1be993614d26e9618e9dc74eca8a96b2bb2bb53`

```dockerfile
```

-	Layers:
	-	`sha256:3d2ccc262c81d8e0141c5187188bb1ef1377964a414127a68cdaa07b392daf6c`  
		Last Modified: Sun, 08 Nov 2026 12:09:15 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4d897acd9b334d1696a80767f9c5320083f6538eda7eda417051905eaeb73a`  
		Last Modified: Sun, 08 Nov 2026 12:09:14 GMT  
		Size: 15.7 KB (15700 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-slim-trixie` - linux; s390x

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

### `rust:1-slim-trixie` - unknown; unknown

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
