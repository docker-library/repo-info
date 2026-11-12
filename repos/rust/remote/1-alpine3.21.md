## `rust:1-alpine3.21`

```console
$ docker pull rust@sha256:9e38a08af73070394175ad53ac210f01f40a7a61575c67481cb4b1360e33df4b
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
$ docker pull rust@sha256:2aa5142401608b25cbfcdc4efffe1ce5c534f935d46a3bf7e2dc0bc39e1cd73a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343887620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c5585c065a2db0f19e5a18c76c4773e73046862862af5b97e5e212b52bd16a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:25:29 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:29 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:25:29 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:47 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4850c4218fa712009e1d9e8953ebb1aa676a3f3f84642d7f899d79d151dd1fb`  
		Last Modified: Thu, 12 Nov 2026 20:26:23 GMT  
		Size: 65.0 MB (64986009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c8d5ef7aaed3d4928c4e9e09d105389878da404f470e1531baae2f205851cc`  
		Last Modified: Thu, 12 Nov 2026 20:26:28 GMT  
		Size: 275.3 MB (275276209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:98e1cc36c3b67b4b2ab11a5d86f92c414846f2273cb02d479950674d244e39c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **954.8 KB (954801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55bab14c5bd1ec4b59ded3daf31ec6ea9ed807522a4e25ed07c90e7f0207a4f`

```dockerfile
```

-	Layers:
	-	`sha256:627358f1f7bee21559dd18e9119222608456d5ce0a0ac7e03a7f4ddcf5a65b71`  
		Last Modified: Thu, 12 Nov 2026 20:26:21 GMT  
		Size: 942.0 KB (942018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7408e0890524b39fd82853037ef931b3784e93de79333b2c3eeffbf2e8aec03d`  
		Last Modified: Thu, 12 Nov 2026 20:26:21 GMT  
		Size: 12.8 KB (12783 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; arm64 variant v8

```console
$ docker pull rust@sha256:a6356b3a6f08669d2d542d1ed2e6e323afa899713e225070c53c2b6330c86380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347783776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78458d88b2d0b226b2f68ea0dd6a39ee6e8ca1f63ef6e05cb90abd6c99bc1b2`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.21.10-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:25:17 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 12 Nov 2026 20:25:17 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 12 Nov 2026 20:25:17 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:25:32 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:26089ff12bb135aa8812e1bf486b799444fdf6cac9f60bf694ac523fbb8ad19a`  
		Last Modified: Thu, 05 Nov 2026 18:00:54 GMT  
		Size: 4.0 MB (3974423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7118581700f91b1dd436b8bf0d25204073342839f90de9f22e5b665e97e6c7a`  
		Last Modified: Thu, 12 Nov 2026 20:26:07 GMT  
		Size: 61.7 MB (61663011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78074a38cfdd136bd30a7c47e836c420bdbc153c39366a25fb6b985469e3fa6e`  
		Last Modified: Thu, 12 Nov 2026 20:26:11 GMT  
		Size: 282.1 MB (282146342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:4ee05596044f143b7e99d0e7f7698b1b36128b7762251d188d9ed2e45cf71533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1034243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a0c1aac699af6cc983cb1a892640ab468d0083695fbff7e2c9634a18fe582d`

```dockerfile
```

-	Layers:
	-	`sha256:184aa97c2957b24529b8be3efe9e589f18f2441a25efd8a38448cbadcb4e3e97`  
		Last Modified: Thu, 12 Nov 2026 20:26:04 GMT  
		Size: 1.0 MB (1021342 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1a4b530a79bc117749eddcc3393a8a48ad0187b2ba9f3429d4936256e3b6a63`  
		Last Modified: Thu, 12 Nov 2026 20:26:04 GMT  
		Size: 12.9 KB (12901 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; ppc64le

```console
$ docker pull rust@sha256:29c3b531dee1a2ec54b98a0338739684376d4e9c922198818b4883abf252d4b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364304055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa3a2e664e9c75f624d8a8821cf32c78c32499872f95fcc84b634bdb1494e206`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:44:14 GMT
ADD alpine-minirootfs-3.21.10-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:44:14 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 06:44:07 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Fri, 06 Nov 2026 06:44:07 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Fri, 06 Nov 2026 06:44:07 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.100.0
# Thu, 12 Nov 2026 20:30:47 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:e31aa04035baf79a581d007cc1c93d4abe6462df974b67e564cc540df6845323`  
		Last Modified: Thu, 05 Nov 2026 20:44:22 GMT  
		Size: 3.6 MB (3558023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b185724b138020d162c878b4e0e112efaa479f3c5941f6e0972df6987ccd3f`  
		Last Modified: Fri, 06 Nov 2026 12:42:38 GMT  
		Size: 61.5 MB (61475354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02695cbd0ef69f96087edb9ebd039891f3f6560b2daf51575c27ce7d553d6ea1`  
		Last Modified: Thu, 12 Nov 2026 20:32:33 GMT  
		Size: 299.3 MB (299270678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:8f2a32ff887d429a248d593a7c224e0f478dabd135d4d1a96111c06e9fa4199f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **968.7 KB (968696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8c58cbf5b1ec9013d02d441db4220fce0ad9365e3fbe84a192f0edead5ff15`

```dockerfile
```

-	Layers:
	-	`sha256:9083d3b365744e5341d4da46117996725ee993f421c3ecc7cdc171585ccad070`  
		Last Modified: Thu, 12 Nov 2026 20:32:27 GMT  
		Size: 955.9 KB (955867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ea6dd682de23b862f4540d7eae0fc78dff3bf2dadec91dba7b8c575fb4a1ba6`  
		Last Modified: Thu, 12 Nov 2026 20:32:27 GMT  
		Size: 12.8 KB (12829 bytes)  
		MIME: application/vnd.in-toto+json

### `rust:1-alpine3.21` - linux; riscv64

```console
$ docker pull rust@sha256:fbb5b8ea40f93c17cea8a28016568483903fd9e44a952c4aa5aa8cd4e9c111f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.6 MB (350563950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babf588dda88af6e441c19e8cdd29720102da393b4023e42f20f06c9b0f05659`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 23 Oct 2026 05:00:23 GMT
ADD alpine-minirootfs-3.21.9-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 05:00:23 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 00:05:45 GMT
LABEL org.opencontainers.image.source=https://github.com/rust-lang/docker-rust
# Thu, 05 Nov 2026 00:05:45 GMT
RUN apk add --no-cache         ca-certificates         musl-dev         gcc # buildkit
# Thu, 05 Nov 2026 00:05:45 GMT
ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo PATH=/usr/local/cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin RUST_VERSION=1.99.1
# Thu, 05 Nov 2026 00:06:50 GMT
RUN set -eux;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             rustArch='x86_64-unknown-linux-musl';             rustupSha256='1552169aba2836777136ccff7a381e95c17233b5d8250cd5e10ae3cb971bfcfc';             ;;         'aarch64')             rustArch='aarch64-unknown-linux-musl';             rustupSha256='956deacdc27ab82ae7ac821d5d3e9e95e4795d476d17efe99743bb8531ca1031';             ;;         'ppc64le')             rustArch='powerpc64le-unknown-linux-musl';             rustupSha256='334e1e79626a20a31f5cbc4d16e0386b280cc77e46da90bf5db68045b2012a74';             ;;         'riscv64')             rustArch='riscv64gc-unknown-linux-musl';             rustupSha256='3d87288288b166938b770e86a96f412b21413465b093ebee1efa71c6b9efd294';             ;;         *)             echo >&2 "unsupported architecture: $arch";             exit 1;             ;;     esac;         url="https://static.rust-lang.org/rustup/archive/1.29.3/${rustArch}/rustup-init";     wget "$url";     echo "${rustupSha256} *rustup-init" | sha256sum -c -;         chmod +x rustup-init;     ./rustup-init -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION --default-host ${rustArch};     rm rustup-init;     chmod -R a+w $RUSTUP_HOME $CARGO_HOME;         rustup --version;     cargo --version;     rustc --version; # buildkit
```

-	Layers:
	-	`sha256:643eca146d1a96f3341a61349fb18d6672657279623f35a5072344018f8aa0f0`  
		Last Modified: Fri, 23 Oct 2026 05:00:57 GMT  
		Size: 3.3 MB (3336841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991d1b8b395a77d5ac36590b6276efe6aca87fdb2243fbcbe41ba3631383cef1`  
		Last Modified: Thu, 05 Nov 2026 00:15:07 GMT  
		Size: 74.4 MB (74352319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ce07182754594671f85e85e6656251983e2ee564609ecaba356f51c0d1eded`  
		Last Modified: Thu, 05 Nov 2026 00:15:36 GMT  
		Size: 272.9 MB (272874790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `rust:1-alpine3.21` - unknown; unknown

```console
$ docker pull rust@sha256:8e91019b1d805b06de7854bfb12dd5a5f6fc0f0a2bb8f0dc8a777cba2c7e77d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1021710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fd193161265eb2dfc12ae8abbba3bf426f395fa751cc1fbc0a2bec56dc7490`

```dockerfile
```

-	Layers:
	-	`sha256:2c23a1c6efd85b23b6f70234edd95986287762cfdb86f1bee64dfcd98366617f`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 1.0 MB (1008886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6beceaea862104811d3c4b306642d3365fec51cb853b422229f6582ec93386b2`  
		Last Modified: Thu, 05 Nov 2026 00:14:46 GMT  
		Size: 12.8 KB (12824 bytes)  
		MIME: application/vnd.in-toto+json
